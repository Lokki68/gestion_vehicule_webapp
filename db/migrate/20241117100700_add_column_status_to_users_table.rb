class AddColumnStatusToUsersTable < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :status, :string, default: 'enable'
    add_column :users, :role_id, :integer
    
  end
end
