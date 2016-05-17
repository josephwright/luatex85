#!/usr/bin/env texlua

-- Build script for "luatex85" files

-- Identify the bundle and module
bundle = ""
module = "luatex85"

-- Ignore ifpdf stuff
sourcefiles =
  {
    "luatex85.dtx",
    "luatex85.ins"
  }
typesetfiles =
  {
    "luatex85.dtx",
  }
versionfiles = typesetfiles

tdsroot = "generic"

-- No automated tests for this bundle
testfildir = ""

function setversion_update_line (line, date, version)
  local date = string.gsub(date, "%-", "/")
  if string.match(line, "^ *%[%d%d%d%d/%d%d/%d%d") then
    line = string.gsub(line, "%d%d%d%d/%d%d/%d%d", date)
    line = string.gsub(line, "v%d%.%d+%w?", "v" .. version)
  end
  return line
end

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))
