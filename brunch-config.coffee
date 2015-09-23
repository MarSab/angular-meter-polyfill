exports.config =
  modules:
    definition: false
    wrapper: false
  paths:
    public: 'dist'
    watched: ['src', 'demo', 'dist']
  conventions:
    assets: /^demo/
  optimize: true
  plugins:
    autoprefixer:
      browsers: ["last 1 version", "> 1%", "ie 8", "ie 7"]
      cascade: false
    cleancss:
      enabled: true
      keepSpecialComments: 0
      removeEmpty: true
      ignored: /^dist[\/\\]angular-meter-polyfill\.css/
    uglify:
      enabled: true
      mangle: true
      ignored: /dist[\/\\]angular-meter-polyfill\.js/
      compress:
        global_defs:
          DEBUG: false
  files:
    javascripts:
      joinTo:
        'dependencies/vendor.js': /^bower_components/
        'angular-meter-polyfill.js': /^src\/js/
        'angular-meter-polyfill.min.js': /^dist[\/\\]angular-meter-polyfill\.js/
      order:
        before: ['app/js/app.js']
    stylesheets:
      joinTo:
        'angular-meter-polyfill.css': /^src\/css/
        'angular-meter-polyfill.min.css': /^dist[\/\\]angular-meter-polyfill\.css/
