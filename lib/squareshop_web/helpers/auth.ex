defmodule SquareshopWeb.Helpers.Auth do

    def signed_in?(conn) do
        user_id = Plug.Conn.get_session(conn, :current_user_id)
        if user_id, do: !!Squareshop.Repo.get(Squareshop.Identity.User, user_id)
end

    # def signed_in?(conn) do

        
    # end
end
