# frozen_string_literal: true

module NgpVan
  class Client
    module Stories
      def create_story(body: {})
        post(path: 'stories', body: body)
      end

      def story(id:)
        verify_id(id)
        get(path: "stories/#{id}")
      end
    end
  end
end
