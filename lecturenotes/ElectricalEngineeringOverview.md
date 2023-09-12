# Electrical Engineering Overview

We are going to do a quick summary of electronic components this week to give you the background to do practical labs. We will not beat these topics to death, but whatever we do in the overview here will help you in your other ECE courses to place each component you study in detail into context. Please look at each link in this document, but you don't have to read the whole article. Just look at the basic statement of what it is, look at the picture so you know what it looks like, and get familiar with the schematic symbol. Your first homework of turning this document into a standalone quick reference guide will also get to know them better.

Here's a class picture of a whole bunch of
[electronic components]
(https://en.wikipedia.org/wiki/Electronic_component)

Please watch the following videos before the next class
[Hydraulic analogy](https://www.youtube.com/watch?v=Lvp_a_JkD2o&list=PLaqfpQcOfMt6K5A2CauGxL5Y75hzld7-D)
This will help you understand the flow of electricity, but realize that the hydraulic analogy is not perfect, electricity flow is not the same as water flow. We will go over the differences in class.

[Electroboom on Capacitors](https://www.youtube.com/watch?v=rbCXKhhzBN0) Let me know if you fully understand this video on how capacitors store charge. Even if you don't at first, he's way more entertaining than me.

[Electroboom on inductors](https://www.youtube.com/watch?v=ySx84Ca7BFQ)
The magic of magnetism. Again, it doesn't matter if you understand everything at first, you will learn something, and have fun.


## Passive components

* [Resistor](https://en.wikipedia.org/wiki/Resistor)
* [Capacitor](https://en.wikipedia.org/wiki/Capacitor)
* [Inductor](https://en.wikipedia.org/wiki/Inductor)
* [Electrolytic Capacitor](https://en.wikipedia.org/wiki/Electrolytic_capacitor)

## Units

* Voltage       V   Volt  V
* Current       I   Amps  A
* Resistance    R   Ohms (&Omega;)
* Capacitance   C   Farads (F)
* Inductance    L   Henry (H)

## Prefixes

* k kilo 1000. In computers $2^{10}=1024$
* M Mega 1 million. In computers $2^{20} = 1024 * 1024$ 
* G  Giga 1 billion. In computers $2^{30} = 1024^3$
* T  Tera 1 trillion. In computers $2^{40} = 1024^4$
* m  milli $10^{-3}$
* &mu; micro $10^{-6}$
* n  nano $10^{-9}$
* p  pico $10^{-12}$

## Important Equations 

* Voltage across a resistor $V=I*R$
* Power dissipated across a resistor $P=IV=I^2*R$
* 

## Components

* [Cell](https://en.wikipedia.org/wiki/Electrochemical_cell) A single chemical cell that reacts to produce electriciy
* [Battery](https://en.wikipedia.org/wiki/Electric_battery) (Multiple cells put together)
* [light](https://en.wikipedia.org/wiki/Incandescent_light_bulb) Edison's lightbulb, a device that puts out a lot of heat and a little (10%) light
* [diode]() one-way valve for electricity
* [LED](https://en.wikipedia.org/wiki/Light-emitting_diode) A diode that, allows electricity to flow in one direction, emitting a single color of light. An amazing device, analogous to a tuning fork. Bang it hard or soft, you always get the same note it's tuned for. Put enough electricity through it and you make it turn white and burn up, analogy smash the turning fork and it turns into crumpled metal.
* [BJT]() Bipolar Junction Transistor. With a small current to the base, controls a larger current from the emitter to the collector. Used to make amplifiers and electronic switches. Today, MOSFETs are better than BJTs in almost all cases, but are still more expensive therefore sometimes BJTs are still used for cost reasons.
* [MOSFET](https://en.wikipedia.org/wiki/MOSFET) Metal Oxide Semiconductor Field Effect Transistor. An electronic switch, apply a voltage to the gate and it turns on, apply zero voltage to the gate and it turns off.
* [photoresistor](https://en.wikipedia.org/wiki/Photoresistor) A device that changes its resistance with the amount of light striking it, used as a light sensor. 
* [photodiode](https://en.wikipedia.org/wiki/Photodiode) A photodiode absorbs light and turns it into current. Think a very small solar cell. Actually any LED can work backward, but this isn't symmetric, LEDs are way better at making light, so if you want to make electricity you design the device very differently.
* [switch](https://en.wikipedia.org/wiki/Switch) A mechanical device to connect and break a circuit. Variants include 
  * [SPDT]()
  * [DPDT]()
  * [SPST]()
  * [momentary switch]()
* [fuse](https://en.wikipedia.org/wiki/Fuse_(electrical)) Another of Edison's inventions, a weak link that burns out whenever too much current flows, therefore breaking the circuit and preventing fires. Fuses are the safest way to prevent circuits from too much current.
* [circuit breaker](https://en.wikipedia.org/wiki/Circuit_breaker) A device that breaks a circuit when too much current flows through it. Not as safe as fuses, but much less annoying because when it trips you go to your basement and reset it, you don't have to replace it.

There are more components that we can leave off for now. Feel free to look them up if you like, but they are more specialized, or for high power situations

##  Hydraulic Analogy

TBD!

## Differences between Electricity and hydraulics

The hydraulic analogy helps us understand electricity classically, but it is limited and can give you some misconceptions. Here are some differences so you can remember that electricity isn't the same as water.

1. When you put water into a pipe under pressure, it all comes out the other end. But when you put electricity in a wire, the electrons don't all move.
   * Only the outer valence electrons are involved
   * Only about 1 in a million of them are involved
   * If more than that are getting energized, you have so much electricity you are melting the copper wire
   * Think of electricity more as energy travelling through the medium of electrons, just like an ocean wave is energy travelling through the medium of water.
   * You can observe a big wave in the pacific move thousands of miles, eventually breaking as it hits Australia. The individual molecules of water move a little bit and hit each other, but the water doesn't move to Australia.
   * At the low level, electrons aren't hitting each other like atoms of water. Modern physics is way more complicated than that, and beyond me. So this is as far as I go with the analogy.

## Series and Parallel

In other courses you will go over this a lot more. Derive the math probably. Here we will just state the rules.

* Resistors in series add
  TBD: schematic here
* Resistors in parallel: $R_{eq}=1/(1/R_1 + 1/R_2)$
* Capacitors are the reverse. Capacitors in parallel add
TBD: schematic here
* Capacitors in series: $C_{eq}=1/(1/C_1 + 1/C_2)$
* Batteries in series add voltages. Analogy: Pump water up 10 feet, have another pump to pump the water up another 10 feet. Net, each parcel of water is 20 feet higher, and when it drops the energy per unit of water is higher.
* Batteries in parallel add current. Analogy: If one pump can put 10 gallons/sec on a fire, then two pumps can put 20 gallons/sec. 

## Energy

We will review the energy in various situations to give you an intuitive feel for what it means. Electricity is invisible, you can't smell it, so it's hard to visualize. Hopefully this helps you.

* A 1 liter bottle of water has a mass of 1kg. Lifting it in earth gravity through 1m takes 10J.
* 60 mph is approximate 30 m/s. A small car is about 1 metric ton, or 1000kg. So a car moving at 30m/s has an energy of $E=1/2mv^2=0.5*1000*30^2=450kJ$. So if you're thinking what is 450kJ like, it's like getting hit by a car at 60mph.
* A discarding sabot tank round might only weigh 10kg, but it moves at 1000m/s, so it has enough energy to punch through a tank's armor and go right out the other side. $E=1/2mv^2=0.5*10*1000^2=5MJ$. So a sabot round is like getting hit by 11 cars on a spot the size of a quarter.
* Capacitors have units in Farads. A Farad is big. A reasonable electrolytic capacitor might be 560&mu;F or $560 x 10^{-6}F$. If it's rated for 200V, it could kill you by stopping your heart, but it's not a lot of energy. It's not going to blow you apart. $E=1/2CV^2 = 0.5*560*10^{-6}*200^2=11.2J$ So about the same amount of energy as lifting that bottle of water 1m.
* On the other hand, a 10F capacitor the size of a bucket sitting quietly in a lab rated for 1000V, that could have an energy of $E=1/2CV^2=0.5*10*1000^2 = 5MJ$. That's like getting hit by the tank shell. Electricity is a very strong force, just get a test drive in a Tesla and you will feel it!
* On a side note, to give you a sense of why nuclear energy is so powerful, think of the charges in the nucleus. They are all positive, repelling each other, and the distances are very very tiny. So the forces are enormous. How is it that the protons in the nucleus of each atom in your body aren't blowing apart? Because they are being held by even stronger forces, the "weak" force and the strong force. Those may only operate at very small distances, but they are stronger. So burning 1kg of coal gives you heat, but if you extracted the uranium and thorium which are 1 or 2 parts per million in that coal and put it in a nuclear reactor, it has more energy than all the coal.
## Electrical Danger

What do you have to know not to kill yourself with electricity? How can electricity harm you? Under what situations are you safe?

1. Watch the Video ["It's not the volts that will kill you, it's the amps."](https://www.youtube.com/watch?v=8xONZcBJh5A&t=3s). It's better if you make sure you know what voltage and current is first.
2. Current goes through the easiest path, so if you are in a [Faraday cage](https://en.wikipedia.org/wiki/Faraday_cage) (like a car) a lightning strike will go around you.
3. Enough electricity through a wire can make it vaporize, so even if it doesn't go through you, the energy in electricity can get you burnt. Or perhaps you have had an encounter with an electric stove?
4. A capacitor is a device to store electrical energy, analogous to a container which can be pressurized. Take a large steel container, or even a tire, and pressurize it until it explodes, and you can be badly hurt. A capacitor is like that, on steroids. We will go into this in class for the safety summary. You will never do this in our lab, but in the future, you could. So you should know that any capacitor could be holding charge and be at rated voltage. So if a capacitor says 200V, even if it's not connected to any electricity, it could still contain enough to potentially kill you, and should always be discharged carefully (and preferably slowly, it can weld metal, see "fun with ultracapacitors"). We will do the math in class, it's impressive how much energy these can have.
5. An inductor is a coil of wire, and when current is passed through it, a magnetic field is created. If you suddenly drop the voltage to zero, all that energy has to come out. The equation is:

$V = L dI/dt$

so if dt is near zero, the voltage can theoretically go to infinity. In practice not infinite, but high and dangerous. So a coil of wire attached to a circuit that pulses (such as a flyback transformer) can be lethal.

With low voltage 6V, you can feel it tickle but it can't hurt you unless electrodes are inside your body. Your skin is the main resistance.

24V starts to really hurt, particularly if your skin is wet and anything over 50V can be lethal though most healthy adults could survive getting shocked with 120V as long as it doesn't go through your heart. Most important is where the current goes. If it goes through your heart it can stop it.

In this course, the maximum we use is 24V from our power supplies. The digital logic is all 5V and can't hurt at all. But you have to treat the lab equipment with respect. We won't be playing with big capacitors or inductors. The warnings about those are mostly so you don't get a false sense of security and think you can safely play with a TV that is unplugged, not realizing that a capacitor inside is charged.

## Chips

We will be using chips containing logic gates in the 74LS series. I will show these in class, you will see them again in recitation, and then you will play with them in lab.

All chips must be powered. That means you put 0V to ground, 5V to Vcc and then the gates work. Each input can be 0 to 5V. The output is 5V.

If you wish to look ahead, see the spec sheet for:

* [74LS04](https://www.futurlec.com/74LS/74LS04.shtml) 6 inverters (NOT gates) in a single 14-pin DIP.
* [74LS08](https://www.futurlec.com/74LS/74LS08.shtml) 4 AND gates.

* [74LS32](https://www.futurlec.com/74LS/74LS32.shtml) 4 OR gates.
