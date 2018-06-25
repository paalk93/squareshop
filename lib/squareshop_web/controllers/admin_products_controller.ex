defmodule SquareshopWeb.AdminProductsController do
    use SquareshopWeb, :controller

	alias Squareshop.Products
	alias Squareshop.Products.Product

	def index(conn, _params) do
			products = Products.list_products()
			render conn, "index.html", products: products
	end

	def new(conn, _params) do
		changeset = Products.change_product(%Product{})
		render(conn, "new.html", changeset: changeset)
	end

	def create(conn, %{"product" => product_params}) do
		case Products.create_product(product_params) do
      {:ok, product} ->
        conn
        |> put_flash(:info, "Product created successfully.")
        |> redirect(to: admin_products_path(conn, :show, product))
		{:error, %Ecto.Changeset{} = changeset} ->
			render(conn, "new.html", changeset: changeset)
		end
	end

	# def update(conn, %{"id" => id, "product" => product_params}) do
    #   product = Identity.get_product!(id)
	#
	# 	case Identity.update_product(product, product_params) do
	# 	{:ok, product} ->
	# 	  conn
	# 	  |> put_flash(:info, "product updated successfully.")
	# 	  |> redirect(to: product_path(conn, :show, product))
	# 	{:error, %Ecto.Changeset{} = changeset} ->
	# 	  render(conn, "edit.html", product: product, changeset: changeset)
	# 	end
    # end
end
