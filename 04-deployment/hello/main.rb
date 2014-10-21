require 'sinatra'

get '/' do
	"hello world. It is now #{Time.now}"
end
