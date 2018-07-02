class SetList < Sinatra::Base

  get '/songs' do
    @songs = Song.all.includes(:playlist)
    erb :"songs/index"
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :'songs/show'
  end

  get '/' do
    erb :'welcome'
  end
end
