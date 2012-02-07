class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :contact_person
      t.string :industry_type
      t.string :lead_source
      t.string :model
      t.string :street_address
      t.string :barangay
      t.string :province
      t.string :city
      t.string :zip_code
      t.string :mobile
      t.string :telphone
      t.string :fax
      t.string :email_address
      t.string :tin
      t.string :vat_exemption
      t.boolean :category

      t.timestamps
    end
  end
end
