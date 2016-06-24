module.exports = (_gulp, config) ->
  gulp = require('gulp-help') _gulp

  fileTypes = ['coffee']

  for name in fileTypes
    gulp.task name, require("./#{name}")(gulp, config)

  gulp.task 'compile', fileTypes

  gulp.task 'watch', require('../../dev/watch')(gulp, config, fileTypes)
  
  gulp.task 'build', ['compile']
  
  gulp.task 'default', ['build'], ->
    gulp.start 'watch'

  require('./bump')(gulp, config)

  return gulp
