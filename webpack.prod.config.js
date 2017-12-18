var path = require('path');
var webpack = require('webpack');
var UglifyJSPlugin = require('uglifyjs-webpack-plugin');
var baseConfig = require('./webpack.config.js');

module.exports = Object.assign(baseConfig, {
  devtool: false,
  plugins: [
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: JSON.stringify('production')
      }
    }),
    new UglifyJSPlugin({
      test: /.jsx?$/,
      exclude: /node_modules/,
      sourceMap: true
    })
  ]
});
