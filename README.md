### Setup

Clone, `bundle install`, `rake db:create db:migrate`

### Demo

In `rails c`:

```

> p = Post.create!
> u = User.create!
> p.comments.where(user_id: u.followers)
  Comment Load (0.4ms)  SELECT "comments".* FROM "comments"  WHERE "comments"."post_id" = $1 AND "comments"."user_id" IN (SELECT "users"."id" FROM "users" INNER JOIN "user_relationships" ON "users"."id" = "user_relationships"."follower_id" WHERE "user_relationships"."following_user_id" = $1)  [["post_id", 2], ["following_user_id", 2]]
  PG::ProtocolViolation: ERROR:  bind message supplies 2 parameters, but prepared statement "a1" requires 1
