watch = require 'gulp-debounced-watch'
common = require '../src/gulp/common'

module.exports = (gulp, c, fileTypes) ->
  config = common.GetConfig c

  return ->
    _.forEach fileTypes, (type) ->
      watch ["#{config.srcRoot}/**/*.#{type}"], {debounceTimeout: 1000}, ->
        gulp.start 'build'
