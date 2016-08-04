p = require('gulp-load-plugins')()
path = require 'path'

GLOBAL._ = require 'lodash'

module.exports =
  WatchFileTypes: []

  GulpSrc: (gulp, srcFiles, taskName, srcOptions = {}) ->
    gulp.src srcFiles, srcOptions
    .pipe p.cached taskName
    .pipe p.using {}
    .pipe p.size()


  HandleError: (err) ->
    console.log err
    process.exit 1


  GetConfig: (c) ->
    srcRoot = "src"
    buildRoot = "dist"

    root: c.base
    base: path.join c.base, srcRoot
    buildRoot: buildRoot
    srcRoot: srcRoot
    unittestEntry: path.join buildRoot, 'test', 'unittest', 'index.js'
    systemtestEntry: path.join buildRoot, 'test', 'systemtest', 'index.js'
