const { environment } = require('@rails/webpacker')

adds the webpacker library
const webpack = require("webpack")

appends the below "Provide" plugin to our loader, and allows Bootstrap to access the $ variable, 'jquery' and popper
environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery/src/jquery', 
    jQuery: 'jquery/src/jquery', 
    Popper: ['popper.js', 'default']
}))

module.exports = environment
