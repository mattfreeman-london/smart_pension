# Smart Pension Tech Test

Tech test given by Smart Pensions as part of their recruitment process. 

Goals:
- functionality
- efficiency
- 96% test coverage or higher
- readability

### Instructions given

Write a program that receives a log file as an argument (webserver.log is provided) e.g.: ./<parse> webserver.log.

Returns the following:
- list of webpages with most page views ordered from most pages views to less page views, for example:
  * /home 90 visits
  * /index 80 visits

- list of webpages with most unique page views also ordered, for example:
  * /about/2 8 unique views
  * /index 5 unique views etc...

### Tech used:

Ruby

Gems used:

Rspec - for testing
Rubocop - to help with styling and catch simple errors in syntax
Simplecov - to automate checking for full test coverage

### To install Gems:

```$ bundle install```

### Running tests:

```$ rspec```

This will also show test coverage via the Simplecov gem.

### Next steps:

The project currently only takes a log file and turns it into a hash. The 'page' file was early work that I realised had led me down the wrong path, and remains as a pointer to my early thinking. I had, however, fully tested and refactored this code and it serves as a good example of the kind of work I can do, even though in this case it didn't get me towards a solution.

At the moment, this code takes an input of a log-file, in the format:

web location IP address

and returns a hash:

web location => IP address

The next stage would be to create a new Ruby class, that would take this hash and use it to answer the requirements. For the first requirement, I'd write a method to iterate over the hash, counting the number of unique keys (the paired values are not relevant at this time). To completely fulfil the requirement, I'd need an additional method to sort the output to show the most visited pages. 

For the second requirement, and to keep to separation of responsibility, I'd write a third Ruby class. This class would again iterate over the hash, but this time it'd track both the unique keys and values. It'd need to look at each key, and report how many different values are linked with that key. Again, once we have this information another method would need needed to sort it for viewing. 
