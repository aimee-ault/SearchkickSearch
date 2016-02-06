# README

This repo is intended to be used as supplementary learning material to accompany a blog post on my website titled 
["How to Use Searchkick and ElasticSearch in Your Rails App For Complex Search Indexing"](http://aimeeault.com/2016/02/05/how-to-use-searchkick-and-elasticsearch-in-your-rails-app-for-complex-search-indexing/).

## To run locally:

* git clone https://github.com/aimee-ault/SearchkickSearch.git
* cd SearchkickSearch
* bundle install
* rake db:migrate
* rake db:seed
* rails s
* Visit http://localhost/movies

### What should I know about this code that wasn't mentioned in your blog?
* Because I host my search classes in `/app/searches`, I added that directory to the application's `autoload_paths` configuration, which can be found in `/config/application.rb`. If you choose to place classes outside of the conventional MVC paths Rails uses, you should be mindful of this, otherwise you will need to explicitly include your classes where they are used.
* This application currently lacks tests entirely! I know, it's a travesty. If you would like to contribute tests, I'd be super appreciative. I recommended rspec or minitest for doing so. 
* I am very open to any contributions to this educational demo! Please feel free to fork and submit a pull request. I'll likely update my blog post and give you credit and a link back to your Github profile or your own website if so.
