p = require('gulp-load-plugins')()
path = require 'path'

GLOBAL._ = require 'lodash'

module.exports =
  GulpSrc: (gulp, srcFiles, taskName, srcOptions = {}) ->
    gulp.src srcFiles, srcOptions
    .pipe p.cached taskName
    .pipe p.using {}
    .pipe p.size()


  HandleError: (err) ->
    process.exit 1


  GetConfig: (c) ->
    srcRoot = "src"
    buildRoot = "dist"

    root: c.base
    base: path.join c.base, srcRoot
    buildRoot: buildRoot
    srcRoot: srcRoot
