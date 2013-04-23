module.exports = (grunt) ->

  grunt.initConfig

    coffee:
      compile:
        # options:
        #   bare: true
        files: [
          'src/FibonacciCoding.js': ['src/FibonacciCoding.coffee'],
          'spec/FibonacciCodingSpec.js': ['spec/FibonacciCodingSpec.coffee']
        ]

    jasmine:
      src: 'src/**/*.js'
      options:
        specs: 'spec/**/*.js'

    watch:
      files: ['src/*.coffee', 'spec/*.coffee']
      tasks: ['test']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jasmine'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'test', ['coffee', 'jasmine']

  grunt.registerTask 'default', ['test']
