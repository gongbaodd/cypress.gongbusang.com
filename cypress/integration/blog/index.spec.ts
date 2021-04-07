import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given(/I am at home page/, () => {
  cy.visit("/");
});

Then(/I should see title "(.*)"/, (value) => {
  cy.contains(value).parent("h1");
});

When(/I click the first Post/, () => {
  cy.get("article header").first().find("a.string").click();
});

Then(/I go to the page with title "(.*)"/, (value) => {
  cy.wait(1000);
  cy.contains(value).parent("h1").as("ChildPageTitle");
  cy.wait(1000);

});

When(/I click the title, I go back to home/, () => {
  cy.get("@ChildPageTitle").find("a").click();
  cy.location("pathname").should((pathname) => {
    expect(pathname).to.equal("/");
  });
});
