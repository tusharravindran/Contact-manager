class ContactsController < ApplicationController

before_action :require_user_logged_in!
before_action :find_contact, only: [:edit, :update, :destroy]
  def index
    @contacts = Contact.paginate(page: params[:page], per_page: 10)
  end
  def new
   @contact = Contact.new
  end
  def create 
  @contact = Contact.new(contact_params)
  if @contact.save
    flash[:success] = "Successfully created new contact"
    redirect_to contacts_path
  else
    render 'new'
  end
  end

  def edit 
  end

  def update 
    
    if @contact.update(contact_params)
      flash[:success] = "Successfully Update contact"
      redirect_to contacts_path
    else
      render 'edit'
    end
  end

  def destroy
   
    if @contact.destroy
      flash[:success] = "Successfully Deleted contact"
      redirect_to contacts_path
    end
  end

  def find_contact
    @contact = Contact.find(params[:id])
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :company, :address ,:phone ,:dob, :image) 
  end
  
end
