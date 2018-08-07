const path = require('path');
const webpack = require('webpack');
const ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
  devtool: 'cheap-module-eval-source-map',
  entry: {
    all: path.join(__dirname, '/source/assets/javascripts/application.js')
  },
  output: {
    path: path.join(__dirname, '.tmp/dist'),
    filename: 'javascripts/[name].js'
  },
  resolve: {
    modules: [
      path.join(__dirname, 'source'),
      'node_modules'
    ]
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        use: 'babel-loader',
        exclude: /node_modules/
      }, {
        test: /\.scss$/,
        use: ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: [
            {
              loader: 'css-loader',
              query: {
                modules: false,
                sourceMaps: true
              }
            }, {
              loader: 'postcss-loader',
              query: {
                sourceMaps: true
              }
            }, {
              loader: 'sass-loader',
              query: {
                sourceMaps: true
              }
            }
          ]
        })
      }
    ]
  },
  plugins: [
    new webpack.DefinePlugin({ 'process.env.NODE_ENV': JSON.stringify('production') }),
    new ExtractTextPlugin({ filename: 'css/app.css' })
  ]
};
