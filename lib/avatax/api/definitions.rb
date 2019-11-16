module Avatax
  module Api
    class Definitions < Base

      # Section/Chapter/Heading/Subheading/Classification
      def crossborder(section, chapter)
        raise ArgumentError, 'section is required' if section.blank?
        raise ArgumentError, 'chapter is required' if chapter.blank?

        resp = connection.get "/api/v2/definitions/crossborder/#{section}/#{chapter}"
        handle_response(resp)
      end
    end
  end
end
