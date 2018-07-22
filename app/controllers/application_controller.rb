class ApplicationController < ActionController::API
  include ReverseProxy::Controller

  def index
    reverse_proxy "http://107.190.8.176:4000", verify_ssl: false do |config|
      # We got a 404!
      config.on_missing do |code, response|
        redirect_to root_url and return
      end
    end
  end

  def bootup
    reverse_proxy "http://107.190.8.176:4000/bootup", verify_ssl: false do |config|
      # We got a 404!
      config.on_missing do |code, response|
        redirect_to root_url and return
      end
    end
  end

  def netflix
    reverse_proxy "http://107.190.8.176:4000/netflix", verify_ssl: false do |config|
      # We got a 404!
      config.on_missing do |code, response|
        redirect_to root_url and return
      end
    end
  end

  def closeprogram
    reverse_proxy "http://107.190.8.176:4000/closeprogram", verify_ssl: false do |config|
      # We got a 404!
      config.on_missing do |code, response|
        redirect_to root_url and return
      end
    end
  end

  def shutdown
    reverse_proxy "http://107.190.8.176:4000/shutdown", verify_ssl: false do |config|
      # We got a 404!
      config.on_missing do |code, response|
        redirect_to root_url and return
      end
    end
  end

  def restart
    reverse_proxy "http://107.190.8.176:4000/restart", verify_ssl: false do |config|
      # We got a 404!
      config.on_missing do |code, response|
        redirect_to root_url and return
      end
    end
  end
end

