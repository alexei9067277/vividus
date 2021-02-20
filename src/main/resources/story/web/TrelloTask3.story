Scenario: Using composite and nested steps
Given I am on the main application page
When I log in as <email> and <password>
Examples:
|email|password|
|email4453@mail.ru|Password4453|

Scenario: Nested steps for UI
When I click on element located `By.xpath(//button[@data-test-id='header-member-menu-button'])`
When I click on element located `By.xpath(//a[@data-test-id='header-member-menu-profile'])`
When I wait until element located `By.Xpath(//h3[text()='About'])` appears
When I click on element located `By.xpath(//li[@class='tabbed-pane-nav-item']/a[text()='Activity'])`
When I wait until element located `By.Xpath(//div[@class='tabbed-pane-main-col-wrapper js-content'])` appears

When I find >= '1' elements by By.xpath(//li[@class='tabbed-pane-nav-item']/a[text()='Activity']) and for each element do
|step |
|When I click on element located `By.xpath(//li[@class='tabbed-pane-nav-item']/a[text()='Activity'])` |
|Then field located `By.xpath(//a[text()='Load More Activity'])` exists |


