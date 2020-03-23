/// <reference types="cypress" />

const webpack = require("@cypress/webpack-preprocessor");
const percyHealthCheck = require("@percy/cypress/task");

module.exports = on => {
  const options = {
    webpackOptions: require("../webpack.config.js"),
  };
  on("file:preprocessor", webpack(options));
  on("task", percyHealthCheck);
};
