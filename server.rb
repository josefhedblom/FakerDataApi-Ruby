require 'sinatra'
require "sinatra/namespace"
require "sinatra/reloader"
require 'faker'
require 'json'

set :bind, 'localhost'
set :port, 5000

namespace '/api/v1' do
    before do
        content_type 'application/json'
    end
end