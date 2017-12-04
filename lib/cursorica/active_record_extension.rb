module Cursorica
  module ActiveRecordExtension
    extend ActiveSupport::Concern

    included do
      include Cursorica::ConfigurationMethods

      # Fetch the values at the specified page number
      #   Model.cursor_paginate(5)
      def self.cursor_paginate(cursor = nil)
        query = cursor ? where("#{cursor_key} > ?", cursor) : self
        query.limit(default_per_page).extending do
          include Cursorica::PageScopeMethods
        end
      end
    end
  end
end
