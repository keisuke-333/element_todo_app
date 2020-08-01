class AddExpiredAtToToDos < ActiveRecord::Migration[6.0]
  def change
    add_column :dos, :expired_at, :datetime
  end
end
