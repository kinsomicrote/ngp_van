# frozen_string_literal: true

require 'spec_helper'

module NgpVan
  class Client
    RSpec.describe SavedLists do
      let(:client) { NgpVan::Client.new }

      describe '#saved_lists' do
        let(:params) do
          {
            folderId: '1234',
            maxDoorCount: '1000',
            maxPeopleCount: '2000'
          }
        end

        let(:response) { fixture('saved_lists.json') }
        let(:url) { build_url(client: client, path: 'savedLists') }

        before do
          stub_request(:get, url)
            .with(query: params)
            .to_return(
              body: response
            )
        end

        it 'requests the correct resource' do
          saved_lists = client.saved_lists(params: params)
          expect(saved_lists['items']).to be_a(Array)
        end

        it 'returns the requested saved_lists' do
          saved_lists = client.saved_lists(params: params)
          expect(saved_lists['items'].first['savedListId']).to eq(999888777)
        end
      end

      describe '#saved_list' do
        let(:response) { fixture('saved_list.json') }
        let(:url) { build_url(client: client, path: 'savedLists/999888777') }

        before do
          stub_request(:get, url).to_return(body: response)
        end

        it 'requests the correct resource' do
          client.saved_list(id: 999888777)
          expect(a_request(:get, url)).to have_been_made
        end

        it 'returns an event object' do
          saved_list = client.saved_list(id: 999888777)
          expect(saved_list).to be_a(Hash)
        end

        it 'returns the request saved_list' do
          saved_list = client.saved_list(id: 999888777)
          expect(saved_list['savedListId']).to eq(999888777)
        end
      end
    end
  end
end
