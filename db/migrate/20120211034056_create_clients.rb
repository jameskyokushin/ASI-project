class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :client_name
      t.string :email
      t.string :mobile
      t.string :telephone
      t.string :fax
      t.string :house
      t.string :street
      t.string :city

      t.timestamps
    end
  end
end
