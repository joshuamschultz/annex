const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
// const datatables = require('./loaders/datatables')
// environment.loaders.append('datatables', datatables)
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
	jquery: 'jquery',
  	'window.jQuery': 'jquery',
  	'window.$': 'jquery',
    Popper: ['popper.js', 'default']
  })
)
module.exports = environment
