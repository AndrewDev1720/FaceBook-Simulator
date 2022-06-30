class CreateFriendRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :friend_requests do |t|
      t.integer "requestor_id", null: false
      t.integer "receiver_id"

      t.timestamps
    end
  end
end
