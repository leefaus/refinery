defmodule Refinery.PageController do
  use Refinery.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
