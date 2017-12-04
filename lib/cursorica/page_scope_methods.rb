module Cursorica
  module PageScopeMethods
    def current_cursor
      if where_values.any?
        where_values.first.match(/ \> (\d+)/)[1].to_i
      end
    end

    # Current per-page number
    def current_per_page
      (defined?(@_per) && @_per) || default_per_page
    end

    # Next page number in the collection
    def next_cursor
      last.public_send(cursor_key)
    end
  end
end
