var path = require('path');
var webpack = require('webpack');
var UglifyJSPlugin = require('uglifyjs-webpack-plugin');
var baseConfig = require('./webpack.config.js');
var ExtractTextPlugin = require('extract-text-webpack-plugin');

// Plugins
var extractSass = new ExtractTextPlugin({
    filename: "[name].[contenthash].css",
    disable: process.env.NODE_ENV === "development"
});

var productionEnvPlugin = new webpack.DefinePlugin({
  'process.env': {
    NODE_ENV: JSON.stringify('production')
  }
});

var uglifyJSPlugin = new UglifyJSPlugin({
  test: /.jsx?$/,
  exclude: /node_modules/,
  sourceMap: true
});

// Config

module.exports = Object.assign(baseConfig, {
  devtool: false,
  plugins: [
    productionEnvPlugin,
    uglifyJSPlugin,
    extractSass
  ],
  module: {
    rules: [{
      test: /\.scss$/,
      use: extractSass.extract({
        use: [{
          loader: "css-loader"
        }, {
          loader: "sass-loader"
        }],
        // use style-loader in development
        fallback: "style-loader"
      })
    }]
  }
});
