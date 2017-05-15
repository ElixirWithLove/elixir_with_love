defmodule ElixirWithLove.PageController do
  use ElixirWithLove.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def about(conn, _params) do
    render conn, "about.html", organizers: Enum.shuffle([%{name: "Rachael Serur", url: "https://twitter.com/eachrach"},
      %{name: "Omid Bachari", url: "https://twitter.com/omidhouston"}])
  end

  def conduct(conn, _params) do
    render conn, "conduct.html"
  end
end
