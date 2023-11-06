const configYargs = require("webpack-cli/bin/config/config-yargs");

describe('home.spec.js', () => {
  it( 'should visit', () => {
    cy.visit('/')  
}) 
it("There is products on the page", () => {
  cy.get(".products article").should("be.visible");
});

it("There is 2 products on the page", () => {
  cy.get(".products article").should("have.length", 2);
});
})
