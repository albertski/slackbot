require 'rails_helper'

describe 'slash_commands/ping' do
  include SlackHelper

  before { disable_slack_signature_checks! }

  context 'with a command' do
    let(:payload) { default_slash_command_payload.merge({ command: '/ping' }) }

    it 'returns pong' do
      post '/api/slack/command', params: payload
      expect(JSON.parse(response.body)).to eq('text' => 'pong')
      expect(response.status).to eq 201
    end
  end
end
