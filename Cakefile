{spawn} = require "child_process"
fs = require 'fs'
path = require 'path'

task "build", "build library", ->
    env = process.env
    files = fs.readdirSync('src').map (f) -> path.join 'src', f
    spawn 'coffee',
        ['--compile', '-o', 'lib/'].concat(files),
        'env': env, 'cwd': process.cwd(), 'stdio': 'inherit'

