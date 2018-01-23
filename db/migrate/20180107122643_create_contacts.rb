class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :address
      t.string :email
      t.string :mobile
      t.numeric :rating

      t.timestamps
    end
  end
end
