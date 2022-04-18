require 'rubygems'
require 'erb'
require 'sinatra'


get '/' do
    erb :index
end


get '/' do
    haml:css
end

get '/download/:filename' do |filename|
  send_file "./files/#{filename}", :filename => filename, :type => 'Application/octet-stream'
end



