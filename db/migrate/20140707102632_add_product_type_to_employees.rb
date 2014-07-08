class AddProductTypeToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :product_type, :string
  end
end
