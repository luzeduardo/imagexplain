defmodule Imagexplain.HelloController do
  use Imagexplain.Web, :controller
  require Logger

  def index(conn, _params) do
    # Logger.debug "#{inspect(conn)}"
    render conn, "index.html"
  end

  def show(conn,  _params) do
    Logger.debug "#{inspect(_params)}"
    render conn, "show.html"
  end
end
