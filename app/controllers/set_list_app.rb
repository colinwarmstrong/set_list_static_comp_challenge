class SetList < Sinatra::Base

  get '/' do
    erb :'/welcome'
  end

  get '/songs' do
    @songs = Song.all.includes(:playlist)
    erb :"songs/index"
  end

  get '/songs/new' do
    Song.create
    erb :'songs/new'
  end

  post '/songs' do
  end

  get '/songs/:id' do
    @songs = Song.find(params[:id])
    erb :'songs/show'
  end
end
