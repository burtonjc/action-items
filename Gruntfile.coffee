module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-karma'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['clean', 'coffee', 'less', 'copy']
  grunt.registerTask 'start', ['connect']
  grunt.registerTask 'test', ['karma:all']

  grunt.initConfig

    clean: ['dist']

    connect:
      server:
        options:
          base: './dist/',
          port: 9001,
          keepalive: true,

    coffee:
      src:
        expand: true
        cwd: 'coffeescripts/'
        src: ['**/*.coffee']
        dest: 'dist/javascripts'
        ext: '.js'

    copy:
      index:
        cwd: '.'
        src: 'index.html'
        dest: 'dist/'
      partials:
        cwd: 'partials'
        src: '**/*.html'
        dest: 'dist/partials'
        expand: true
      vendor:
        cwd: 'vendor'
        src: '**/*'
        dest: 'dist/vendor'
        expand: true

    karma:
      all:
        configFile: 'spec/support/karma.conf.coffee'
        autoWatch: false
        singleRun: true
      watch:
        configFile: 'spec/support/karma.conf.coffee'
        autoWatch: true
        singleRun: false

    less:
      styles:
        options:
          yuicompress: true
        files:
          "dist/main.css": "styles/**/*.less"

    watch:
      index:
        files: 'index.html'
        tasks: ['copy:index']
      partials:
        files: 'partials/**/*.html'
        tasks: ['copy:partials']
      coffeescripts:
        files: 'coffeescripts/**/*.coffee'
        tasks: ['coffee:src']
      styles:
        files: 'styles/**/*.less'
        tasks: ['less:styles']
      vendor:
        files: 'vendor/**/*'
        tasks: ['copy:vendor']
