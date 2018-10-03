defmodule Elvenhearth.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string, size: 50
      add :password, :string, size: 100
      add :email, :string, size: 50

      timestamps()
    end
  end
end
