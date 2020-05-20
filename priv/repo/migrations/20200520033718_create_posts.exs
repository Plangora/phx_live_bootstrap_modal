defmodule LiveSite.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string, null: false
      add :body, :string, null: false
      add :slug, :string, null: false

      timestamps()
    end

    create unique_index(:posts, [:slug])
  end
end
