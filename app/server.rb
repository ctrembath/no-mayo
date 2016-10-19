require 'sinatra'
require 'openssl'

set :public_dir, Proc.new { File.join(root, "..", "public") }

get '/' do
  # csr_key('csr')
  erb :index
end

get '/about' do
	erb :about
end

get '/projects' do
	erb :projects
end

get '/careers' do
  erb :careers
end

get '/contact' do
  erb :contact
end


private

def csr_key(name)
  key = OpenSSL::PKey::RSA.new 2048
  file = File.new(name, 'w')
  file.write(key)
  file.close
end