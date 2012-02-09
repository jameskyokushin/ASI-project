class CreateMarketings < ActiveRecord::Migration
  def change
    create_table :marketings do |t|
      t.string :client_name
      t.string :company_name
      t.references :industry
      t.references :lead
      t.references :product
      t.string :street
      t.string :barangay
      t.references :province
      t.references :city
      t.string :mobile
      t.string :telephone
      t.string :fax
      t.string :email

      t.timestamps
    end
    add_index :marketings, :industry_id
    add_index :marketings, :lead_id
    add_index :marketings, :product_id
    add_index :marketings, :province_id
    add_index :marketings, :city_id
  end
end
