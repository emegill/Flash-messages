get '/' do
	erb :index
end

get '/search' do
	erb :search
end

post '/signin' do

end

post '/signup' do
	user = User.new(username: params[:username], password: params[:password])
	if user.save
		flash[:notice] = "Successfully Created New User"
		redirect '/search'
	else
		flash[:error] = user.errors.full_messages
		redirect '/'
	end

end






#
