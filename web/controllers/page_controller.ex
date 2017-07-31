defmodule ElixirWithLove.PageController do
  use ElixirWithLove.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", organizers: Enum.shuffle([%{name: "Rachael Serur", url: "https://twitter.com/eachrach"},
      %{name: "Omid Bachari", url: "https://twitter.com/omidhouston"}])
  end

  def about(conn, _params) do
    render conn, "about.html", organizers: Enum.shuffle([%{name: "Rachael Serur", url: "https://twitter.com/eachrach"},
      %{name: "Omid Bachari", url: "https://twitter.com/omidhouston"}])
  end

  def conduct(conn, _params) do
    render conn, "conduct.html"
  end

  def sponsorships(conn, _params) do
    redirect conn, external: "https://s3.amazonaws.com/elixir-with-love/EWL-2017-sponsorship-prospectus.pdf"
  end
end
