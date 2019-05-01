defmodule Meetups.Schema.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "event" do
    field :name, :string
    field :seats_count, :integer

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:name, :seats_count])
    |> validate_required([:name, :seats_count])
  end
end
