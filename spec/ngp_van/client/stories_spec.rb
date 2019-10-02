# frozen_string_literal: true

require 'spec_helper'

module NgpVan
  class Client
    RSpec.describe Stories do
      let(:client) { NgpVan::Client.new }

      describe '#create_stories' do
        let(:body) do
          JSON.parse(fixture('create_story.json').read)
        end

        let(:url) { build_url(client: client, path: 'stories') }

        before do
          stub_request(:post, url)
            .with(body: JSON.generate(body))
            .to_return(
              body: '123',
              status: 201
            )
        end

        it 'requests the correct resource' do
          client.create_story(body: body)
          expect(
            a_request(:post, url)
              .with(
                  body: body
              )
          ).to have_been_made
        end

        it 'returns the created id' do
          expect(client.create_story(body: body)).to eq(123)
        end
      end

      describe 'story' do
        let(:response) { fixture('story.json') }
        let(:url) { build_url(client: client, path: 'stories/123') }

        before do
          stub_request(:get, url).to_return(body: response)
        end

        it 'requests the correct resource' do
          client.story(id: 123)
          expect(a_request(:get, url)).to have_been_made
        end

        it 'returns an event object' do
          story = client.story(id: 123)
          expect(story).to be_a(Hash)
        end

        it 'returns the requested story' do
          story = client.story(id: 123)
          expect(story['storyId']).to eq(123)
        end
      end
    end
  end
end
