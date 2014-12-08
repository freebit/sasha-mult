# /*==========================================
# =            Build Scripts Task            =
# ==========================================*/

browserify   = require 'browserify'
watchify     = require 'watchify'
gulp         = require 'gulp'
source       = require 'vinyl-source-stream'
bundleLogger = require '../util/bundleLogger'
handleErrors = require '../util/handleErrors'
vendorConfig = require('../config').build.vendor
clientConfig = require('../config').build.client

gulp.task 'vendorScripts', ['clean'], ->
  bundler = browserify({
    cache: {}, packageCache: {}, fullPaths: true
    basedir: vendorConfig.baseDir
  })
    .require './jquery/dist/jquery', { expose: 'jquery' }
    .require './react/react-with-addons', { expose: 'react' }

  bundle = ->
    bundleLogger.start vendorConfig.outputName

    return bundler
             .bundle()
             .on 'error', handleErrors
             .pipe source(vendorConfig.outputName)
             .pipe gulp.dest(vendorConfig.dest)
             .on 'end', ->
               bundleLogger.end vendorConfig.outputName

  if global.isWatching
    bundler = watchify bundler
    bundler.on 'update', bundle

  return bundle()

gulp.task 'clientScripts', ['clean'], ->
  bundler = browserify({
    cache: {}, packageCache: {}, fullPaths: true
    entries: clientConfig.entries,
    extensions: clientConfig.extensions
  }).external 'jquery'
    .external 'react'

  bundle = ->
    bundleLogger.start clientConfig.outputName

    return bundler
             .bundle()
             .on 'error', handleErrors
             .pipe source(clientConfig.outputName)
             .pipe gulp.dest(clientConfig.dest)
             .on 'end', ->
               bundleLogger.end clientConfig.outputName

  if global.isWatching
    bundler = watchify bundler
    bundler.on 'update', bundle

  return bundle()