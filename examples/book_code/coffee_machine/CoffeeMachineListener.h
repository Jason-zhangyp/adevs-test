#ifndef __CoffeeMachineListener_H__
#define __CoffeeMachineListener_H__

#include "CoffeeMachine.h"

#include <iostream>

class CoffeeMachineListener: public adevs::EventListener<IO_Type>
{
public:
   // Listen for events from a coffee machine
   CoffeeMachineListener(CoffeeMachine* m):m(m){}
   // This is invoked by the simulator when the model produces output
   void outputEvent(adevs::Atomic<IO_Type>* model,
   const IO_Type& value, unsigned int t)
   {
      std::cout << "output @ t = " << t << ", ";
      if (value == NICKEL)        std::cout << "nickel\n";
      else if (value == DIME)     std::cout << "dime\n";
      else if (value == QUARTER)  std::cout << "quarter\n";
      else if (value == COFFEE)   std::cout << "Coffee!\n";
      else                        std::cout << "nothing\n";
   }

   // This is invoked by the simulator when the model changes state
   void stateChange(adevs::Atomic<IO_Type>* model, unsigned int t)
   {
      std::cout << "You have " << m->getCustomerValue()
                << " cents @ t = "
                << t << std::endl;
   }

private:
	CoffeeMachine* m{};
};

#endif
