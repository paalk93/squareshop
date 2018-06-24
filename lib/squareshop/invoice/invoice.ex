defmodule Squareshop.Invoice do
#importing functions
	# import Ecto.Query
	require Stripe
#Setting up aliases
	alias Squareshop.Repo
	alias Squareshop.Invoice
	alias Squareshop.Invoice.Invoices
	alias Squareshop.Invoice.Billing
	# alias Squareshop.Identity.User
	# alias Squareshop.Identity
	alias Stripe
	alias Stripe.Charge

	#Add a new payment card

	def add_card(card_details \\ %{}, id) do
		card = Map.merge(card_details, %{user_id: Kernel.elem(Integer.parse(id), 0)})
		%Billing{}
		|> Billing.changeset(card)
		|> Repo.insert()
	end

	def stripetest do
		 # obtained with Stripe.js
		Stripe.Charge.create(%{amount: 2000, currency: "nok", source: "tok_mastercard", description: "Charge for madison.anderson@example.com"})
	end



end
