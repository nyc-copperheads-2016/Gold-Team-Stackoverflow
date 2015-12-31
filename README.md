StackTooDeep Trello board: https://trello.com/b/MuAXYEde/stacktoodeep

Ryan Lesson
Chris Lee
Jonathan Chen

# Dbc Overflow

## Learning Competencies

* Given a specification, implement an HTTP application that generates appropriate responses to requests using Sinatra or Rails

## Summary

Let's get our feet wet building a substantial Rails application from the ground up: a [StackOverflow](http://stackoverflow.com) clone.

The goal is to focus on building a well-structured Rails application with a good mixture of front-end and back-end features.  While you may have the temptation to try to throw a lot of AJAX into this application or turn it into a "single-page application," **resist this temptation**.  There will be plenty of time for exploring JavaScript features later.  Focus on defining clear routes, creating clean templates, and testing a "classic" CGI application.

Use the "DBC Rails stack:"

* Enable RSpec
* Install `factory_girl`
* Do not use CoffeeScript or Sass
* Remove [`turbolinks`][die-turbolinks]

Remember, to create a new Rails application with certain features enabled / disabled, you can use 
[command-line switches][cls].  A good start would be `rails --help`.

## Strategy

Before you dive to deeply into the code, be clear with your team on three things things:

1. Decide on your MVP
2. Break your MVP down into deliverable features

## Objectives

These instructions are left deliberately ambiguous, both to give you flexibility in your implementation and because clarifying ambiguous requirements is at least 30% of an engineer's job.  At.  Least.

Users should be able to post questions.  Other users should be able to answer them.  Users should be able to respond to both answers and questions.  Like StackOverflow, the responses should just be a flat list.

The person who posted a question can declare one of the user-submitted answers "the best."

Users should be able to vote on questions, answers, and responses (both upvotes and downvotes).

Users cannot add a question, answer, or vote unless they're logged in, but they can view all of the above when logged out.

Users should be able to see questions sorted three ways: highest-voted, most recent, and "trending."

Responses should be sorted chronologically, with oldest first.  Answers should be sorted by "the best" first, followed by most highly-voted.

### Testing

Your app must be fully tested.  If you want to stretch yourself by TDDing your
way, go for it, but timebox yourself. The goal of this is to actually build a
functional and well tested app.

Additionally, since testing is such a heavy focus for this application, you
should integrate [Continuous Integration][CI].  Two popular providers of CI
services are [TravisCI][] and [CircleCI][].

As a bonus feature, if you're using something like [Trello][] or [Slack][], try
integrating the callback "hooks" between CI and these communication tools.

### Polymorphic Associations

Because there are multiple "votable" models &mdash; questions, answers, and responses &mdash; we have the opportunity to use [polymorphic associations](http://guides.rubyonrails.org/association_basics.html#polymorphic-associations).  Instead of having three vote-related tables like `answer_votes`, `question_votes`, etc. polymorphic associations enable you to have a single `votes` table with a `type` column that indicates what kind of thing was voted on.  You may also want to consult [Rich on Rails blog post on polymorphic associations][rorpa].

Likewise, a `Response` can belong to either an `Answer` or a `Question`.

That is, instead of the "type" being encoded in the table name, it's encoded as a field in the table.

### Pro Developer Technologies

* You should track your work / user stories and their progress by means of an electronic tracking application Trello is a common one, Pivotal Tracker is another
* You should add continuous integration (CI) to your code repo:  CircleCI or TravisCI are commonly used.  CI tools run your test suite after _every_ merge to master.  Provided you have tests, you will get _instant_ feedback as to whether you broke the build.  These tools can be configured to SMS you or to message a chat application (see below).
* _Optional_:  Add a chat application.  Many teams, especially those that work remotely, find it helpful to create a chat environment in either Slack, HipChat or some other technology.  Integrate this with GitHub and CI and hygeinic git behavior, you can work as well separated by miles as you might while standing in the same room together.

### Checkpoints

* Your team should produce a repo inside of your cohort's organization in GitHub
* Your first commit should be a `README.md` containing:
 * Your team name
 * Your team members' names
 * The user stories that define your MVP
* You will be demoing your MVP
 * Show us your app doing the essential work of your app
 * Show us your tests
 * Show us `git log --graph`, this should be clean
* You will be demoing your final project


[die-turbolinks]: http://blog.steveklabnik.com/posts/2013-06-25-removing-turbolinks-from-rails-4
[CI]: http://en.wikipedia.org/wiki/Continuous_integration
[TravisCI]: https://travis-ci.org/recent
[CircleCI]: https://circleci.com/
[Trello]: https://trello.com/
[Slack]: https://slack.com/
[rorpa]: http://richonrails.com/articles/polymorphic-associations-in-rails
[cls]: http://en.wikipedia.org/wiki/Command-line_interface
