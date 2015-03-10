[![Build Status](https://travis-ci.org/kennpat/tax_determiner.svg?branch=master)](https://travis-ci.org/kennpat/tax_determiner) [![Code Climate](https://codeclimate.com/github/kennpat/tax_determiner.png)](https://codeclimate.com/github/kennpat/tax_determiner) [![Coverage Status](https://coveralls.io/repos/kennpat/tax_determiner/badge.png)](https://coveralls.io/r/kennpat/tax_determiner)

file.me
=======

tax_determiner is an app that will help users determine the level of tax service that they might want to consider.

It takes into consideration the user's experience level and events that have taken place during the year to make
the determination.

I developed the scores and the the effect of the user's experience from my own experience as a licensed CPA, and from
other CPAs I know in the profession.

Things That Probably Only I Found Interesting In This Project
-------------------------------------------------------------

*Usage of Active Model to mimic Active Record for use in the contact page. Being able to create an object and get all
of the benefits of Active Record (validations, etc) was pretty interesting.

*Realizing that because of how browsers cache previous pages that a user just using 'Back' would not result in what
I had intended. I discovered that validations may not save you in this instance and set the app to force a page refresh
when back was used.

*Building a return object through more than just one page so that the form was more responsive, but finding that the
approach opened a can of worms was enlightening. In the future I will probably utilize one of the gems that solves
this iterative building of an object instead of going from new -> create -> edit to create the object.

The App in Action
-----------------

![alt tag](https://raw.githubusercontent.com/kennpat/tax_determiner/master/public/Readme/homepage.png)

After clicking 'Get Started' the app will ask you what type of return that you need help with

![alt tag](https://raw.githubusercontent.com/kennpat/tax_determiner/master/public/Readme/newpage.png)

Once you have selected the type of return you need help with the app will ask for basic information and questions
related to your return. Note that at this time only the individual return type has a question list.

![alt tag](https://raw.githubusercontent.com/kennpat/tax_determiner/master/public/Readme/editpage.png)

The app will then calculate the difficulty of your potential return and generate what type of service you might require

![alt tag](https://raw.githubusercontent.com/kennpat/tax_determiner/master/public/Readme/showpage.png)

Basic setup of the app for your localhost server:
-------------------------------------------------

1. Clone from github.
2. The Gemfile requires Ruby 2.0.0 so ensure that you are running on that version of Ruby.
2. Bundle the gems, just in case you don't have something.
3. Run `rake db:create`, `rake db:migrate` and `rake db:seed` to create, migrate and seed the database.
4. Add in your account info for your mailer (Sendgrid/Mandrill/etc) to your .env file.
5. Run rake to ensure that tests are passing.

You should be all set for localhost running at this point.

Future build outs:
------------------

1. Lead generation additions for Turbo Tax, H&R Block, and CPA firms.

2. My intention is to build this app out for the other types of returns. As they can be much more complicated
and can cause wildly different pricing for a return CPA firms will find this additional info helpful.

3. I'd like to add a Q&A page for users to post questions that would be answered by a professional.
