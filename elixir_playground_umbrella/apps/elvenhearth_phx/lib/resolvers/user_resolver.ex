defmodule ElvenhearthPhxWeb.Resolvers.UserResolver do
  alias Elvenhearth.Users.UserQueries

  def get_all_users(_, _, _) do
    {:ok, UserQueries.get_all()}
  end
end
