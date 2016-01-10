class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find_by_id(params[:id])
  end

  def create
    @contact = Contact.new(params[:contact].permit)
  end

  def update
    @contact = Contact.find_by_id(params[:id])
  end

  def delete
    @contact = Contact.find_by_id(params[:id])
    @contac.destory
  end

  def make_communication_primary
    @contact = Contact.find_by_id(params[:id])
    @communication = @contact.communication_details.find_by_id(params[:communication][:id])
  end

  def make_address_primary
    @contact = Contact.find_by_id(params[:id])
    @address = @contact.address_details.find_by_id(params[:address][:id])
  end

  def remove_communication_detail
    @contact = Contact.find_by_id(params[:id])
    @communication = @contact.communication_details.find_by_id(params[:communication][:id])
    @communication.destory
  end

  def remove_address_detail
    @contact = Contact.find_by_id(params[:id])
    @address = @contact.address_details.find_by_id(params[:address][:id])
    @addres.destory
  end

end
