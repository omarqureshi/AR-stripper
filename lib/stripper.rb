require "stripper/version"

module ActiveRecord
  module Stripper
    def self.included(base)
      base.class_eval do 
        def strip_spaces_from_name
          self.attributes.each do |key, val|
            self[key] = val.strip if val.respond_to?(:strip)
            self[key] = nil if val.blank?
          end
        end
        send :before_validation, :strip_spaces_from_name
      end
    end
  end
end

ActiveRecord::Base.class_eval {include ActiveRecord::Stripper}