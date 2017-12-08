# ActiveRecord Without Rails

Just a simple example of using ActiveRecord migrations without Rails

tasks you can do:

* `rake db:create`
* `rake db:migrate`
* `rake db:drop`

## Notes for Rails 5+

* Note that even with Rails 5, you'll need to `rake db:migrate` rather than
  `rails db:migrate`
* When you create a migration, it should inherit from
  `ActiveRecord::Migration[5.2]`
  
## Customizing path to migrations

The Rakefile expects you to have your migrations in `db/migrat4`, but if you want in a different location, edit [it](https://github.com/jwo/ActiveRecord-Without-Rails/blob/master/Rakefile#L14):

```
#... snip
ActiveRecord::Migrator.migrate("lib/db/migrations/")
```

## Prove that it works:

You can run the thing to show that it'll connect

```
ruby ar-no-rails
```

Output:

> Count of Pages: 0

Lastly, you can IRB it to do stuff:

$ irb

```
>> require "./ar-no-rails"
=> true
>> Page.new
=> #<Page id: nil, content: nil, published: false>
>> Page.create content: "the-content"
=> #<Page id: 1, content: "the-content", published: false>
```

## Copyright

None. Really.
