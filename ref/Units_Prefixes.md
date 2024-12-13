# SI Units and Prefixes

Systeme International d'Unites
is the modern form of the metric system, used in most of the world.
For Electrical Engineering, the SI system is used to define the units of measurement.

## SI Units

- Length: meter (m)
- Mass: kilogram (kg)
- Time: second (s)
- Electric current: ampere (A)
- Temperature: kelvin (K)
- Amount of substance: mole (mol)
- Luminous intensity: candela (cd)

As an engineer, you should learn all of these, but this review focuses on the electrical ones used in this course

- Capacitance: Farad (F)
- Inductance: Henry (H)
- Resistance: Ohm (Ω)
- Frequency: Hertz (Hz)
- Voltage: Volt (V)
- Power: Watt (W)

## SI Prefixes

- Exa (E): 10^18
- Peta (P): 10^15
- Tera (T): 10^12
- Giga (G): 10^9
- Mega (M): 10^6
- Kilo (k): 10^3
- Milli (m): 10^-3
- Micro (μ): 10^-6
- Nano (n): 10^-9
- Pico (p): 10^-12
- Femto (f): 10^-15
- Atto (a): 10^-18

There are more, but these are the most common ones. And we won't use all of them.

## SI Derived Units

- Electric charge: Coulomb (C)
- Electric potential: Volt (V)
- Electric field: Volt per meter (V/m)
- Electric current: Ampere (A)
- Electric resistance: Ohm (Ω)
- Electric conductance: Siemens (S)
- Electric capacitance: Farad (F)
- Electric inductance: Henry (H)
- Electric power: Watt (W)
- Electric energy: Joule (J)
- Electric charge density: Coulomb per cubic meter (C/m^3)
- Electric current density: Ampere per square meter (A/m^2)

## Memory

- 1 byte = 8 bits
- 1 kilobyte (KB) = 1024 bytes
- 1 megabyte (MB) = 1024 KB
- 1 gigabyte (GB) = 1024 MB
- 1 terabyte (TB) = 1024 GB
- 1 petabyte (PB) = 1024 TB

- 1 kb = 1024 bits
- 1 Mb = 1024 kb
- 1 Gb = 1024 Mb
- 1 Tb = 1024 Gb
- 1 Pb = 1024 Tb

Memory is addressed using binary address lines. Since each line can be either 0 or 1, the total number of unique addresses is 2^n, where n is the number of address lines.

For 8 address lines, there are 2^8 = 256 unique addresses.
For 16 address lines, there are 2^16 = 65536 unique addresses.
For 32 address lines, there are 2^32 = 4294967296 unique addresses.

Even though we have 64-bit processors, because no one can afford all the memory, the processors have a 48-bit address bus.
This is still huge $2^48 = 2^16 * 4G = 262144 gigabytes$

## Frequency and Period

- Frequency: Hertz (Hz)
- Period: second (s)

- 1 Hz = 1 cycle per second
- 1 kHz = 1000 Hz
- 1 MHz = 1000000 Hz
- 1 GHz = 1000000000 Hz

$T = \frac{1}{f}$

Example:

- 1 MHz = 1000000 Hz
- $T = \frac{1}{1000000} = 1 \mu s$

- 2 kHz = 2000 Hz
- $T = \frac{1}{2000} = 0.5ms$

- 2.5 GHz = $2.5x10^9$ Hz
- $T = \frac{1}{2.5x10^9} = 0.4ns$
