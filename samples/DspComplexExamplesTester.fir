;buildInfoPackage: chisel3, version: 3.0-SNAPSHOT, scalaVersion: 2.11.11, sbtVersion: 0.13.16, builtAtString: 2017-09-16 03:49:13.973, builtAtMillis: 1505533753973
circuit DspComplexExamplesTester : 
  module DspComplexExamples : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : {real : SInt<5>, imag : SInt<5>}, outJ : {real : SInt<5>, imag : SInt<5>}, inByJ : {real : SInt<5>, imag : SInt<5>}, inByJShortcut : {real : SInt<5>, imag : SInt<5>}}
    
    clock is invalid
    reset is invalid
    io is invalid
    wire _T_39 : {real : SInt<1>, imag : SInt<2>} @[DspComplex.scala 30:22]
    _T_39 is invalid @[DspComplex.scala 30:22]
    _T_39.real <= asSInt(UInt<1>("h00")) @[DspComplex.scala 31:17]
    _T_39.imag <= asSInt(UInt<2>("h01")) @[DspComplex.scala 32:17]
    io.outJ.imag <= _T_39.imag @[DspComplexSpec.scala 19:11]
    io.outJ.real <= _T_39.real @[DspComplexSpec.scala 19:11]
    wire _T_49 : {real : SInt<1>, imag : SInt<2>} @[DspComplex.scala 30:22]
    _T_49 is invalid @[DspComplex.scala 30:22]
    _T_49.real <= asSInt(UInt<1>("h00")) @[DspComplex.scala 31:17]
    _T_49.imag <= asSInt(UInt<2>("h01")) @[DspComplex.scala 32:17]
    node _T_50 = add(_T_49.real, _T_49.imag) @[SIntTypeClass.scala 18:40]
    node _T_51 = tail(_T_50, 1) @[SIntTypeClass.scala 18:40]
    node _T_52 = asSInt(_T_51) @[SIntTypeClass.scala 18:40]
    node _T_53 = add(io.in.real, io.in.imag) @[SIntTypeClass.scala 18:40]
    node _T_54 = tail(_T_53, 1) @[SIntTypeClass.scala 18:40]
    node _T_55 = asSInt(_T_54) @[SIntTypeClass.scala 18:40]
    node _T_56 = sub(io.in.imag, io.in.real) @[SIntTypeClass.scala 28:50]
    node _T_57 = tail(_T_56, 1) @[SIntTypeClass.scala 28:50]
    node _T_58 = asSInt(_T_57) @[SIntTypeClass.scala 28:50]
    node _T_59 = mul(io.in.real, _T_52) @[SIntTypeClass.scala 44:41]
    node _T_60 = mul(_T_55, _T_49.imag) @[SIntTypeClass.scala 44:41]
    node _T_61 = mul(_T_58, _T_49.real) @[SIntTypeClass.scala 44:41]
    node _T_62 = sub(_T_59, _T_60) @[SIntTypeClass.scala 28:50]
    node _T_63 = tail(_T_62, 1) @[SIntTypeClass.scala 28:50]
    node _T_64 = asSInt(_T_63) @[SIntTypeClass.scala 28:50]
    node _T_65 = add(_T_59, _T_61) @[SIntTypeClass.scala 18:40]
    node _T_66 = tail(_T_65, 1) @[SIntTypeClass.scala 18:40]
    node _T_67 = asSInt(_T_66) @[SIntTypeClass.scala 18:40]
    wire _T_75 : {real : SInt<7>, imag : SInt<7>} @[DspComplex.scala 30:22]
    _T_75 is invalid @[DspComplex.scala 30:22]
    _T_75.real <= _T_64 @[DspComplex.scala 31:17]
    _T_75.imag <= _T_67 @[DspComplex.scala 32:17]
    io.inByJ.imag <= _T_75.imag @[DspComplexSpec.scala 20:12]
    io.inByJ.real <= _T_75.real @[DspComplexSpec.scala 20:12]
    node _T_77 = sub(asSInt(UInt<1>("h00")), io.in.imag) @[SIntTypeClass.scala 38:5]
    node _T_78 = tail(_T_77, 1) @[SIntTypeClass.scala 38:5]
    node _T_79 = asSInt(_T_78) @[SIntTypeClass.scala 38:5]
    wire _T_87 : {real : SInt<5>, imag : SInt<5>} @[DspComplex.scala 30:22]
    _T_87 is invalid @[DspComplex.scala 30:22]
    _T_87.real <= _T_79 @[DspComplex.scala 31:17]
    _T_87.imag <= io.in.real @[DspComplex.scala 32:17]
    io.inByJShortcut.imag <= _T_87.imag @[DspComplexSpec.scala 21:20]
    io.inByJShortcut.real <= _T_87.real @[DspComplexSpec.scala 21:20]
    
  module DspComplexExamplesTester : 
    input clock : Clock
    input reset : UInt<1>
    output io : {}
    
    clock is invalid
    reset is invalid
    io is invalid
    inst dut of DspComplexExamples @[DspComplexSpec.scala 25:19]
    dut.io is invalid
    dut.clock <= clock
    dut.reset <= reset
    dut.io.in.real <= asSInt(UInt<4>("h07")) @[DspComplexSpec.scala 27:23]
    dut.io.in.imag <= asSInt(UInt<3>("h04")) @[DspComplexSpec.scala 28:18]
    node _T_4 = bits(reset, 0, 0) @[DspComplexSpec.scala 30:9]
    node _T_6 = eq(_T_4, UInt<1>("h00")) @[DspComplexSpec.scala 30:9]
    when _T_6 : @[DspComplexSpec.scala 30:9]
      printf(clock, UInt<1>(1), "inByJ.real: %d\n", dut.io.inByJ.real) @[DspComplexSpec.scala 30:9]
      skip @[DspComplexSpec.scala 30:9]
    node _T_7 = bits(reset, 0, 0) @[DspComplexSpec.scala 31:9]
    node _T_9 = eq(_T_7, UInt<1>("h00")) @[DspComplexSpec.scala 31:9]
    when _T_9 : @[DspComplexSpec.scala 31:9]
      printf(clock, UInt<1>(1), "inByJ.imag: %d\n", dut.io.inByJ.imag) @[DspComplexSpec.scala 31:9]
      skip @[DspComplexSpec.scala 31:9]
    node _T_10 = bits(reset, 0, 0) @[DspComplexSpec.scala 33:9]
    node _T_12 = eq(_T_10, UInt<1>("h00")) @[DspComplexSpec.scala 33:9]
    when _T_12 : @[DspComplexSpec.scala 33:9]
      printf(clock, UInt<1>(1), "inByJShortcut.real: %d\n", dut.io.inByJShortcut.real) @[DspComplexSpec.scala 33:9]
      skip @[DspComplexSpec.scala 33:9]
    node _T_13 = bits(reset, 0, 0) @[DspComplexSpec.scala 34:9]
    node _T_15 = eq(_T_13, UInt<1>("h00")) @[DspComplexSpec.scala 34:9]
    when _T_15 : @[DspComplexSpec.scala 34:9]
      printf(clock, UInt<1>(1), "inByJShortcut.imag: %d\n", dut.io.inByJShortcut.imag) @[DspComplexSpec.scala 34:9]
      skip @[DspComplexSpec.scala 34:9]
    node _T_17 = eq(dut.io.outJ.real, asSInt(UInt<1>("h00"))) @[DspComplexSpec.scala 36:27]
    node _T_18 = bits(reset, 0, 0) @[DspComplexSpec.scala 36:9]
    node _T_19 = or(_T_17, _T_18) @[DspComplexSpec.scala 36:9]
    node _T_21 = eq(_T_19, UInt<1>("h00")) @[DspComplexSpec.scala 36:9]
    when _T_21 : @[DspComplexSpec.scala 36:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at DspComplexSpec.scala:36 assert(dut.io.outJ.real === 0.S)\n") @[DspComplexSpec.scala 36:9]
      stop(clock, UInt<1>(1), 1) @[DspComplexSpec.scala 36:9]
      skip @[DspComplexSpec.scala 36:9]
    node _T_23 = eq(dut.io.outJ.imag, asSInt(UInt<2>("h01"))) @[DspComplexSpec.scala 37:27]
    node _T_24 = bits(reset, 0, 0) @[DspComplexSpec.scala 37:9]
    node _T_25 = or(_T_23, _T_24) @[DspComplexSpec.scala 37:9]
    node _T_27 = eq(_T_25, UInt<1>("h00")) @[DspComplexSpec.scala 37:9]
    when _T_27 : @[DspComplexSpec.scala 37:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at DspComplexSpec.scala:37 assert(dut.io.outJ.imag === 1.S)\n") @[DspComplexSpec.scala 37:9]
      stop(clock, UInt<1>(1), 1) @[DspComplexSpec.scala 37:9]
      skip @[DspComplexSpec.scala 37:9]
    node _T_29 = eq(dut.io.inByJ.real, asSInt(UInt<4>("h04"))) @[DspComplexSpec.scala 39:28]
    node _T_30 = bits(reset, 0, 0) @[DspComplexSpec.scala 39:9]
    node _T_31 = or(_T_29, _T_30) @[DspComplexSpec.scala 39:9]
    node _T_33 = eq(_T_31, UInt<1>("h00")) @[DspComplexSpec.scala 39:9]
    when _T_33 : @[DspComplexSpec.scala 39:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at DspComplexSpec.scala:39 assert(dut.io.inByJ.real === 4.S)\n") @[DspComplexSpec.scala 39:9]
      stop(clock, UInt<1>(1), 1) @[DspComplexSpec.scala 39:9]
      skip @[DspComplexSpec.scala 39:9]
    node _T_35 = eq(dut.io.inByJ.imag, asSInt(UInt<4>("h07"))) @[DspComplexSpec.scala 40:28]
    node _T_36 = bits(reset, 0, 0) @[DspComplexSpec.scala 40:9]
    node _T_37 = or(_T_35, _T_36) @[DspComplexSpec.scala 40:9]
    node _T_39 = eq(_T_37, UInt<1>("h00")) @[DspComplexSpec.scala 40:9]
    when _T_39 : @[DspComplexSpec.scala 40:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at DspComplexSpec.scala:40 assert(dut.io.inByJ.imag === 7.S)\n") @[DspComplexSpec.scala 40:9]
      stop(clock, UInt<1>(1), 1) @[DspComplexSpec.scala 40:9]
      skip @[DspComplexSpec.scala 40:9]
    node _T_41 = eq(dut.io.inByJShortcut.real, asSInt(UInt<4>("h04"))) @[DspComplexSpec.scala 42:36]
    node _T_42 = bits(reset, 0, 0) @[DspComplexSpec.scala 42:9]
    node _T_43 = or(_T_41, _T_42) @[DspComplexSpec.scala 42:9]
    node _T_45 = eq(_T_43, UInt<1>("h00")) @[DspComplexSpec.scala 42:9]
    when _T_45 : @[DspComplexSpec.scala 42:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at DspComplexSpec.scala:42 assert(dut.io.inByJShortcut.real === 4.S)\n") @[DspComplexSpec.scala 42:9]
      stop(clock, UInt<1>(1), 1) @[DspComplexSpec.scala 42:9]
      skip @[DspComplexSpec.scala 42:9]
    node _T_47 = eq(dut.io.inByJShortcut.imag, asSInt(UInt<4>("h07"))) @[DspComplexSpec.scala 43:36]
    node _T_48 = bits(reset, 0, 0) @[DspComplexSpec.scala 43:9]
    node _T_49 = or(_T_47, _T_48) @[DspComplexSpec.scala 43:9]
    node _T_51 = eq(_T_49, UInt<1>("h00")) @[DspComplexSpec.scala 43:9]
    when _T_51 : @[DspComplexSpec.scala 43:9]
      printf(clock, UInt<1>(1), "Assertion failed\n    at DspComplexSpec.scala:43 assert(dut.io.inByJShortcut.imag === 7.S)\n") @[DspComplexSpec.scala 43:9]
      stop(clock, UInt<1>(1), 1) @[DspComplexSpec.scala 43:9]
      skip @[DspComplexSpec.scala 43:9]
    node _T_52 = bits(reset, 0, 0) @[DspComplexSpec.scala 45:7]
    node _T_54 = eq(_T_52, UInt<1>("h00")) @[DspComplexSpec.scala 45:7]
    when _T_54 : @[DspComplexSpec.scala 45:7]
      stop(clock, UInt<1>(1), 0) @[DspComplexSpec.scala 45:7]
      skip @[DspComplexSpec.scala 45:7]
    
