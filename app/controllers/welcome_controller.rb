class WelcomeController < ApplicationController
  def index
  end

  def redis
    @redis = Redis.new(:url => 'redis://127.0.0.1:6379/12')
  end
end
