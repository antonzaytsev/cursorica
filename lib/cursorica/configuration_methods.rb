module Cursorica
  module ConfigurationMethods
    WrongKeyType = StandardError.new('Only integer key allowed as cursor')
    
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      # Overrides the default +per_page+ value per model
      #   class Article < ActiveRecord::Base
      #     paginates_per 10
      #     cursor_key :id
      #   end
      def paginates_per(val)
        @_default_per_page = val
      end

      # This model's default +per_page+ value
      # returns +default_per_page+ value unless explicitly overridden via <tt>paginates_per</tt>
      def default_per_page
        (defined?(@_default_per_page) && @_default_per_page) || Cursorica.config.default_per_page
      end

      def cursor_key(key)
        raise WrongKeyType if User.type_for_attribute(key.to_s).type != :integer

        @_cursor_key = key
      end

      def cursor_key
        (defined?(@_cursor_key) && @_cursor_key) || primary_key
      end
    end
  end
end