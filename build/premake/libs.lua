
--
-- libraries
--

-- adevs library
project "adevs"
   kind "StaticLib"
   files {
      "../../include/adevs/**.h*",
      "../../src/**.cpp"
   }
   targetname "adevs"
   targetdir ("../../lib/")
   includedirs { ADEVS_IncPath }
   -- common release configuration flags and symbols
   filter { "Release" }
      optimize "On"
      -- favor speed over size
      buildoptions { "/Ot" }
      defines { "WIN32", "_LIB", "NDEBUG" }
   -- common debug configuration flags and symbols
   filter { "Debug" }
      targetsuffix "_d"
      symbols "On"
      -- enable compiler intrinsics
      defines { "WIN32", "_LIB", "_DEBUG" }

