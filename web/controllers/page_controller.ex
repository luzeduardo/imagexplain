defmodule Imagexplain.PageController do
  use Imagexplain.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
