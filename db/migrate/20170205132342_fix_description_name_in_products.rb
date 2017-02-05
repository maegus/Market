class FixDescriptionNameInProducts < ActiveRecord::Migration[5.0]
  def up
    rename_column :products, :descritpion, :description
  end
end
