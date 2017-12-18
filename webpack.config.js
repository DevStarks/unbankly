var path = require('path');
var webpack = require('webpack');

module.exports = {
  context: __dirname,
  entry: ['babel-polyfill', './app/assets/javascripts/init.js'],
  output: {
    filename: 'bundle.js',
    path: __dirname + '/app/assets/javascripts/build'
  },
  devtool: 'cheap-module-eval-source-map',
  resolve: {
    extensions: ['.js', '.jsx', '.js.jsx']
  },
  module: {
    loaders: [
      {
        test: /.jsx?$/,
        loader: 'babel-loader',
        exclude: /node_modules/,
        query: {
          presets: ['es2015', 'react']
        }
      }
    ]
  },
};
