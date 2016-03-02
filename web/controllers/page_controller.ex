defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, params) do
    IO.puts "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
    IO.puts "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
    conn
      |> put_flash(:info, "Ola mestre")
      |> assign(:teste, params["nome"])
      |> render("index.html")
  end

  def test(conn, _params) do
    render conn, "test.html"
  end
end
