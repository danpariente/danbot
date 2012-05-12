
%w[rubygems sinatra haml cleverbot].each { |gem| require gem }

get('/') { haml :index }   

post '/response' do
  @bot ||= Cleverbot::Client.new
  @me = params[:ask]
  @bot_says = @bot.write @me  
  #Cleverbot::Client.new.write params[:ask]
  #haml :index  	
end