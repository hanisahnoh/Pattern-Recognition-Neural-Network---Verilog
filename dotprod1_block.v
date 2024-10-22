// -------------------------------------------------------------
// 
// File Name: F:\Users\user\Downloads\fyp_upm-2\fyp_upm\codes_cacamerba\FYP\work\simulink_NN_relu\untitled\dotprod1_block.v
// Created: 2020-08-17 20:06:13
// 
// Generated by MATLAB 9.0 and HDL Coder 3.8
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: dotprod1_block
// Source Path: untitled/Pattern Recognition Neural Network/Layer 2/LW{2,1}/dotprod1
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module dotprod1_block
          (
           In1,
           In2,
           Out1
          );


  input   [63:0] In1;  // double
  input   [63:0] In2;  // double
  output  [63:0] Out1;  // double


  real In1_double;  // double
  real In2_double;  // double
  real Dot_Product_out1;  // double


  always @* In1_double = $bitstoreal(In1);

  always @* In2_double = $bitstoreal(In2);

  // <S13>/Dot Product
  always @* Dot_Product_out1 = In1_double * In2_double;



  assign Out1 = $realtobits(Dot_Product_out1);

endmodule  // dotprod1_block

