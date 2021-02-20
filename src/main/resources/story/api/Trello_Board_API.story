Description: Task 1. part c

Scenario: Use API for Trello Board creation
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=0471642aefef5fa1fa76530ce1ba4c85&token=9eb76d9a9d02b8dd40c2f3e5df18556c831d4d1fadbe2c45f8310e6c93b5c548&name=FirstBoard'
Then the response code is equal to '200'
