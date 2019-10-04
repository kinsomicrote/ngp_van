# frozen_string_literal: true

module NgpVan
  class Client
    module ExportJobs
      def create_export_job(body: {})
        puts "Body:: #{body}"
        post(path: '/exportJobs', body: body)
      end
    end
  end
end