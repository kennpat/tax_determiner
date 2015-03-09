[![Build Status](https://travis-ci.org/kennpat/tax_determiner.svg?branch=master)](https://travis-ci.org/kennpat/tax_determiner) [![Code Climate](https://codeclimate.com/github/kennpat/tax_determiner.png)](https://codeclimate.com/github/kennpat/tax_determiner) [![Coverage Status](https://coveralls.io/repos/kennpat/tax_determiner/badge.png)](https://coveralls.io/r/kennpat/tax_determiner)

tax_determiner is an app that will help users determine the level of tax service that they might want to consider.

It takes into consideration the user's experience level and events that have taken place during the year to make
the determination.

I developed the scores and the the effect of the user's experience from my own experience as a licensed CPA, and from
other CPAs I know in the profession.

[ADD EXPLANATIONS OF THE INTEREST THINGS YOU LEARNED DURING YOUR WORK ON THIS PROJECT]

[ADD SCREENSHOTS HERE OF HOW THE APP IS USED HERE]

Basic setup of the app for your localhost server:

1. Clone from github.
2. The Gemfile requires Ruby 2.0.0 so ensure that you are running on that version of Ruby.
2. Bundle the gems, just in case you don't have something.
3. Run `rake db:create`, `rake db:migrate` and `rake db:seed` to create, migrate and seed the database.
4. Add in your account info for your mailer (Sendgrid/Mandrill/etc) to your .env file.
5. Run rake to ensure that tests are passing.

You should be all set for localhost running at this point.

Future build outs:

1. Lead generation additions for Turbo Tax, H&R Block, and CPA firms.

2. My intention is to build this app out for the other types of returns. As they can be much more complicated
and can cause wildly different pricing for a return CPA firms will find this additional info helpful.

3. I'd like to add a Q&A page for users to post questions that would be answered by a professional.

[TURN YOUR ABOVE THREE IDEAS GITHUB ISSUES IN YOUR REPO.]
