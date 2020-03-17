import { Given, Then } from "cypress-cucumber-preprocessor/steps"

Given(/I am at home page/, () => {
    cy.visit('/');
});

Then(/I should see title "(.*)"/, value => {
    cy.contains(value).parent('h1');
});
