defmodule AuthExWeb.PageController do
  use AuthExWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
