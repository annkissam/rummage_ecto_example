defmodule RummageEctoExample.Repo.Migrations.AddProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :price, :float
      add :category_id, references(:categories)

      timestamps
    end
  end
end