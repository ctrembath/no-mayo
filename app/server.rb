require 'sinatra'

set :public_dir, Proc.new { File.join(root, "..", "public") }

get '/' do
  erb :index
end

get '/about' do
	erb :about
end
