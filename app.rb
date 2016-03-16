require 'pocket-ruby'
require 'json'

access_token = ''
cwd = File.expand_path File.dirname(__FILE__)

Pocket.configure do |config|
  config.consumer_key = ''
end


client = Pocket.client(:access_token => access_token)
info = client.retrieve(:detailType => :complete, :state => :archive)

puts cwd

File.open("#{cwd}/archive.json","w") do |f|
  f.write(info.to_json)
end

