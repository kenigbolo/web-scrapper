# BASIC WEB SCRAPPER

This is a basic ruby on rails web scrapper used to retrieve webpage content from websites. This module performs a very basic retrieve and save function specifically for the ```h1, h2, h3 and a tags``` hence functionality is kept barebones.

# DEVELOPERS GUIDE

## Getting Started

+ Clone the repo:
`clone git@github.com:kenigbolo/web-scrapper.git` for SSH
`git clone https://github.com/kenigbolo/web-scrapper.git` for HTTPS

## Dependencies

* Ruby version 2.5.1 and above
* Rails 5.0.0

Once you have those two, you can then go to your command line and navigate into the project's folder then run the following:

* Run `bundle install` to install all other dependencies


    ***Note*** some gems might cause issues while installing, so for unix/linux users try `sudo gem install <gem_name>`
* Run `rails db:migrate` or `rake db:migrate`
* Run `rails db:seed`  or `rake db:seed` to seed the `db` if neccessary.

(*the `rake` command was used for rails version prior rails 5. But it is no logner required*)

## Running The Server

You can run `rails s` or `rails server` and visit the page on the browser by typing `localhost:3000`. (*you can add the flag `-p <port_number>` to specify a different port number, e.i. `rails s -p 8000`*)

##Running The Specs
After all the setting up as mentioned above, you can run the tests. The tests are driven by rspec. You can get them fired up by running the following command from the terminal.

  `rspec spec`

or

  `bundle exec rspec`

## API Main Features

* Accepts API request via curl for web scrapping
* Saves content scrapped from web page
* Returns JSON response based on JSONAPI standard

## API Routes

```ruby
Prefix Verb   URI Pattern                  Controller#Action
scrappers               GET    /scrappers(.:format)               scrappers#index
                        POST   /scrappers(.:format)               scrappers#create
scrapper                GET    /scrappers/:id(.:format)           scrappers#show
                        PATCH  /scrappers/:id(.:format)           scrappers#update
                        PUT    /scrappers/:id(.:format)           scrappers#update
                        DELETE /scrappers/:id(.:format)           scrappers#destroy

scrapped_contents       GET    /scrapped-contents(.:format)       scrapped_contents#index
                        POST   /scrapped-contents(.:format)       scrapped_contents#create
scrapped_content        GET    /scrapped-contents/:id(.:format)   scrapped_contents#show
                        PATCH  /scrapped-contents/:id(.:format)   scrapped_contents#update
                        PUT    /scrapped-contents/:id(.:format)   scrapped_contents#update
                        DELETE /scrapped-contents/:id(.:format)   scrapped_contents#destroy
```

## Database
* Development Environment
    Uses Sqlite
