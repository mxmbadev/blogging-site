class ContactsController < ApplicationController
<<<<<<< HEAD

=======
  before_filter do
    @utf8_enforcer_tag_enabled = browser.ie?
  end
>>>>>>> 3016aa4b1dc7a937ef442c678df6c1d2ec59c663
  def new
    @contact = Contact.new
  end

  def create
<<<<<<< HEAD
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Sorry Cannot send message.'
      render :new
    end
  end
end

=======
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
>>>>>>> 3016aa4b1dc7a937ef442c678df6c1d2ec59c663
