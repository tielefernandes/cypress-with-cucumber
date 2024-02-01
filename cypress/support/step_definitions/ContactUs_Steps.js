/// <reference types="cypress" />

import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When(`I type a first name`, () => {
    cy.get('[name="first_name"]').type("Rachel");
})

When(`I type a last name`, () => {
    cy.get('[name="last_name"]').type("Green");
})

When(`I enter an email address`, () => {
    cy.get('[name="email"]').type("rachel.green@email.com");
})

When(`I type a comment`, () => {
    cy.get('textarea[name="message"]').type("Hello World!");
})

When(`I click on the submit button`, () => {
    cy.get('[type="submit"]').click();
})

Then(`I should be presented with a successful contact us submission message`, () => {
    cy.get('h1').should('have.text', 'Thank You for your Message!');
})

Then(`I should be presented with a unsuccessful contact us submission message`, () => {
    cy.get('body').contains('Error: Invalid email address');
})

When(`I type specific first name {string}`, (firtsName) => {
	cy.get('[name="first_name"]').type(firtsName);
})

When(`I type specific last name {string}`, (lastName) => {
	cy.get('[name="last_name"]').type(lastName);
})

When(`I type a specific email address {string}`, (emailAddress) => {
	cy.get('[name="email"]').type(emailAddress);
})

When(`I type a specific word {string} and number {int} within the comment input field`, (word, number) => {
	cy.get('textarea[name="message"]').type(word + " " + number);
})