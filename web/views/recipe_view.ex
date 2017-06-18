defmodule Recippy.RecipeView do
  use Recippy.Web, :view

  def render("index.json", %{recipes: recipes}) do
    %{data: render_many(recipes, Recippy.RecipeView, "recipe.json")}
  end

  def render("show.json", %{recipe: recipe}) do
    %{data: render_one(recipe, Recippy.RecipeView, "recipe.json")}
  end

  def render("recipe.json", %{recipe: recipe}) do
    %{id: recipe.id,
      description: recipe.description}
  end
end
