class AddTinToClients < ActiveRecord::Migration
  def change
    add_column :clients, :tin, :string

  end
end
