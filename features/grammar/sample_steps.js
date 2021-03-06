// You can include npm dependencies for support files in tests/cucumber/package.json
var _ = require('underscore');

module.exports = function () {

    // You can use normal require here, cucumber is NOT run in a Meteor context (by design)
    var url = require('url');

    // Preconditions
    // -------------
    this.Given(/^I am a new user$/, function () {
        // server.call('reset'); // server is a connection to the mirror
        // server.call('reset'); // server is a connection to the mirror
    });

    this.Given(/^I am not connected$/, function () {
        browser.url(process.env.ROOT_URL+"/logout");
        browser.url(process.env.ROOT_URL+"/login");
    });

    // Actions
    // -------
    this.When(/^I navigate to "([^"]*)"$/, function (relativePath) {
        // process.env.ROOT_URL always points to the mirror
        // client.url(url.resolve(process.env.ROOT_URL, relativePath));
        client.url(url.resolve(process.env.ROOT_URL, relativePath));
    });

    this.Then(/^I should see the title "([^"]*)"$/, function (expectedTitle) {
        // no callbacks, no promises, just simple synchronous code!
        client.waitForExist('title',50000);
        expect(client.getTitle()).toEqual(expectedTitle); // using Jasmine's assertion library
    });

    this.Then(/^I should see the button "([^"]*)"$/, function (btn) {
        client.waitForExist(btn,50000);
    });

    this.Then(/^I should see the field "([^"]*)"$/, function (btn) {
        client.waitForExist(btn,50000);
    });

    this.Then(/^I should see the link "([^"]*)"$/, function (btn) {
        // = is exactly equal
        // != is not equal
        // ^= is starts with
        // $= is ends with
        // *= is contains
        // ~= is contains word
        // |= is starts with prefix (i.e., |= "prefix" matches "prefix-...")
        client.waitForExist('a[href$="'+btn+'"]',30000);
    });

    this.When(/^I try to connect with username "([^"]*)" and password "([^"]*)"$/, function (user, pass) {
        //client.waitForExist('#log_uname',50000);
        browser.setValue('#log_uname', user);
        //client.waitForExist('#log_pass',50000);
        browser.setValue('#log_pass', pass);
        browser.click('.btn_login');
        // browser.waitForExist('body *');
        // browser.waitForVisible('body *');
        // browser.click('#logout-button-footer');
    });

    this.Then(/^I click on the button "([^"]*)"$/, function (btn) {
        client.waitForExist(btn,50000);
        browser.click(btn);
    });
    // Inputs
    this.Then(/^I fill the field "([^"]*)" with value "([^"]*)"$/, function (input, value) {
        browser.setValue(input, value);
        //browser.click(".btn.btn-danger.btn_login");
    });

    this.Then(/^I should see class "([^"]*)"$/, function (classtName) {
        client.waitForExist(classtName,50000);
    });


    /// see text
    this.Then(/^I should see text "([^"]*)"$/, function (text) {
        client.waitForExist(text,50000);
    });

    // shear contant by facebook

    // this.Then(/^I should see the content shared social media profile "([^"]*)"$/, function (socail) {
    // });
    // login with facebook
    this.When(/^I try to connect with facebook account username "([^"]*)" with password "([^"]*)"$/,function(email,password){
        browser.url("https://www.facebook.com/");
        browser.setValue('#email', email);
        browser.setValue('#pass', password);
        browser.click("#loginbutton");
    });
    // login with gmail
    this.When(/^I try to connect with gmail account username "([^"]*)" with password "([^"]*)"$/,function(email,password){
        browser.url("https://accounts.google.com");
        browser.setValue('#Email', email);
        browser.click("#next");
        browser.setValue('#Passwd', password);
        browser.click("#signIn");
    });
    // login by twitter

    this.When(/^I try to connect with twitter account username "([^"]*)" with password "([^"]*)"$/,function(email,password){
        browser.url("https://twitter.com/");
        browser.setValue('#signin-email', email);
        browser.setValue('#signin-password', password);
        browser.click(".flex-table-btn");
    });
};
