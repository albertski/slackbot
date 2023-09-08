SlackRubyBotServer::Events.configure do |config|
  config.on :command, '/ping' do |_command|
    Rails.logger.info 'Ping Received.'
    { text: 'pong' }
  end
end
