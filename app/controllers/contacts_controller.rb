class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end
	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
			flash.now[:notice] = "Thank you for your message!"
		else
			flash.now[:error] = "Can't send message."
		end
	end
end
