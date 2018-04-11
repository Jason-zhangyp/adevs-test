
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
-- examples (book_code)
--

-- coffee machine example from chapter 3
project "coffee_machine"
   kind "ConsoleApp"
   targetname "coffee_machine"
   targetdir "../../examples/book_code/coffee_machine"
   debugdir "../../examples/book_code/coffee_machine"
   files {
      "../../examples/book_code/coffee_machine/**.h*",
      "../../examples/book_code/coffee_machine/**.cpp"
   }
   includedirs { ADEVS_IncPath }
   if _ACTION ~= "gmake" then
      defines { "_CONSOLE" }
   end

-- tank
project "tank"
   kind "ConsoleApp"
   targetname "tank"
   targetdir "../../examples/book_code/tank"
   debugdir "../../examples/book_code/tank"
   files {
      "../../examples/book_code/tank/**.h*",
      "../../examples/book_code/tank/TankPhysics.cpp",
      "../../examples/book_code/tank/TankPhysicsEqns.cpp",
      "../../examples/book_code/tank/InterruptHandler.cpp",
      "../../examples/book_code/tank/PacketProcessing.cpp",
      "../../examples/book_code/tank/Computer.cpp",
      "../../examples/book_code/tank/Tank.cpp",
      "../../examples/book_code/tank/main.cpp"
   }
   includedirs { ADEVS_IncPath }
   if _ACTION ~= "gmake" then
      defines { "_CONSOLE" }
   end

