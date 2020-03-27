import { Given, Then, And, When } from "cypress-cucumber-preprocessor/steps";

Then(/I should see card with title "(.*)"/, (title) => {});

When(/I click the button with the text "(.*)" in the card/, (button) => {});

Then(/I should go to "(.*)" page/, (path) => {});
