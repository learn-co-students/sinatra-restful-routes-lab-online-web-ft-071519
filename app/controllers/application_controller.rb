class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/recipes' do
    @allRecipes = Recipe.all
  erb :index
  end
  
  get '/recipes/:id' do
    
  end
end
