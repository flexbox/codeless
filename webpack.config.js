'use strict';

const path = require('path');
const webpack = require('webpack');
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const cssLoaders = [
  {
    loader: 'css-loader',
    options: {
      modules: true,
      minimize: true
    }
  },
  {
    loader: 'sass-loader'
  }
]

module.exports = {
  context: __dirname + '/source',
  entry: {
    site: './assets/javascripts/application.js',
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /(node_modules)/,
        loader: 'babel-loader',
      },
      {
        test: /\.(sass|scss)$/,
        use: ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: 'css-loader'
        })
      },
    ],//end rules
  },
  output: {
    path: __dirname + '/build/javascripts',
    filename: '[name].bundle.js',
  },

  plugins: [
    new webpack.LoaderOptionsPlugin({
      minimize: true,
      debug: false
    }),
    new ExtractTextPlugin({
      filename:  (getPath) => {
        return getPath('[name].bundle.css').replace('css/js', 'css');
      },
      disable: false,
      allChunks: true,
    }),
  ],
};
