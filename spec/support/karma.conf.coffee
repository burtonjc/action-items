module.exports = (config) ->
  config.set
    basePath: '../..'
    browsers: ['Chrome']
    captureTimeout: 60000
    colors: true
    frameworks: ['mocha', 'chai', 'sinon']
    logLevel: config.LOG_INFO
    port: 9876
    reporters: ['dots']

    preprocessors:
      '**/*.coffee': 'coffee'
      'dist/partials/**/*.html': 'ng-html2js'

    ngHtml2JsPreprocessor:
      moduleName: 'partials'
      stripPrefix: 'dist/partials'

    files: [
      # Third party dependencies
      'https://code.jquery.com/jquery-1.11.0.min.js'
      'https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js'
      'https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.6/angular.min.js'
      'https://cdn.firebase.com/js/client/1.0.15/firebase.js'
      'https://cdn.firebase.com/libs/angularfire/0.7.1/angularfire.min.js'
      'http://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular-mocks.js'

      # Testing libraries
      'node_modules/chai-as-promised/lib/chai-as-promised.js'
      'node_modules/sinon-chai/lib/sinon-chai.js'
      'node_modules/chai-things/lib/chai-things.js'

      # Vendor files
      'dist/vendor/angular-ui-router.min.js'

      # Source
      'coffeescripts/application.coffee'
      'coffeescripts/**/*.coffee'

      # Spec help files
      'spec/support/spec-helper.coffee'

      # Spec files
      'spec/karma/**/*spec.coffee'

      # Partials
      'dist/partials/**/*.html'
    ]
