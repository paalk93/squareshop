defmodule SquareshopWeb.RegUserController do
    use SquareshopWeb, :controller
	alias Squareshop.Userdata
    alias Squareshop.Userdata.User

    def index(conn, _params) do
	    render conn, "index.html"
    end
end
