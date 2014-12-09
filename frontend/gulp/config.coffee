src  = './app'
dest = '../app/assets'

module.exports = {
  build: {
    vendor: {
      baseDir: './app/bower_components'
      dest: dest + '/js'
      outputName: 'vendor.js'
    }
    client: {
      entries: src + '/scripts/main.coffee'
      dest: dest + '/js'
      outputName: 'client.js'
      extensions: ['.coffee', '.jsx.coffee']
    }
  }

  browserify: {
    baseDir: src
    extensions: ['.coffee', '.jsx.coffee']
    entries: './scripts/main.coffee'
    dest: dest + '/js/'
    outputName: 'bundle.js'
  }

  browserSync: {
    port: 3000
    server: {
      baseDir: [dest, src]
    }
    files: [
      dest + '/**',
      '!' + dest + '/**.map'
    ]
  }

  html: {
    src: src + '/*.html'
    dest: dest
  }

  less: {
    src: src + '/stylesheets/main.less'
    dest: dest + '/stylesheets'
    outputName: 'main.css'
  }

  minifyJS: {
    src:  dest + '/scripts/bundle.js'
    dest: dest + '/javascripts'
    outputName: 'bundle.min.js'
  }

  minifyCSS: {
    src: dest + '/stylesheets/application.css'
    dest: dest + '/stylesheets'
    outputName: 'main.min.css'
  }

  clean: {
    dest: [
      dest + '/js',
      dest + '/stylesheets'
    ]
  }
}