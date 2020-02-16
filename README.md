# README

# Setup guide:

## Install needed Ruby version '2.5.1'
<code> rvm install 2.5.1 <code> 

## Install Rails
<code> gem install rails<code> 

## Installation of gems.
use in the terminal: <code> 'bundle install'<code> 

In case that it won't allow you to make the installation, delete Gemfile.lock and run 'bundle install' again

## Add line in .rspec.

Add this line in your rspec as it will make your test code more readable

<code> '--format documentation '<code> 

## Your first try!

If you run rspec you should have this input:

<code> 
User can create articles
  Successfully create an article [Happy Path]
    User should be on article show page
    User should see success message
    User should see article title
    User should see article content
  User doesn't enter a title for the article [Sad Path]
    User should see error message

List articles on index page
  with articles in db
    displays first article title
    displays second article title

User can see specific article
  Article displays
    title
    content

user can update articles
  User can successfully edite and article [Happy path]
    Expected to have succesfully edit the message
    user should see article changed
  User deleted the title for the article
    The user should see an error that the title is missing

Article
  DB table
    is expected to have db column named id
    is expected to have db column named title
    is expected to have db column named content
  Validations
    is expected to validate that :title cannot be empty/falsy
    is expected to validate that :content cannot be empty/falsy
  Factory
    should have valid Factory

Finished in 4.61 seconds (files took 1.76 seconds to load)
18 examples, 0 failures
<code> 

PD: those are the test already integrated into this app.


# I would like to thank to:

Robin as a great coding partner!
Craft Academy for the material and their great support.
Ruby on rails guide.

# Updates plans:

This app will have no more support added as it's considered "finished"

I could add user privileges and deleting functions but at the moment I have other projects that deserve my attention more.


# Licence

MIT Licence