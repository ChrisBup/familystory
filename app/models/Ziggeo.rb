require 'net/http'
require 'json'

# require_relative "ZiggeoConfig"
# require_relative "ZiggeoConnect"
# require_relative "ZiggeoVideos"
# require_relative "ZiggeoStreams"
# require_relative "ZiggeoAuthtokens"
# require_relative "ZiggeoAuth"

# @ziggeo = Ziggeo.new(ENV.fetch('ZIGGEO_APPLICATION_TOKEN'),
#   ENV.fetch('ZIGGEO_PRIVATE_KEY'),
#   ENV.fetch('ZIGGEO_ENCRYPTION_KEY')
# );

class Ziggeo

  attr_accessor :token, :private_key, :encryption_key, :config, :connect

  def initialize(token, private_key, encryption_key = nil)
    @token = token
    @private_key = private_key
    @encryption_key = encryption_key
    @config = ZiggeoConfig.new()
    @connect = ZiggeoConnect.new(self)
    @videos = nil
    @streams = nil
    @authtokens = nil
    @auth = nil
  end

  def videos()
    if (@videos == nil)
      @videos = ZiggeoVideos.new(self)
    end
    return @videos
  end

  def streams()
    if (@streams == nil)
      @streams = ZiggeoStreams.new(self)
    end
    return @streams
  end

  def authtokens()
    if (@authtokens == nil)
      @authtokens = ZiggeoAuthtokens.new(self)
    end
    return @authtokens
  end

  def auth()
    if (@auth == nil)
      @auth = ZiggeoAuth.new(self)
    end
    return @auth
  end

end
