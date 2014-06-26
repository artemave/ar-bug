class User < ActiveRecord::Base
  has_and_belongs_to_many :followers, class_name: "User", join_table: "user_relationships",
    foreign_key: "following_user_id", association_foreign_key: "follower_id"
end
