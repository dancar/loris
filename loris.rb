require 'byebug'
require 'sinatra'
require 'httparty'

URL = 'https://raw.githubusercontent.com/lsv/fifa-worldcup-2018/master/data.json'


get '/' do
  response = HTTParty.get(URL)
  data = JSON.parse(response)
  erb :index, locals: {data: data}
end

get 'pull' do
  `git pull`
end
