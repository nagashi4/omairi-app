class RemoveNameFromWorships < ActiveRecord::Migration[6.0]
  def change
    remove_column :worships, :name, :string
  end
end
