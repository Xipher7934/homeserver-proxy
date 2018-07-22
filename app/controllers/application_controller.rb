class ApplicationController < ActionController::API
  include ReverseProxy::Controller

  def index
    reverse_proxy "http://107.190.8.176:4000", verify_ssl: false
    
  end
end

