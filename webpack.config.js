var path = require('path');
var webpack = require('webpack');

module.exports = {
  context: __dirname,
  entry: ['babel-polyfill', './app/assets/javascripts/init.js'],
  output: {
    filename: 'bundle.js',
    path: __dirname + '/app/assets/javascripts/build'
  },
  devtool: 'cheap-module-source-map',
  resolve: {
    extensions: ['.js', '.jsx', '.js.jsx']
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['env', 'react']
          }
        }
      },
      {
        test: /\.scss$/,
        use: [{
          loader: 'style-loader' // creates style nodes from JS strings
        }, {
          loader: 'css-loader' // translates CSS into CommonJS
        }, {
          loader: 'sass-loader' // compiles Sass to CSS
        }]
      }
    ]
  },
};
