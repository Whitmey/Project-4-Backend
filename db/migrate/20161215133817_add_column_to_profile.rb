class AddColumnToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :text, :string
    add_column :profiles, :image, :string
  end
end
