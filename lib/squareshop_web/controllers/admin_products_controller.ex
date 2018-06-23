defmodule SquareshopWeb.AdminProductsController do
    use SquareshopWeb, :controller

    def index(conn, _params) do
      render conn, "index.html"
    end
  end
