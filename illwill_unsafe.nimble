# Package

version       = "0.1.0"
author        = "John Novak <john@johnnovak.net>, Matt Cavalier<matt@cavalier.dev>"
description   = "A fork of John Novak (john@johnnovak.net)'s illwill package that is less safe numbers wise"
license       = "WTFPL"

skipDirs = @["doc", "examples", "img"]

# Dependencies

requires "nim >= 0.20.0"

task examples, "Compiles the examples":
  exec "nim c -d:release examples/boxdrawing.nim"
  exec "nim c -d:release examples/drawtest.nim"
  exec "nim c -d:release examples/fullscreen.nim"
  exec "nim c -d:release examples/keycodes.nim"
  exec "nim c -d:release examples/readmeexample.nim"
  exec "nim c -d:release examples/simplekeycodes.nim"

task examplesDebug, "Compiles the examples (debug mode)":
  exec "nim c examples/boxdrawing.nim"
  exec "nim c examples/drawtest.nim"
  exec "nim c examples/fullscreen.nim"
  exec "nim c examples/keycodes.nim"
  exec "nim c examples/readmeexample.nim"
  exec "nim c examples/simplekeycodes.nim"

task docgen, "Generate HTML documentation":
  exec "nim doc -o:doc/illwill.html illwill"

