# GetLinkList



## Information
getlinklist will be able to easily display a linked list of routing only of GET on view.

You can hide in unnecessary get url.



## Getting start
Add to this in Gemfile

```ruby
gem ‘get_link_list’
```

Run bundle install command

```bash
bundle install
```

open app/assets/javascripts/application.js  
write this
```javascript
//= require get_link_list
```

open app/assets/stylesheets/application.css  
write this

```
  *= require get_link_list
```
open app/views/layouts/application.html.erb
add helper in top of body tag

```
  <%= render_get_links if !Rails.env.production? %>
```

## setting for ignore

All GET link does not need to be displayed in the view.  
For example, mailer links are GET, but there is no need to display.

You can set the controllers and actions that do not appear in the list.

create config file

```bash
bundle exec rails g get_link_list:config
```
### ignore controller
Open config/initializers/get_link_list.rb

```ruby
config.ignore_controller = ["controller_name1" : "", "controller_name2" : ""]
```
### ignore controller action

```ruby
config.ignore_controller = ["controller_name1" : ["action_name1","action_name2"]]
```

## Expand assets

If you want to customize js and css.  
GetLinkList Gem expands assets in your rails application.

Run this
```bash
bundle exec rails g get_link_list:assets
```
and then

```
create  app/assets/javascripts/get_link_list/index.js.coffee
create  app/assets/stylesheets/get_link_list/index.css.scss
```
