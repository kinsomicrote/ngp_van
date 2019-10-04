# frozen_string_literal: true

require 'spec_helper'

module NgpVan
  class Client
    RSpec.describe Phones do
      let(:client) { NgpVan::Client.new }

      describe '#cell_statuses' do
        let(:response) { fixture('phone_cell_statuses.json') }
        let(:url) { build_url(client: client, path: 'phones/isCellStatuses') }

        before do
          stub_request(:get, url)
            .to_return(
              body: response
            )
        end

        it 'requests the correct resource' do
          client.cell_statuses
          expect(a_request(:get, url)).to have_been_made
        end
      end
    end
  end
end