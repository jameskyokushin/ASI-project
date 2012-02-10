class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :client_name
      t.string :company_name
      t.references :industry
      t.references :lead
      t.references :product
      t.string :street
      t.string :barangay
      t.references :province
      t.references :city
      t.string :zip_code
      t.string :mobile
      t.string :telephone
      t.string :fax
      t.string :email
      t.string :tin
      t.string :vat_exemption
      t.string :inquiry

      t.timestamps
    end
    add_index :sales, :industry_id
    add_index :sales, :lead_id
    add_index :sales, :product_id
    add_index :sales, :province_id
    add_index :sales, :city_id
  end
end
