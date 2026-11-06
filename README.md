# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names -- Stephen Prescott and Carter Rayborn

## Summary



This lab builds on the concept of latches, specifically focused around the enable part of the latch circuit. In this lab, we

built flip flops, utilizing edge triggering on a clock signal (that wasn't actually a clock signal, but us pressing a button).

This is important because the edge signal triggering the read to memory eliminates noise from the data in. With our last lab,

the entire time "enable" was pressed, the data could be changed. With edge triggering, the only time the data can change is 

when the clock goes from Lo to High (or the opposite for negative triggering). 

## Lab Questions

### What is difference between edge and level sensitive circuits?

Edge sensitive circuits only read when the clock signal changes. In our case, we focused on it changing from 0 to 1, although

it could be set opposite to change when it goes from 1 to 0. Level sensitive circuits can constantly change their data as long

as the enable line is valid. Essentially, level sensitive circuits are relying the enable line to be an on or off switch, 

continuously sending what is coming in until the switch is turned off. Edge sensing circuits will only send 1 packet of data 

per time the enable (or clock) is changed. This means that data is only ever changed at exact moments, across all memory.

### Why is it important to declare initial state?

Declaring the initial state is important because Verilog initializes the flip flop in neither state- if must have an initial

value to then be overwritten once the circuit is being executed. Verilog will think that the state of the flip flop is some 

unknown variable with an unknown state, which will block any user input from setting the state. In reality, it doesn't matter

whether or not the flip flop initializes to 1 or 0, because the whole point of the circuit is to store some input. On 

initialization we haven't input anything, so there's nothing to store. The initial 1 or 0 is simply a placeholder until the

user inputs data.

### What do edge sensitive circuits let us build?

Everything! While in theory level sensitive circuits could work for anything, in reality they would introduce huge amounts of

latency. Any noise in a circuit, a momentary drop or fluctuation of a signal would then propagate throughout the rest of the 

circuit. Since each of the latches in a level sensitive circuit are constantly sampling data (so long as they are enabled), 

synchronization also is more difficult. Slight differences in delays of different parts of the circuit would cause interim 

states throughout the system. With edge triggering, we limit our speed to the lowest common denominator, whatever component 

takes the longest to change states. With that, every component changes states simultaneously, and no interim states exist.

