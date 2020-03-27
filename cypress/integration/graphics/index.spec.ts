import { Given, Then, When } from "cypress-cucumber-preprocessor/steps";

Given(/I am at welcome page/, () => {
  cy.visit("/");
});

Then(/I should see nav menu "(.*)"/, (text) => {
  cy.contains(text).as("menuItem");
});

When(/I click the menu item/, () => {
  cy.get("@menuItem").click();
});

Then(/I should go to "(.*)"/, (path) => {
  cy.location("pathname").should((pathname) => {
    expect(pathname).to.equal(path);
  });
});
