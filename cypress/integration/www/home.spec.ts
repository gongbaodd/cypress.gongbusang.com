import { Given, Then, And, When } from "cypress-cucumber-preprocessor/steps";

Given("I am at home page", () => {
  cy.visit("/");
});

Then(/I should see title "(.*)/, (title) => {});

And(/I should see 3D character in iframe "(.*)"/, (src) => {});

When(/I see card with title "(.*)"/, (title) => {});

Then(/I click button "(.*)" in the card/, (button) => {});

And(/I should go to "(.*)"/, (site) => {});

When(/I clicked the button with text "(.*)"/, () => {});

Then(/I should call mail app, to "(.*)"/, () => {});
