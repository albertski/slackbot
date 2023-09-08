module SlackHelper
  def default_slash_command_payload
    {
      command: nil,
      text: '`',
      channel_id: 'channel',
      channel_name: 'channel_name',
      user_id: 'user_id',
      team_id: 'team_id',
      token: 'deprecated',
    }
  end

  def dummy_slack_response
    { ok: true, channel: 'does not matter' }.to_json
  end

  def disable_slack_signature_checks!
    allow_any_instance_of(Slack::Events::Request).to receive(:verify!)
  end
end
