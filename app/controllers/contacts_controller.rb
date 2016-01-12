class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contacts_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:notice] = 'Cannot send message.'
      render :new
    end
  end

  private

  def contacts_params
    params.require(:contact).permit(:name, :email, :message, :nickname)
  end
end
