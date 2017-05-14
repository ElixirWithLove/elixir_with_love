defmodule ElixirWithLove.PageController do
  use ElixirWithLove.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def conduct(conn, _params) do
    render conn, "conduct.html"
  end
end
