class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :created_at, :datetime
    add_update :articles, :update_at, :datetime
  end
end
