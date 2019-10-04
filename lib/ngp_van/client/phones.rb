# frozen_string_literal :true

module NgpVan
  class Client
    module Phones
      def cell_statuses
        get(path: "phones/isCellStatuses")
      end
    end
  end
end