Salt Formula for ReplayD
------------------------
https://kitchen.saltstack.com/docs/file/docs/gettingstarted.md
* Get a working rbenv (i.e. `brew install rbenv`)
* `rbenv install 2.5.1`
* `gem install bundler`
* `bundle install`
* `bundle exec kitchen test`

Test Scripts for ReplayD
------------------------
Run without args for usage
* `script/replayd.bash` GETs current payload
* `script/set-replayd.bash` PUTs new payload

ReplayD was omitted from this project, so PUT won't actually work against the placeholder daemon, and GET is an empty directory index. 
