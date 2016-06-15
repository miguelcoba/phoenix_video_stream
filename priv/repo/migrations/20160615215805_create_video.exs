defmodule PhoenixVideoStream.Repo.Migrations.CreateVideo do
  use Ecto.Migration

  def change do
    create table(:videos) do
      add :title, :string
      add :filename, :string
      add :content_type, :string
      add :path, :string

      timestamps
    end

  end
end
