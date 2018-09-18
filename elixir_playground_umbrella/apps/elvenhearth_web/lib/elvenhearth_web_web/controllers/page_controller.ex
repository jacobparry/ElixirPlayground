defmodule ElvenhearthWebWeb.PageController do
  use ElvenhearthWebWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
