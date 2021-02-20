Description: The story to verify that walmart is working correctly;

Scenario: Walmart
Given I am on a page with the URL 'https://www.walmart.com/account/signup'
When I enter `Alexei4441` in field located `By.xpath(//*[@id='first-name-su'])`
When I enter `Lastname4441` in field located `By.xpath(//*[@id='last-name-su'])`
When I enter `email4441@mail.com` in field located `By.xpath(//*[@id='email-su'])`
When I enter `Password4441` in field located `By.xpath(//*[@id='password-su'])`
When I click on element located `By.xpath(//*[@data-tl-id='signup-submit-btn'])`
Given I am on a page with the URL 'https://www.walmart.com/'
When I enter `Nintendo Switch Console with Neon Blue & Red Joy-Con` in field located `By.xpath(//*[@id='global-search-input'])`
When I click on element located `By.xpath(//*[@id='global-search-submit'])`
When I click on element located `By.xpath(//*[@data-tl-id='ProductTileListView-0']//*/*[@data-type='itemTitles'])`
When I click on element located `By.xpath(//*[@data-tl-id='ProductPrimaryCTA-cta_add_to_cart_button'])`
Then product is added to cart
When I click on element located `By.xpath(//*[@id="header-bubble-links"]/div[3]/a)`
Then I navigate to cart