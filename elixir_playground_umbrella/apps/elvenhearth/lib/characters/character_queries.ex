defmodule Elvenhearth.Characters.CharacterQueries do
  import Ecto.Query

  alias Elvenhearth.Users.User

  alias Elvenhearth.Repo
  alias Elvenhearth.Characters.Character

  def get_all_for_user(%User{} = user) do
    get_all_for_user(user.id)
  end
  def get_all_for_user(user_id) when is_integer(user_id) do
    Repo.all(
      from c in Character,
      where: c.user_id == ^user_id
    )
  end

  def any do
    count =
      Repo.one(
        from c in Character,
        select: count(c.id)
      )
    count != 0
  end

  def create(character) do
    Repo.insert(character)
  end
end
