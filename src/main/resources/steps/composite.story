Composite: When I log in as $email and $password
When I click on element located `By.xpath(//div[@class='float-right buttons']/a[@href='/login'])`
Given I am on a page with the URL 'https://trello.com/login'
When I enter `${userEmail}` in field located `By.xpath(//*[@id='user'])`
When I wait until element located `By.Xpath(//input[@value="Log in with Atlassian"])` appears
When I click on element located `By.Xpath(//input[@value="Log in with Atlassian"])`
When I wait until element located `By.Xpath(//button[@id="login-submit"])` appears
When I enter `${userPassword}` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//*[@id='login-submit'])`
When I wait until the page title contains the text '| Trello'