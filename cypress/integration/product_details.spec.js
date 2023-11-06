const configYargs = require("webpack-cli/bin/config/config-yargs");

describe('product_details.spec.js', () => {
  it( 'should visit home', () => {
    cy.visit('/')  
}) 
it("There is products on the page", () => {
  cy.get(".products article").should("be.visible");
});

it("can visit one of the products", () => {
  cy.get(".products article:first").click();
});
})