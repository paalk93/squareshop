defmodule Squareshop.Products do

	# Imports
	import Ecto.Query

	#Alias
	alias Squareshop.Repo
	alias Squareshop.Products
	alias Squareshop.Products.Product


	#Add a product
	def create_product(productdata) do
		# Logger.debug("user_address = #{inspect(user_address)}")
		%Product{}
		|> Product.changeset(productdata)
		|> Repo.insert()
	end

	# Listing up all the products
	def list_products() do
		Repo.all(Product)
	end



end
