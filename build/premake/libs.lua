
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
