/// <reference types="cypress" />

import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

let stub;

When(`I type a {string} and a {string}`, (username, password) => {
	cy.get(`#text`).type(username);
	cy.get(`#password`).type(password);
})

When(`I click on the login button`, () => {
	stub = cy.stub();
	cy.on('window:alert', stub);
	cy.get(`#login-button`).click();
})

Then(`I should be presented with a {string}`, (message) => {
	expect(stub).to.have.been.calledWith(message);
})