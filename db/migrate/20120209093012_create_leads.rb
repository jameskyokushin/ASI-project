class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name

      t.timestamps
    end
  end
end
