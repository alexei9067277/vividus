Description: Task1 - Sign up to Trello;

Scenario: Sign up, expressions
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//div[@class='float-right buttons']/a[@href='/signup'])`
When I enter `<email>` in field located `By.xpath(//*[@id='email'])`
When I click on element located `By.xpath(//*[@id='signup-submit'])`
Then the page title contains 'Create a Trello Account'
When I wait until element located `By.xpath(//input[@id='displayName'])` appears
When I enter `<fullName>` in field located `By.xpath(//input[@id='displayName'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//*[@id='signup-submit'])`
Examples:
|email|fullName|password|
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)}|#{generate(regexify '[A-Za-z0-9]{8}')}|
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)}|#{generate(regexify '[A-Za-z0-9]{8}')}|
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)}|#{generate(regexify '[A-Za-z0-9]{8}')}|

