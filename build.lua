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

-- No automated tests for this bundle
testfildir = ""

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))
