# /*=======================================
# =            Browserify task            =
# =======================================*/

# Bundle javascripty things with browserify!

browserify   = require 'browserify'
watchify     = require 'watchify'
bundleLogger = require '../util/bundleLogger'
gulp         = require 'gulp'
handleErrors = require '../util/handleErrors'
source       = require 'vinyl-source-stream'
config       = require('../config').browserify

gulp.task 'browserify', ['clean'], ->
  bundler = browserify({
    cache: {}, packageCache: {}, fullPaths: true
    basedir: config.baseDir
    entries: config.entries
    extensions: config.extensions
  })
    .require './bower_components/jquery/dist/jquery', { expose: 'jquery' }
    .require './bower_components/jq-tube-util/JQTubeUtil', { expose: 'jq-tube-util' }
    .require './bower_components/react/react-with-addons', { expose: 'react' }

  bundle = ->
    # Log when bundling starts
    bundleLogger.start config.outputName

    return bundler
      .bundle()
      # Report compile errors
      .on 'error', handleErrors
      # Use vinyl-source-stream to make the
      # stream gulp compatible. Specifiy the
      # desired output filename here.
      .pipe source(config.outputName)
      # Specify the output destination
      .pipe gulp.dest(config.dest)
      .on 'end', ->
        bundleLogger.end config.outputName

  if global.isWatching
    # Wrap with watchify and rebundle on changes
    bundler = watchify bundler
    # Rebundle on update
    bundler.on 'update', bundle

  return bundle()