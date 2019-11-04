# frozen_string_literal: true

module NgpVan
  class Client
    module ExportJobs
      def create_export_job(body: {})
        post(path: 'exportJobs', body: body)
      end

      def export_job(id:)
        verify_id(id)
        get(path: "exportJobs/#{id}")
      end

      def export_job_types
        get(path: 'exportJobTypes')
      end
    end
  end
end
