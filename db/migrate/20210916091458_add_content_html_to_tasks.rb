class AddContentHtmlToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :content_html, :text
  end
end
