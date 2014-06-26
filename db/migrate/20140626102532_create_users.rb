class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps
    end

    create_table :user_relationships do |t|
      t.integer :follower_id
      t.integer :following_user_id
    end
  end
end
