defmodule Recippy.Repo.Migrations.CreateRecipe do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :description, :string

      timestamps()
    end

  end
end
