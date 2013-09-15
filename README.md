# link_to_social

This gem adds a special link_to_social method to the Rails view helpers to easily make a regular link into a social sharing link.

If you're unsure of what this means, try clicking on of these example links:

[Share link_to_social on LinkedIn](http://www.linkedin.com/shareArticle?url=http%3A%2F%2Fgithub.com%2Fzachfeldman%2Flink_to_social&title=link_to_social&source=http%3A%2F%2Fzfeldman.com)

[Share link_to_social on Facebook](http://www.facebook.com/sharer.php?u=http%3A%2F%2Fgithub.com%2Fzachfeldman%2Flink_to_social)

## Usage

Add the gem to your Rails project's Gemfile, then bundle install to get started.

`gem 'link_to_social'`


To use link_to_social inside your views:

`link_to_social "Share Google on Facebook", "http://google.com", network: :facebook`

`link_to_social "Share Google on Twitter", "http://google.com", network: :twitter`

Network options are passed as symbols. Acceptable network options include:

    :facebook
    :twitter
    :linkedin
    :googleplus
    :tumblr

Some social networks also include optional parameters to include more information with your link, which have been added explicitly as options to link_to_social. Here are some examples:

`link_to_social "Share Google on Twitter", "http://google.com", network: :twitter, text: "Google is awesome."`

`link_to_social "Share Google on LinkedIn", "http://google.com", network: :linkedin, title: "Great Pandas", source: "http://pandafarm.com"`

`link_to_social("Share Google on Tumblr", "http://google.com", network: :tumblr, name: "A great post.", source: "http://zfeldman.com"`


## Contributing to link_to_social

Pull requests welcome.
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so we don't break it in a future version unintentionally.
* Send in a pull request!


## Credits

* Zach Feldman [@zachfeldman](http://zfeldman.com)



[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/ed093654d3f4ac89d05750e3def34190 "githalytics.com")](http://githalytics.com/zachfeldman/rubypress)
