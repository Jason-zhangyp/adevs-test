
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
      "../../examples/checkout_line/**.cpp"
   }
   includedirs { ADEVS_IncPath }
   if _ACTION ~= "gmake" then
      defines { "_CONSOLE" }
   end
