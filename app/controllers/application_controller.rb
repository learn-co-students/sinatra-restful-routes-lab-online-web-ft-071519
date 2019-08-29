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
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end
  
  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end
  
  # delete '/recipes/:id/delete' do #delete action
  #   @recipe = Recipe.find_by_id(params[:id])
  #   @article.delete
  #   redirect to '/recipes'
  # end
end
