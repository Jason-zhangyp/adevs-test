
--
-- examples
--

-- checkout lineSimple cockpit
project "checkout_line"
   kind "ConsoleApp"
   targetname "checkout_line"
   targetdir "../../examples/checkout_line"
   debugdir "../../examples/checkout_line"
   files {
      "../../examples/checkout_line/**.h*",
      "../../examples/checkout_line/**.cpp",
      "../../examples/checkout_line/**.epp",
      "../../examples/checkout_line/**.edl"
   }
   includedirs { ADEVS_IncPath }
   defines { "_CONSOLE" }

