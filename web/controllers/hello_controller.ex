defmodule Imagexplain.HelloController do
  use Imagexplain.Web, :controller
  require Logger

  def index(conn, _params) do
    Logger.debug "#{inspect(conn)}"
    render conn, "index.html"
  end
end
