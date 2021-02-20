Description: Task2 - Sign in to Trello;

GivenStories: story/web/PreConditions.story

Scenario: Sign in scenario
Given I am on the main application page
Then the page title is equal to 'Trello'
When I click on element located `By.xpath(//div[@class='float-right buttons']/a[@href='/login'])`
Given I am on a page with the URL 'https://trello.com/login'
When I enter `${userEmail}` in field located `By.xpath(//*[@id='user'])`
When I wait until element located `By.Xpath(//input[@value="Log in with Atlassian"])` appears
When I click on element located `By.Xpath(//input[@value="Log in with Atlassian"])`
When I wait until element located `By.Xpath(//button[@id="login-submit"])` appears
When I enter `${userPassword}` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//*[@id='login-submit'])`
When I wait until the page title contains the text '| Trello'

Scenario: Visual test of a page
When I establish  baseline with `Board_Page`
When I COMPARE_AGAINST baseline with `Board_Page`
When I click on element located `By.xpath(//a[@data-test-id='home-link'])`
When I wait until element located `By.Xpath(//span[text()="Stay on track and up to date"])` appears
When I establish  baseline with `Home_Page`
When I COMPARE_AGAINST baseline with `Home_Page`
When I click on element located `By.xpath(//a[@data-test-id='home-free-team-getting-started-tab'])`
When I wait until element located `By.Xpath(//span[text()="GETTING STARTED"])` appears
When I establish  baseline with `Getting-started_Page`
When I COMPARE_AGAINST baseline with `Getting-started_Page`
When I click on element located `By.xpath(//a[@data-test-id='home-team-highlights-tab'])`
When I wait until element located `By.Xpath(//span[text()='Stay on track and up to date'])` appears
When I establish  baseline with `Highlights_Page`
When I COMPARE_AGAINST baseline with `Highlights_Page`
When I click on element located `By.xpath(//a[@data-test-id='home-team-members-tab'])`
When I wait until element located `By.Xpath(//div[text()='Invite Your Team'])` appears
When I establish  baseline with `Members_Page`
When I COMPARE_AGAINST baseline with `Members_Page`