# AddUserIdToTransaction migration
class AddUserIdToTransaction < ActiveRecord::Migration[7.0]
  def change
    add_column :transacaos, :userId, :string
  end
end
