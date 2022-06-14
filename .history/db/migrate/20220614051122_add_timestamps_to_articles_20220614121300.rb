class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :created_at, 
  end
end
