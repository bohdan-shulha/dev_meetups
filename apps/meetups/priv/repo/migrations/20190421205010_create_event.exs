defmodule Meetups.Repo.Migrations.CreateEvent do
  use Ecto.Migration

  def change do
    create table(:event) do
      add :name, :string
      add :seats_count, :integer

      timestamps()
    end

  end
end
