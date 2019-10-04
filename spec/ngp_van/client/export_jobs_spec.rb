# frozen_string_literal: true

require 'spec_helper'

module NgpVan
  class Client
    RSpec.describe ExportJobs do
      let(:client) { NgpVan::Client.new }

      describe '#create_export_job' do
        let(:body) do
          JSON.parse(fixture('create_export_job.json').read)
        end

        let(:url) { build_url(client: client, path: 'exportJobs') }

        before do
          stub_request(:post, url)
            .with(body: JSON.generate(body))
            .to_return(
              body: '999888',
              status: 201
            )
        end

        it 'returns the correct resource' do
          client.create_export_job(body: body)
          expect(
            a_request(:post, url)
              .with(
                body: body
              )
          ).to have_been_made
        end

        xit 'returns the created id' do
          expect(client.create_export_job(body: body)).to eq(999888)
        end
      end
    end
  end
end