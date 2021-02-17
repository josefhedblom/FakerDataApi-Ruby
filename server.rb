require 'sinatra'
require "sinatra/namespace"
require "sinatra/reloader"
require 'faker'
require 'json'
require_relative  './lib/model/FakerData.rb'

set :bind, 'localhost'
set :port, 5000

namespace '/api/v1' do
    before do
        content_type 'application/json'
    end

    get '/names' do
        file = File.open('./lib/FakerDataFiles/faker-data.js','r')
        file.read
      end

      get '/names/new' do
        data = FakerData.new
        data.generate_data
        data.read_file
        redirect to('/api/v1/names')
      end
end