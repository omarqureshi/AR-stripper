require "stripper/version"

module ActiveRecord
  module Stripper
    def self.included(base)
      base.class_eval do
        def strip_spaces_from_name
          
          self.class.columns.each do |col|
            name = col.name
            val = attributes[name]
            unless col.type == :boolean
              if val.respond_to?(:blank?) && val.blank?
                self[name] = nil
              elsif val.respond_to?(:strip)
                self[name] = val.strip
              end
            end
          end
          
        end
              
        send :before_validation, :strip_spaces_from_name
      end
    end
  end
end

ActiveRecord::Base.class_eval {include ActiveRecord::Stripper}