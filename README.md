# Elevator-Controller-using-Verilog


This project implements an Elevator Controller in Verilog, providing a digital solution for controlling the movement of an elevator between different floors. The design is simulated using Aldec Riviera-PRO 2022.04.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [System Architecture](#system-architecture)
- [Simulation](#simulation)
- [RTL](#rtl)
- [Getting Started](#getting-started)

## Introduction

The Elevator Controller using verilog is aimed at providing a digital solution for controlling the movement of an elevator within a building. It uses Verilog hardware description language to model the elevator controller's behavior.

## Features

- Floor request handling
- State-based logic for elevator movement
- Sequential and combinational logic for state transitions
- Simulation of the Elevator Controller using Aldec Riviera-PRO

## System Architecture

The system architecture of the Elevator Controller is based on finite-state machine (FSM) principles. The controller transitions between states such as IDLE, MOVE_UP, and MOVE_DOWN based on floor requests and the current floor.

## Simulation

The project is simulated using Aldec Riviera-PRO 2022.04. Simulation tests are designed to verify the correct behavior of the Elevator Controller under different scenarios, including floor requests and elevator movements.

## Getting Started

To get started with the project, follow these steps:

## RTL
   +-------------------------+
   |                         |
   |      Elevator           |
   |      Controller        |
   |                         |
   +-----+---------------+---+
         |               |
         v               v
   +-----+---------------+---+
   |     State Machine        |
   |                         |
   |                         |
   |                         |
   |                         |
   +-------------------------+
         |               |
         v               v
   +-----+---+      +--------+
   |  FSM    |----->| Logic  |
   |         |<-----| Blocks |
   +---------+      +--------+
         |               |
         v               v
   +-----+---+      +--------+
   |  Next  |<-----|   Output  |
   |  State  |----->| Registers|
   +---------+      +--------+
         |
         v
   +-----+-----+
   |   Inputs  |
   |           |
   +-----------+

 


1. Clone the repository:

   ```bash
   git clone https://github.com/vikrantIIITD2024/Elevator-Controller-using-Verilog.git
   cd Elevator-Controller-using-Verilog
