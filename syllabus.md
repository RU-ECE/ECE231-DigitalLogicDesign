<a href="www.ece.rutgers.edu">
<img src="assets/RULogo.webp" alt="Rutgers ECE" width="100">
</a>

# ECE-231 Digital Logic Design
* 2024 Fall
* **Instructor:**  [Dov Kruger](https://www.ece.rutgers.edu/Dov-Kruger)
* **[Meeting Times and Office hours](https://bit.ly/3ObwKEr)**
* **[Resources](ref)**
* **[Course Web Address](https://github.com/RU-ECE/ECE231-DigitalLogicDesign)**

## Hardware Requirements

Ideally you will install tools on your laptop, but if you have a problem (Mac?) then all tools are available on lab computers
that can be remotely accessed via web if necessary.

You are expected to use real tools

* DMM, logic probe, Oscilloscope/logic analyzers in the lab
* Verilog (can be installed on your laptop, runs in the lab)
  * Verilog is a language for defining logic circuits and generating large systems on an FPGA (Field Programmable Grid Array)
  * [Icarus iverilog]()
    - [Windows](https://bleyer.org/icarus/)
    - [Instructions for Mac](https://ee.sonoma.edu/resources/computer-hardware-and-software/icarus-and-gtkwave-mac)
  * [Optional: Vivado](https://www.xilinx.com/support/download.html) is the industry leader.
    Their installer is horrible and requires a gigantic amount (60GB-135GB) of disk space. If you can, do it, but it is installed on machines in the computer labs. Everyone using Vivado has the same comment: it's awful, but it's the industry standard, so even though there are alternatives, you should have it and know it. You don't need it for this class though.
* A CAD package
  * [CircuitLab (Rutgers has a license)](https://circuitlab.com)
  * [Fritzing](https://fritzing.org/download/) is extremely easy.
    It is free, but they ask for money on the main site. We will try to have an easy download available for Window/Mac.
    On Ubuntu Linux: sudo apt install fritzing
  * [Eagle](http://eagle.autodesk.com/eagle/software-versions/7) Free but bought by AutoCAD, increasingly money-grubby
  * [KiCAD](https://www.kicad.org/download/)
  * Big Industrial CAD
    * Cadence. Rutgers has a license. Can you get a student license?
    * [Altium](https://www.altium.com/education/student-licenses)

  * We will use icarus verilog in this course to build some circuits for homework that build on your labs. You can build a 4-bit adder, but you cannot build a 64-bit real adder for a computer, you don't have the time or a board big enough. But with verilog, it is far easier allowing you to do more digital logic design than you could do physically.
* [LTSpice](https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html) A tool for analog circuit analysis can also be used to draw circuits, and is something you should have in your toolbox, but is not required.

## COURSE DESCRIPTION

This course covers digital logic design

* Rapid introduction to circuits so you can build them in labs
* Introduction to DLD, logic circuit hardware and software implementation examples.
* Number systems and binary arithmetic.
* Encoding data in bits (ASCII and Unicode text)
* Analysis and synthesis of combinational circuits, Karnaugh maps, timing hazards.
* Encoders, decoders, multiplexers, demultiplexers.
* Arithmetic systems, comparators, adders, multipliers.
* Sequential circuits, latches, flip-flops.
* Registers, shift registers, counters, LFSRs.
* Analysis and synthesis of finite state machines.
* Use of verilog to build larger circuits and test them virtually.

## Course Outcomes

After completion of this course, students will be able to
*  Design simple logic circuits to solve design problems
*  Use industry standard tools (oscilloscopes, Vivado)
*  Look up technical material to solve a problem

## FORMAT AND STRUCTURE
* Lecture include slides and use of a CAD package and Vivado.
* Recitations include hands on problem solving.
* Labs give you hands on hardware practice.

You are encouraged to actively participate.

## COURSE MATERIALS

The textbook is: J. F. Wakerly, Digital Design Principles and Practices, 5th ed., Pearson, ISBN-13: 9780134460093.

* All materials for this course are in the course repository: https://github.com/RU-ECE/ECE231-DigitalLogicDesign
* Reference materials are available in the ref directory under the main repo
* Other Readings: 	Papers will be added to ref directory of repo
* Large binary files can be downloaded from the authors, but in some cases are [cached here](https://rutgersconnect-my.sharepoint.com/:f:/g/personal/dk1261_soe_rutgers_edu/EkMiTNUmwaBEnmkMRVPhw0kBKaDcID4oEwuASp46O2WWZw?e=C1Svcl)

## COURSE REQUIREMENTS
* **Attendance:**	Attendance is crucial for an effective learning. We will collect in-class work to encourage attendance. Without attendance, curving will not be applied. If you get an A without attending, good for you but don't complain if you don't show effort.
* **Homework:** 	Paper assignments, coding in vivado, labs.

## GRADING PROCEDURES
Grades will be based on:
* Homeworks (individual and group)                    (20%)
* Test 1                                              (20%)
* Test 2                                              (20%)
* Final exam                                          (40%)
* In class attendance quizzes may be given for practice (no pressure) but if you do not attend, you can get a zero. Up to 2 in-class work missed will not affect your grade. More will result in your final grade not being curved.
* Missing many in-class work may result in you being asked to come in for a makeup session, which will be graded.

Final Projects are only available to students doing very well who have demonstrated interest in going beyond.
If a final project is not sufficient to replace the final, you may be told to take the final anyway.

[Grading Policies] (https://github.com/RU-ECE/DovKrugerCourses/grading.md)
[Academic Honesty and Discipline] (https://github.com/RU-ECE/DovKrugerCourses/blob/main/integrity.md)

## Policies
If you are absent, please contact the [official school website](https://studentsupport.rutgers.edu/services/absence-and-verification-notices#:~:text=In%20these%20circumstances%2C%20it%20is,not%20%22excuse%22%20missed%20work).

Feel free to drop in for office hours and ask any question.

You can also notify the TA, ask on discord what you missed. 

Please do not email me asking for a private tutorial if you don't attend class. You may always come to office hours and ask questions, that's what office hours are for.
Students who ignore this will receive a warning the first time. Then a negative mark.

## IMPORTANT DATES
* Test 1           ** 2023-10-19 **
* Test 2           ** 2023-11- **
* Final Exam       ** 2023-12-22 **
