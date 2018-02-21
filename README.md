# README

## Branching on version at routing level

This tiny proof of concept uses advanced Rails routing constraints to be able to 
use a different controller depending on the version the client is using.

Point of interests:

* `config/routes.rb`

## How to test with Curl

First, run `bundle install` to install the dependencies.
Then, start the server: `rails server`

### Not specifying any version -> fallback on legacy

` $ curl localhost:3000/checkout `

The version returned is the legacy version, as it is the latest matching route.

### Passing the version in the Accept header

` $ curl -H "Accept: version=1" localhost:3000/checkout `

The matches? function returns True because the version is found in the Accept header.

