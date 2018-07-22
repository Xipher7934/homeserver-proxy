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
end

