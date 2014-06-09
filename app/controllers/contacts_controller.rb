class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def index
    @contact = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to :back, notice: "Thanks, #{@contact.name}! Your contact information was successfully submitted."
    else
      render :new
    end
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update_attributes(contact_params)
      #do something
    else
      #do something
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    #redirect_to somewhere
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :company, :email, :phone, :note)
    end

end
