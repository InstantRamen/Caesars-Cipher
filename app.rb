require_relative 'caesars_cipher'
require "sinatra/base"

class App < Sinatra::Base
  @text_to_cipher

  get '/' do 
    erb (:index)
  end

  post "/results" do 
    result = CaesarsCipher.new(params[:text], params[:key]).to_s
    erb :results, locals: {result: result}
  end

  run!
end