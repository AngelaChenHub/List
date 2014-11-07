class AddEmailToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :email_address, :string
  end
end
