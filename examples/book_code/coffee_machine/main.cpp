
#include "CoffeeMachine.h"
#include "CoffeeMachineListener.h"

#include <iostream>

using namespace std;

int main()
{
   // create the model
   CoffeeMachine* m = new CoffeeMachine();
   // create the simulator and register a listener to report model changes
   CoffeeMachineListener* l = new CoffeeMachineListener(m);
   adevs::Simulator<IO_Type>* sim = new adevs::Simulator<IO_Type>(m);
   sim->addEventListener(l);
   // look for input and apply it to the simulator
   while (true) {
      // get a command from the user
      string command;
      adevs::Bag<IO_Type> input;
//      cout << sim->getTime() << " > ";
      cin >> command;
      // Is it time to stop?
      if (command == "quit") break;
      // Otherwise process the input string
      for (int i = 0; i < command.length(); i++) {
         if (command[i] == 'q')      input.insert(QUARTER);
         else if (command[i] == 'd') input.insert(DIME);
         else if (command[i] == 'n') input.insert(NICKEL);
         else if (command[i] == 'c') input.insert(CANCEL);
         else if (command[i] == 'w') input.insert(WAIT);
      }
      // Apply the input to the model. This invokes the listener’s
      // callback methods
//      sim->computeNextState(input);
   }
   // Report final profit
   cout << m->getInventoryValue() << " cents in the inventory\n";
   // Clean up and exit
   delete sim;
   delete l;
   delete m;
   return 0;
}

