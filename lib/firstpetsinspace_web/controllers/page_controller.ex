defmodule FirstpetsinspaceWeb.PageController do
  use FirstpetsinspaceWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
