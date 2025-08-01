module Jekyll
  module CompactEmpty
    def compact_empty(input)
      return input unless input.is_a?(Array)

      input.reject { _1.nil? || _1.empty? }
    end
  end
end

Liquid::Template.register_filter(Jekyll::CompactEmpty)
