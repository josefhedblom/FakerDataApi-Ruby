# FakerDataApi-Ruby for development
# VERSION 1.0.0

## Feel free to modify and add functions.

## Generates a JSON file with fake data.

1. Run bundle install
2. ruby server.rb
3. localhost:5000/people

## To generaret new data

1. localhost:5000/people/new

## Stop tracking faker-data.json

When you generaret new data the it will replace the data in the faker-data.js file.
To stop tracking the changes in faker-data.json with git on your localmachine
git update-index --assume-unchanged faker-data.json