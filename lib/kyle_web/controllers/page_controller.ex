defmodule KyleWeb.PageController do
  use KyleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
