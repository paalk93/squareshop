defmodule SquareshopWeb.FormController do
    use SquareshopWeb, :controller
    
    def index(conn, _params) do
      render conn, "index.html"
    end
  end