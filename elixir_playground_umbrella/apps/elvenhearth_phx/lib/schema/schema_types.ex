defmodule ElvenhearthPhxWeb.Schema.SchemaTypes do
  use Absinthe.Schema.Notation

  alias ElvenhearthPhxWeb.Resolvers.UserResolver
  alias ElvenhearthPhxWeb.Resolvers.CharacterResolver

  object :schema_queries do
    field :users, list_of(:user) do
      resolve &UserResolver.get_all_users/3
    end
  end


  object :user do
    field :username, :string
    field :password, :string do
      resolve (fn _, _, _  ->
        {:ok, "Haha you don't get to know the password"}
      end)
    end
    field :email, non_null(:string)
    field :characters, list_of(:character) do
      resolve &CharacterResolver.get_characters_for_user/3
    end
  end

  object :character do
    field :user, non_null(:user)
    field :name, :string
    field :race, :string
  end


end
