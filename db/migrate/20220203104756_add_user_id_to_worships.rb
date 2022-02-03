class AddUserIdToWorships < ActiveRecord::Migration[6.0]
  def change
    add_column :worships, :user_id, :integer
  end
end
