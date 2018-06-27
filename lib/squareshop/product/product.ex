defmodule Squareshop.Products do

	# Imports
	import Ecto.Query

	#Alias
	alias Squareshop.Repo
	alias Squareshop.Products
	alias Squareshop.Products.Product
	require Logger


	#Add a product
	def create_product(productdata) do
		# Logger.debug("user_address = #{inspect(user_address)}")
		%Product{}
		|> Product.changeset(productdata)
		|> Repo.insert()
	end

	# Listing all the products
	def list_products() do
		Repo.all(Product)
	end

	def get_product!(id) do
		 Repo.get!(Product, id)
	end

	# Helper function
	def change_product(%Product{} = products) do
		Product.changeset(products, %{})
	end

	def update_product(%Product{} = product, attrs) do

		Logger.debug("i ran")
		product
		|> Product.changeset(attrs)
		|> Repo.update()
	end


end
