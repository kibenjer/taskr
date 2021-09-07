class AddStateToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :state, :string, default: 'to_do'
  end
end
