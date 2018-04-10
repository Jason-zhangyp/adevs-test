
--
-- examples
--

-- checkout line
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

--
-- examples (book-code)
--

-- tank
project "tank"
   kind "ConsoleApp"
   targetname "tank"
   targetdir "../../examples/book-code/tank"
   debugdir "../../examples/book-code/tank"
   files {
      "../../examples/book-code/tank/**.h*",
      "../../examples/book-code/tank/TankPhysics.cpp",
      "../../examples/book-code/tank/TankPhysicsEqns.cpp",
      "../../examples/book-code/tank/InterruptHandler.cpp",
      "../../examples/book-code/tank/PacketProcessing.cpp",
      "../../examples/book-code/tank/Computer.cpp",
      "../../examples/book-code/tank/Tank.cpp",
      "../../examples/book-code/tank/main.cpp"
   }
   includedirs { ADEVS_IncPath }
   if _ACTION ~= "gmake" then
      defines { "_CONSOLE" }
   end
