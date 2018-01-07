class ContactsController < ApplicationController
  before_action :get_contacts, only: [:edit, :update]
  layout 'admin', only: [:edit, :update]

  def edit

  end

  def update
    permitted_columns = params.require(:contacts).permit(:full_name, :address, :email, :mobile, :rating)
    respond_to do |format|
      if @contacts.update_attributes(permitted_columns)
        format.html {
          redirect_to edit_contact_path(@contacts), notice: ['Update Complete', 'Contacts was successfully updated.']}
      end
    end
  end

  private

  def get_contacts
    @contacts = Contacts.first
  end
end