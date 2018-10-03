defmodule ElvenhearthPhxWeb.Schema do
  use Absinthe.Schema

  import_types ElvenhearthPhxWeb.Schema.SchemaTypes

  query do
    field :health, :string do
      resolve(fn _, _, _ ->
        {:ok, "up"}
      end)
    end

    import_fields :schema_queries
  end



end
