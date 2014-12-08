# /*=================================
# =            Less Task            =
# =================================*/

gulp         = require 'gulp'
less         = require 'gulp-less'
autoprefixer = require 'gulp-autoprefixer'
rename       = require 'gulp-rename'
handleErrors = require '../util/handleErrors'
config       = require('../config').less

gulp.task 'less', ['clean'], ->
  gulp.src config.src
    .pipe less()
    .on 'error', handleErrors
    .pipe autoprefixer('last 10 versions')
    .pipe rename config.outputName
    .pipe gulp.dest config.dest