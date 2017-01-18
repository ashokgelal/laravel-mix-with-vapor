let mix = require('laravel-mix').mix

mix.js('Resources/Assets/js/app.js', 'Public/js')
   .sass('Resources/Assets/scss/app.scss', 'Public/css')
