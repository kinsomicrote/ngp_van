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

        it 'returns the created id' do
          expect(client.create_export_job(body: body)).to eq(999888)
        end
      end

      describe '#get_export_job' do
        let(:response) { fixture('export_job.json') }
        let(:url) { build_url(client: client, path: 'exportJobs/999888') }

        before do
          stub_request(:get, url).to_return(body: response)
        end

        it 'requests the correct resource' do
          client.export_job(id: 999888)
          expect(a_request(:get, url)).to have_been_made
        end

        it 'returns an event object' do
          export_job = client.export_job(id: 999888)
          expect(export_job).to be_a(Hash)
        end

        it 'returns the requested export job' do
          export_job = client.export_job(id: 999888)
          expect(export_job['exportJobId']).to eq(999888)
        end
      end

      describe '#get_export_job_types' do
        let(:response) { fixture('export_job_types.json') }
        let(:url) { build_url(client: client, path: 'exportJobTypes') }

        before do
          stub_request(:get, url).to_return(body: response)
        end

        it 'requests the correct resource' do
          client.export_job_types
          expect(a_request(:get, url)).to have_been_made
        end

        it 'returns an array of items' do
          export_job_types = client.export_job_types
          expect(export_job_types['items']).to be_a(Array)
        end

        it 'returns the request export job type' do
          export_job_types = client.export_job_types
          expect(export_job_types['items'].first['exportJobTypeId']).to eq(4)
        end
      end
    end
  end
end
