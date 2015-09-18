exports.config =
  modules:
    definition: false
    wrapper: false
  conventions:
    assets: /app\/assets\//
  paths:
    public: 'dist'
  plugins:
    autoprefixer:
      browsers: ["last 1 version", "> 1%", "ie 8", "ie 7"]
      cascade: false
    cleancss:
      enabled: true
      keepSpecialComments: 0
      removeEmpty: true
    uglify:
      enabled: true
      mangle: false
      compress:
        global_defs:
          DEBUG: false
  files:
    javascripts:
      joinTo:
        'dependencies/vendor.js': /^bower_components/
        'angular-meter-polyfill.js': /^app\/js/
        'angular-meter-polyfill.min.js': /^app\/js/
      order:
        before: ['app/js/app.js']
    stylesheets:
      joinTo:
        'angular-meter-polyfill.css': /^app\/css/
        'angular-meter-polyfill.min.css': /^app\/css/
  overrides:
    production:
      optimize: true
      sourceMaps: false
