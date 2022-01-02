class RecipesController < ApplicationController
    def create
        recipe = Recipe.create(:title, :instructions, :minutes_to_complete)
        render json: recipe, status: :created
    end
end
