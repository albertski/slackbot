class BugDutyBotController < ApplicationController
  include SlackRubyBotServer::Events

  command 'hello' do |client, data, match|
    client.say(channel: data.channel, text: "Hello, #{data.user}!")
  end
end
