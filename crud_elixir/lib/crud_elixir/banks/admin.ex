defmodule CrudElixir.Banks.Admin do
  use Ecto.Schema
  import Ecto.Changeset

  schema "admins" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(admin, attrs) do
    admin
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
