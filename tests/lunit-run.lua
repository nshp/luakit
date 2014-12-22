-- Save a reference to the original lua assert function
orig_assert = assert

-- Add ./lunit & ./tests to package.path
package.path = package.path .. ';./lunitx/?.lua;./tests/?.lua'

lunit = require "lunitx"
local stats = lunit.main(uris)
luakit.quit(stats.errors + stats.failed)
