import { Given, Then, And } from "cypress-cucumber-preprocessor/steps";

Given(/I am at home page/, () => {
  cy.visit("/");
});

Then(/I should see "(.*)" button/, (text) => {
  cy.contains(text).as("button");
});

Then(/I click it/, () => {
  // cy.get("@button").click();
});

And(/I should see the url turn to "(.*)"/, (path) => {
  cy.wait(800);
  cy.location("pathname").should("eq", path);
});
