defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  plug :teste

  def index(conn, _params) do

    render conn, "index.html"
  end

  def teste(conn, _) do
    IO.puts "Yeah my friend"
    conn
  end
end
