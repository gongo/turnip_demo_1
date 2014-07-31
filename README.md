turnip_demo_1
=============

Demo of https://groups.google.com/forum/#!topic/ruby-turnip/xLkt7E2cbOg

```
$ git clone https://github.com/gongo/turnip_demo_1.git
$ cd turnip_demo_1
$ bundle install --path vendor/bundle
$ bundle exec rspec
...F

Failures:

  1) Battle dead.. satan has appeared! -> braver attacked! -> braver dead..
     Failure/Error: When braver attacked!
     BraverDeadError:
       BraverDeadError
     # spec/steps/battle_steps.rb:34:in `block (2 levels) in <top (required)>'
     # ./spec/helper/patiently.rb:10:in `call'
     # ./spec/helper/patiently.rb:10:in `patiently'
     # spec/steps/battle_steps.rb:33:in `block in <top (required)>'
     # ./spec/features/battle.feature:21:in `block (6 levels) in run'
     # ./spec/features/battle.feature:20:in `each'
     # ./spec/features/battle.feature:20:in `block (5 levels) in run'
     # ./spec/features/battle.feature:22:in `braver dead..'

Finished in 1.02 seconds (files took 0.19295 seconds to load)
4 examples, 1 failure

Failed examples:

rspec ./spec/features/battle.feature:19 # Battle dead.. satan has appeared! -> braver attacked! -> braver dead..
```
