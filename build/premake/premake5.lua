--
-- If premake command is not supplied an action (target compiler), exit!
--
-- Target of interest:
--     vs2015     (Visual Studio 2015)
--     vs2017     (Visual Studio 2017)
--     gmake      (gcc / clang)
--

-- we must have an ide/compiler specified
if (_ACTION == nil) then
  return
end

--
-- set include and library paths
--
ADEVS_ROOT           = "../.."
ADEVS_IncPath        = ADEVS_ROOT.."/include"
print ("ADEVS Paths:")
print ("  Include   : "..ADEVS_IncPath)

workspace "adevs-test"

   -- destination directory for generated solution/project files
   location ("../" .. _ACTION)

   -- C++ code in all projects
   language "C++"

   --
   -- Build (solution) configuration options:
   --     Release        (Application linked to Multi-threaded DLL)
   --     Debug          (Application linked to Multi-threaded Debug DLL)
   --
   configurations { "Release", "Debug" }

   -- common release configuration flags, symbols and libraries
   filter { "configurations:Release" }
      optimize "On"
      if _ACTION ~= "gmake" then
         -- favor speed over size
         buildoptions { "/Ot" }
         defines { "WIN32", "NDEBUG" }
      end

   -- common debug configuration flags, symbols and libraries
   filter { "configurations:Debug" }
      symbols "On"
      targetsuffix "_d"
      if _ACTION ~= "gmake" then
         defines { "WIN32", "_DEBUG" }
      end

   -- examples
   dofile "examples.lua"

   -- libraries
   dofile "libs.lua"
