defmodule DetectWeb.PageController do
  use DetectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
