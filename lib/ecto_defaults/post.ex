defmodule EctoDefaults.Post do
  use Ecto.Model

  import Ecto.Changeset
  import Ecto.Query, only: [from: 1, from: 2]

  schema "posts" do
    field :text, :string
  end

  @required_fields ~w(text)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
