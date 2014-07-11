# require 'ziggeo'

config = {
  :application_token    => ENV.fetch('ZIGGEO_APPLICATION_TOKEN'),
  :private_key => ENV.fetch('ZIGGEO_PRIVATE_KEY'),
  :encryption_key => ENV.fetch('ZIGGEO_ENCRYPTION_KEY'),
}

# client = Ziggeo::REST::Client.new(config)

# client.search("to:xxx", :result_type => "recent").take(10).each do |ziggeo|
#   puts ziggeo.text
# end
