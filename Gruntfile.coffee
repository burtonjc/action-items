module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['clean', 'coffee', 'copy']

  grunt.initConfig

    clean: ['dist']

    copy:
      clientPartials:
        cwd: 'partials'
        src: '**/*.html'
        dest: 'dist/partials'
        expand: true
      clientResources:
        cwd: 'resources'
        src: '**/*'
        dest: 'dist/resources'
        expand: true
      clientVendor:
        cwd: 'vendor'
        src: '**/*'
        dest: 'dist/vendor'
        expand: true

    watch:
      src:
        files: 'coffeescripts/**/*.coffee'
        tasks: ['coffee:src']

    coffee:
      src:
        expand: true
        cwd: 'coffeescripts/'
        src: ['**/*.coffee']
        dest: 'dist/javascripts'
        ext: '.js'
