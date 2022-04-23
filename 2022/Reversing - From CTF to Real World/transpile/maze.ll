; ModuleID = 'maze.aarch64.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-pc-linux-gnu-elf"

%struct.State = type { %struct.ArchState, %struct.SIMD, i64, %struct.GPR, i64, %union.anon, %union.anon, %union.anon, i64, %struct.SR, i64 }
%struct.ArchState = type { i32, i32, %union.anon }
%struct.SIMD = type { [32 x %union.vec128_t] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%union.anon = type { i64 }
%struct.SR = type { i64, %struct.Reg, i64, %struct.Reg, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8] }
%seg_400000_LOAD_530_type = type <{ [8 x i8], [8 x i8], [8 x i8], i8*, [4 x i8], [4 x i8], [4 x i8], [8 x i8], [24 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], i8*, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], i8*, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [40 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], i8*, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [80 x i8], [4 x i8], [8 x i8], [4 x i8], [12 x i8], [44 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [8 x i8], [16 x i8], [96 x i8], [4 x i8], [32 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [4 x i8], [4 x i8], [8 x i8], [8 x i8], [24 x i8], [8 x i8], [176 x i8], [1476 x i8], [20 x i8], [4 x i8], [20 x i8], [68 x i8], [4 x i8], [68 x i8], [4 x i8], [28 x i8], [4 x i8], [44 x i8], [4 x i8], [12 x i8], [4 x i8], [8 x i8], [8 x i8], [32 x i8], [16 x i8], [36 x i8], [4 x i8], [8 x i8], [1 x i8], [3 x i8], [76 x i8], [4 x i8], [4 x i8], [28 x i8], [4 x i8], [16 x i8], [4 x i8], [32 x i8], [4 x i8], [16 x i8], [8 x i8], [28 x i8], [4 x i8], [100 x i8], [8 x i8] }>
%seg_411df8__init_array_10_type = type <{ [3576 x i8], i8*, i8*, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [12 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [100 x i8], [4 x i8], [4 x i8], i8*, [24 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [16 x i8], [77 x i8], [3 x i8], [1 x i8] }>
%struct.Memory = type opaque

@__mcsema_reg_state = thread_local(initialexec) global %struct.State zeroinitializer
@seg_400000_LOAD_530 = internal constant %seg_400000_LOAD_530_type <{ [8 x i8] c"\7FELF\02\01\01\00", [8 x i8] zeroinitializer, [8 x i8] c"\02\00\B7\00\01\00\00\00", i8* bitcast (void ()* @_start to i8*), [4 x i8] c"@\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\E0.\00\00", [8 x i8] zeroinitializer, [24 x i8] c"@\008\00\09\00@\00\1D\00\1C\00\06\00\00\00\04\00\00\00@\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"@\00@\00", [4 x i8] zeroinitializer, [4 x i8] c"@\00@\00", [4 x i8] zeroinitializer, [4 x i8] c"\F8\01\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\F8\01\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\03\00\00\00\04\00\00\008\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"8\02@\00", [4 x i8] zeroinitializer, [4 x i8] c"8\02@\00", [4 x i8] zeroinitializer, [4 x i8] c"\1B\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\1B\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] zeroinitializer, [8 x i8] c"\01\00\00\00\05\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"\00\00@\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\00@\00", [4 x i8] zeroinitializer, [4 x i8] c"\A4\0E\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\A4\0E\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\00\01\00", [4 x i8] zeroinitializer, [12 x i8] c"\01\00\00\00\06\00\00\00\F8\1D\00\00", [4 x i8] zeroinitializer, i8* bitcast (i8** @data_411df8 to i8*), [4 x i8] c"\F8\1DA\00", [4 x i8] zeroinitializer, [4 x i8] c"\AD\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\B0\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\00\01\00", [4 x i8] zeroinitializer, [12 x i8] c"\02\00\00\00\06\00\00\00\08\1E\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\1EA\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\1EA\00", [4 x i8] zeroinitializer, [4 x i8] c"\D0\01\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\D0\01\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\04\00\00\00\04\00\00\00T\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"T\02@\00", [4 x i8] zeroinitializer, [4 x i8] c"T\02@\00", [4 x i8] zeroinitializer, [4 x i8] c"D\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"D\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\04\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"P\E5td\04\00\00\00T\0D\00\00", [4 x i8] zeroinitializer, i8* @data_400d54, [4 x i8] c"T\0D@\00", [4 x i8] zeroinitializer, [4 x i8] c"L\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"L\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\04\00\00\00", [4 x i8] zeroinitializer, [8 x i8] c"Q\E5td\06\00\00\00", [40 x i8] zeroinitializer, [4 x i8] c"\10\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"R\E5td\04\00\00\00\F8\1D\00\00", [4 x i8] zeroinitializer, i8* bitcast (i8** @data_411df8 to i8*), [4 x i8] c"\F8\1DA\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\02\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] zeroinitializer, [80 x i8] c"/lib/ld-linux-aarch64.so.1\00\00\04\00\00\00\14\00\00\00\03\00\00\00GNU\00C|\11\13\B9/\CF\8Cb_-S\E3b\92\05\C7\D9\09\A0\04\00\00\00\10\00\00\00\01\00\00\00GNU\00", [4 x i8] zeroinitializer, [8 x i8] c"\03\00\00\00\07\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\01\00\00\00\01\00\00\00\01\00\00\00", [44 x i8] zeroinitializer, [8 x i8] c"\01\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"+\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"%\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"R\00\00\00 \00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"\13\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"\06\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c" \00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"\19\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [8 x i8] c"\0B\00\00\00\12\00\00\00", [16 x i8] zeroinitializer, [96 x i8] c"\00exit\00puts\00putchar\00abort\00printf\00read\00sleep\00__libc_start_main\00libc.so.6\00GLIBC_2.17\00__gmon_start__", [4 x i8] zeroinitializer, [32 x i8] c"\02\00\02\00\02\00\00\00\02\00\02\00\02\00\02\00\02\00\00\00\01\00\01\00=\00\00\00\10\00\00\00", [4 x i8] zeroinitializer, [12 x i8] c"\97\91\96\06\00\00\02\00G\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\E0\1FA\00", [4 x i8] zeroinitializer, [8 x i8] c"\01\04\00\00\04\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"\00 A\00", [4 x i8] zeroinitializer, [8 x i8] c"\02\04\00\00\01\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"\08 A\00", [4 x i8] zeroinitializer, [8 x i8] c"\02\04\00\00\02\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"\10 A\00", [4 x i8] zeroinitializer, [8 x i8] c"\02\04\00\00\03\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"\18 A\00", [4 x i8] zeroinitializer, [8 x i8] c"\02\04\00\00\04\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"  A\00", [4 x i8] zeroinitializer, [8 x i8] c"\02\04\00\00\05\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"( A\00", [4 x i8] zeroinitializer, [8 x i8] c"\02\04\00\00\06\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"0 A\00", [4 x i8] zeroinitializer, [8 x i8] c"\02\04\00\00\07\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"8 A\00", [4 x i8] zeroinitializer, [8 x i8] c"\02\04\00\00\08\00\00\00", [8 x i8] zeroinitializer, [4 x i8] c"@ A\00", [4 x i8] zeroinitializer, [8 x i8] c"\02\04\00\00\09\00\00\00", [8 x i8] zeroinitializer, [24 x i8] c"_$\03\D5\FD{\BF\A9\FD\03\00\91F\00\00\94\FD{\C1\A8\C0\03_\D6", [8 x i8] zeroinitializer, [176 x i8] c"\F0{\BF\A9\90\00\00\B0\11\FEG\F9\10\E2?\91 \02\1F\D6\1F \03\D5\1F \03\D5\1F \03\D5\90\00\00\D0\11\02@\F9\10\02\00\91 \02\1F\D6\90\00\00\D0\11\06@\F9\10\22\00\91 \02\1F\D6\90\00\00\D0\11\0A@\F9\10B\00\91 \02\1F\D6\90\00\00\D0\11\0E@\F9\10b\00\91 \02\1F\D6\90\00\00\D0\11\12@\F9\10\82\00\91 \02\1F\D6\90\00\00\D0\11\16@\F9\10\A2\00\91 \02\1F\D6\90\00\00\D0\11\1A@\F9\10\C2\00\91 \02\1F\D6\90\00\00\D0\11\1E@\F9\10\E2\00\91 \02\1F\D6\90\00\00\D0\11\22@\F9\10\02\01\91 \02\1F\D6", [1476 x i8] c"_$\03\D5\1D\00\80\D2\1E\00\80\D2\E5\03\00\AA\E1\03@\F9\E2#\00\91\E6\03\00\91\00\00\E0\D2\00\00\C0\F2\00\08\A0\F2\80\F5\80\F2\03\00\E0\D2\03\00\C0\F2\03\08\A0\F2\03h\81\F2\04\00\E0\D2\04\00\C0\F2\04\08\A0\F2\04x\81\F2\CD\FF\FF\97\D8\FF\FF\97\80\00\00\B0\00\F0G\F9@\00\00\B4\D0\FF\FF\17\C0\03_\D6\1F \03\D5\1F \03\D5\80\00\00\D0\00\A0\02\91\81\00\00\D0!\A0\02\91?\00\00\EB\C0\00\00T\01\00\00\90!\F0E\F9a\00\00\B4\F0\03\01\AA\00\02\1F\D6\C0\03_\D6\80\00\00\D0\00\A0\02\91\81\00\00\D0!\A0\02\91!\00\00\CB\22\FC\7F\D3A\0C\81\8B!\FCA\93\C1\00\00\B4\02\00\00\90B\F4E\F9b\00\00\B4\F0\03\02\AA\00\02\1F\D6\C0\03_\D6\1F \03\D5\FD{\BE\A9\FD\03\00\91\F3\0B\00\F9\93\00\00\D0`\96B9\80\00\005\DE\FF\FF\97 \00\80R`\96\029\F3\0B@\F9\FD{\C2\A8\C0\03_\D6\E4\FF\FF\17\FD{\BE\A9\FD\03\00\91\FF\1F\00\B9\1B\00\00\14\FF\1B\00\B9\11\00\00\14\80\00\00\D0\03`\01\91\E2\1B\80\B9\E1\1F\80\B9\E0\03\01\AA\00\F8\7F\D3\00\00\01\8B\00\F4~\D3\00\00\01\CB`\00\00\8B\00\00\02\8B\00\00@9\A5\FF\FF\97\E0\1B@\B9\00\04\00\11\E0\1B\00\B9\E0\1B@\B9\1F(\00q\CD\FD\FFT@\01\80R\9D\FF\FF\97\E0\1F@\B9\00\04\00\11\E0\1F\00\B9\E0\1F@\B9\1F\18\00q\8D\FC\FFT@\01\80R\95\FF\FF\97\1F \03\D5\FD{\C2\A8\C0\03_\D6\FD{\BB\A9\FD\03\00\91\E0\1F\00\B9\E1\0B\00\F9\FFG\00\B9 \00\80R\E0O\00\B9 \00\80R\E0K\00\B9\80\00\00\D0\03`\01\91\E2O\80\B9\E1K\80\B9\E0\03\01\AA\00\F8\7F\D3\00\00\01\8B\00\F4~\D3\00\00\01\CB`\00\00\8B\00\00\02\8B\01\0B\80R\01\00\009\E2\00\80Ra\01\80R\00\00\00\90\00\C0/\91s\FF\FF\97\E2K@\B9\E1O@\B9\00\00\00\90\00 0\91n\FF\FF\97\E1G@\B9\00\00\00\90\00\800\91j\FF\FF\97\00\00\00\90\00\E00\91_\FF\FF\97\00\00\00\90\00\002\91\5C\FF\FF\97\B0\FF\FF\97\E0\83\00\91\82\03\80\D2\E1\03\00\AA\00\00\80RZ\FF\FF\97\A9\00\00\14\E0O@\B9\E0C\00\B9\E0K@\B9\E0?\00\B9\E0G\80\B9\E1\83\00\91 h`8\1F\DC\01q\80\01\00T\1F\DC\01qL\03\00T\1F\CC\01q\80\01\00T\1F\CC\01q\CC\02\00T\1F\84\01q\80\01\00T\1F\90\01q\C0\01\00T\11\00\00\14\E0K@\B9\00\04\00Q\E0K\00\B9\15\00\00\14\E0K@\B9\00\04\00\11\E0K\00\B9\11\00\00\14\E0O@\B9\00\04\00Q\E0O\00\B9\0D\00\00\14\E0O@\B9\00\04\00\11\E0O\00\B9\09\00\00\14\00\00\00\90\00\802\91.\FF\FF\97\00\00\00\90\00@3\91+\FF\FF\97 \00\80R\15\FF\FF\97\80\00\00\D0\03`\01\91\E2O\80\B9\E1K\80\B9\E0\03\01\AA\00\F8\7F\D3\00\00\01\8B\00\F4~\D3\00\00\01\CB`\00\00\8B\00\00\02\8B\00\00@9\1F\8C\00qa\01\00T\00\00\00\90\00\803\91\18\FF\FF\97\E0\83\00\91\E1\03\00\AA\00\00\00\90\00\C03\91\1B\FF\FF\97\00\00\80R\FD\FE\FF\97\80\00\00\D0\03`\01\91\E2O\80\B9\E1K\80\B9\E0\03\01\AA\00\F8\7F\D3\00\00\01\8B\00\F4~\D3\00\00\01\CB`\00\00\8B\00\00\02\8B\00\00@9\1F\80\00q\80\03\00T\E0K@\B9\1F\08\00q\A1\02\00T\80\00\00\D0\03`\01\91\E2O\80\B9\E1K\80\B9\E0\03\01\AA\00\F8\7F\D3\00\00\01\8B\00\F4~\D3\00\00\01\CB`\00\00\8B\00\00\02\8B\00\00@9\1F\F0\01q\E1\00\00T\E0O@\B9\1F\00\00q\8D\00\00T\E0O@\B9\1F(\00q\AD\00\00T\E0C@\B9\E0O\00\B9\E0?@\B9\E0K\00\B9\E2K@\B9\E1O@\B9\00\00\00\90\00 0\91\EB\FE\FF\97\E0G\80\B9\E1\83\00\91 h`8\E2\03\00*\E1C@\B9\E0O@\B9?\00\00k\01\01\00T\E1?@\B9\E0K@\B9?\00\00k\81\00\00T\00\00\00\90\00 4\91\03\00\00\14\00\00\00\90\00`4\91\E3\03\00\AA\E1G@\B9\00\00\00\90\00\804\91\D5\FE\FF\97\E1C@\B9\E0O@\B9?\00\00kA\01\00T\E1?@\B9\E0K@\B9?\00\00k\C1\00\00T\00\00\00\90\00 5\91\C2\FE\FF\97 \00\80R\AC\FE\FF\97\80\00\00\D0\03`\01\91\E2O\80\B9\E1K\80\B9\E0\03\01\AA\00\F8\7F\D3\00\00\01\8B\00\F4~\D3\00\00\01\CB`\00\00\8B\00\00\02\8B\01\0B\80R\01\00\009\07\FF\FF\97\E0G@\B9\00\04\00\11\E0G\00\B9 \00\80R\A1\FE\FF\97\E0G@\B9\1Fl\00q\CD\EA\FFT\00\00\00\90\00 5\91\A7\FE\FF\97 \00\80R\FD{\C5\A8\C0\03_\D6\1F \03\D5\1F \03\D5\1F \03\D5\FD{\BC\A9\FD\03\00\91\F3S\01\A9\94\00\00\B0\94\028\91\F5[\02\A9\95\00\00\B0\B5\E27\91\94\02\15\CB\F6\03\00*\F7c\03\A9\F7\03\01\AA\F8\03\02\AA\94\FEC\93n\FE\FF\97t\01\00\B4\13\00\80\D2\1F \03\D5\A3zs\F8\E2\03\18\AAs\06\00\91\E1\03\17\AA\E0\03\16*`\00?\D6\9F\02\13\EB!\FF\FFT\F3SA\A9\F5[B\A9\F7cC\A9\FD{\C4\A8\C0\03_\D6\1F \03\D5\C0\03_\D6", [20 x i8] c"_$\03\D5\FD{\BF\A9\FD\03\00\91\FD{\C1\A8\C0\03_\D6", [4 x i8] c"\01\00\02\00", [20 x i8] zeroinitializer, [68 x i8] c"Maze dimensions: %dx%d\0A\00Player position: %dx%d\0A\00Iteration no. %d\0A\00\00\00", [4 x i8] zeroinitializer, [68 x i8] c"Program the player moves with a sequence of 'w', 's', 'a' and 'd'\00\00\00", [4 x i8] zeroinitializer, [28 x i8] c"Try to reach the price(#)!\00\00", [4 x i8] zeroinitializer, [44 x i8] c"Wrong command, only w,s,a,d are accepted!)\00\00", [4 x i8] zeroinitializer, [12 x i8] c"You lose!\00\00\00", [4 x i8] zeroinitializer, [8 x i8] c"You win!", [8 x i8] zeroinitializer, [32 x i8] c"Your solution <%42s>\0A\00\00\00Blocked!", [16 x i8] zeroinitializer, [36 x i8] c"Iteration no. %d. Action: %c. %s\0A\00\00\00", [4 x i8] zeroinitializer, [8 x i8] c"You lose", [1 x i8] zeroinitializer, [3 x i8] zeroinitializer, [76 x i8] c"\01\1B\03;H\00\00\00\08\00\00\00\1C\F9\FF\FF`\00\00\00L\F9\FF\FFt\00\00\00\8C\F9\FF\FF\88\00\00\00\BC\F9\FF\FF\AC\00\00\00\C0\F9\FF\FF\C4\00\00\00X\FA\FF\FF\E4\00\00\00\EC\FD\FF\FF\04\01\00\00l\FE\FF\FF8\01\00\00", [4 x i8] c"\10\00\00\00", [4 x i8] zeroinitializer, [28 x i8] c"\01zR\00\04x\1E\01\1B\0C\1F\00\10\00\00\00\18\00\00\00\B4\F8\FF\FF0\00\00\00", [4 x i8] zeroinitializer, [16 x i8] c"\10\00\00\00,\00\00\00\D0\F8\FF\FF<\00\00\00", [4 x i8] zeroinitializer, [32 x i8] c" \00\00\00@\00\00\00\FC\F8\FF\FF0\00\00\00\00A\0E \9D\04\9E\03B\93\02H\DE\DD\D3\0E", [4 x i8] zeroinitializer, [16 x i8] c"\14\00\00\00d\00\00\00\08\F9\FF\FF\04\00\00\00", [8 x i8] zeroinitializer, [28 x i8] c"\1C\00\00\00|\00\00\00\F4\F8\FF\FF\98\00\00\00\00A\0E \9D\04\9E\03d\DE\DD\0E", [4 x i8] zeroinitializer, [100 x i8] c"\1C\00\00\00\9C\00\00\00l\F9\FF\FF\88\03\00\00\00A\0EP\9D\0A\9E\09\02\E0\DE\DD\0E\00\00\000\00\00\00\BC\00\00\00\E0\FC\FF\FF|\00\00\00\00A\0E@\9D\08\9E\07B\93\06\94\05C\95\04\96\03E\97\02\98\01S\DE\DD\D7\D8\D5\D6\D3\D4\0E\00\00\00\10\00\00\00\F0\00\00\00,\FD\FF\FF\04\00\00\00", [8 x i8] zeroinitializer }>, align 4194304
@__mcsema_stack = internal thread_local(initialexec) global [1048576 x i8] zeroinitializer
@__mcsema_tls = internal thread_local(initialexec) global [2048 x i64] zeroinitializer
@0 = internal global i1 false
@seg_411df8__init_array_10 = internal global %seg_411df8__init_array_10_type <{ [3576 x i8] zeroinitializer, i8* bitcast (void ()* @frame_dummy to i8*), i8* bitcast (void ()* @__do_global_dtors_aux to i8*), [4 x i8] c"\01\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"=\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\0C\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"0\05@\00", [4 x i8] zeroinitializer, [4 x i8] c"\0D\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\C4\0B@\00", [4 x i8] zeroinitializer, [4 x i8] c"\19\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\F8\1DA\00", [4 x i8] zeroinitializer, [4 x i8] c"\1B\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\1A\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\00\1EA\00", [4 x i8] zeroinitializer, [4 x i8] c"\1C\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\F5\FE\FFo", [4 x i8] zeroinitializer, [4 x i8] c"\98\02@\00", [4 x i8] zeroinitializer, [4 x i8] c"\05\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\A8\03@\00", [4 x i8] zeroinitializer, [4 x i8] c"\06\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\B8\02@\00", [4 x i8] zeroinitializer, [4 x i8] c"\0A\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"a\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\0B\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\18\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\15\00\00\00", [12 x i8] zeroinitializer, [4 x i8] c"\03\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\E8\1FA\00", [4 x i8] zeroinitializer, [4 x i8] c"\02\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\D8\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\14\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\07\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\17\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"X\04@\00", [4 x i8] zeroinitializer, [4 x i8] c"\07\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"@\04@\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\18\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\09\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\18\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\FE\FF\FFo", [4 x i8] zeroinitializer, [4 x i8] c" \04@\00", [4 x i8] zeroinitializer, [4 x i8] c"\FF\FF\FFo", [4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] zeroinitializer, [4 x i8] c"\F0\FF\FFo", [4 x i8] zeroinitializer, [4 x i8] c"\0A\04@\00", [100 x i8] zeroinitializer, [4 x i8] c"\08\1EA\00", [4 x i8] zeroinitializer, i8* bitcast (void ()* @__gmon_start__ to i8*), [24 x i8] zeroinitializer, i8* bitcast (void (i32)* @exit to i8*), i8* bitcast (void (i32 (i32, i8**, i8**)*, i32, i8**, i8*, i32 (i32, i8**, i8**)*, void ()*, void ()*, i32*)* @__libc_start_main to i8*), i8* bitcast (i64 (i64)* @sleep to i8*), i8* bitcast (void ()* @__gmon_start__ to i8*), i8* bitcast (void ()* @abort to i8*), i8* bitcast (i64 (i64)* @puts to i8*), i8* bitcast (i64 (i64, i64, i64)* @read to i8*), i8* bitcast (i32 (i8*, ...)* @printf to i8*), i8* bitcast (i64 (i64)* @putchar to i8*), [16 x i8] zeroinitializer, [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+", [3 x i8] zeroinitializer, [1 x i8] zeroinitializer }>, align 4096
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

@data_400aa0 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 1184)
@data_400a74 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 1140)
@data_400a58 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 1112)
@data_400704 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 260)
@data_4006f8 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 248)
@data_40076c = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 364)
@data_40078c = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 396)
@data_400ba8 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 1448)
@data_400b80 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 1408)
@data_400b10 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 1296)
@data_400ac4 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 1220)
@data_400980 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 896)
@data_400978 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 888)
@data_400920 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 800)
@data_400918 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 792)
@data_40086c = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 620)
@data_400858 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 600)
@data_400854 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 596)
@data_400848 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 584)
@data_40083c = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 572)
@data_40082c = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 556)
@data_400818 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 536)
@data_400540 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 175, i32 16)
@data_400650 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 80)
@data_40069c = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 156)
@data_4006dc = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 220)
@data_400b7c = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 1404)
@data_400b88 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 178, i32 1416)
@data_400be0 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 181, i32 4)
@data_400be8 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 181, i32 12)
@data_4120a5 = internal alias i8, getelementptr inbounds (%seg_411df8__init_array_10_type, %seg_411df8__init_array_10_type* @seg_411df8__init_array_10, i32 0, i32 108, i32 0)
@data_412058 = internal alias i8, getelementptr inbounds (%seg_411df8__init_array_10_type, %seg_411df8__init_array_10_type* @seg_411df8__init_array_10, i32 0, i32 107, i32 0)
@data_412000 = internal alias i8*, getelementptr inbounds (%seg_411df8__init_array_10_type, %seg_411df8__init_array_10_type* @seg_411df8__init_array_10, i32 0, i32 97)
@data_411fe0 = internal alias i8*, getelementptr inbounds (%seg_411df8__init_array_10_type, %seg_411df8__init_array_10_type* @seg_411df8__init_array_10, i32 0, i32 95)
@data_400cf0 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 194, i32 0)
@data_400c20 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 182, i32 48)
@data_400c08 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 182, i32 24)
@data_400bf0 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 182, i32 0)
@data_4120a8 = internal alias i8, getelementptr inbounds (%seg_411df8__init_array_10_type, %seg_411df8__init_array_10_type* @seg_411df8__init_array_10, i32 0, i32 109, i32 0)
@data_411df8 = internal alias i8*, getelementptr inbounds (%seg_411df8__init_array_10_type, %seg_411df8__init_array_10_type* @seg_411df8__init_array_10, i32 0, i32 1)
@data_400cd0 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 190, i32 0)
@data_400c80 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 186, i32 0)
@data_400c38 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 184, i32 0)
@data_400d54 = internal alias i8, getelementptr inbounds (%seg_400000_LOAD_530_type, %seg_400000_LOAD_530_type* @seg_400000_LOAD_530, i32 0, i32 201, i32 0)
@SP_1040_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 63, i32 0, i32 0)
@X30_1024_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 61, i32 0, i32 0)
@X29_1008_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 59, i32 0, i32 0)
@X0_544_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 1, i32 0, i32 0)
@X7_656_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 15, i32 0, i32 0)
@X6_640_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 13, i32 0, i32 0)
@X5_624_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 11, i32 0, i32 0)
@X4_608_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 9, i32 0, i32 0)
@PC_1056_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 65, i32 0, i32 0)
@X30_1024_209c350 = private thread_local(initialexec) alias i8*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 61, i32 0, i32 0) to i8**)
@X22_896_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 45, i32 0, i32 0)
@X3_592_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 7, i32 0, i32 0)
@X2_576_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 5, i32 0, i32 0)
@X1_560_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 3, i32 0, i32 0)
@X24_928_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 49, i32 0, i32 0)
@X23_912_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 47, i32 0, i32 0)
@X21_880_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 43, i32 0, i32 0)
@X21_880_20a2800 = private thread_local(initialexec) alias i8**, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 43, i32 0, i32 0) to i8***)
@X20_864_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 41, i32 0, i32 0)
@X19_848_2095238 = private thread_local(initialexec) alias i64, getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 39, i32 0, i32 0)
@SP_1040_209c210 = private thread_local(initialexec) alias i64*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 63, i32 0, i32 0) to i64**)
@X22_896_2095220 = private thread_local(initialexec) alias i32, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 45, i32 0, i32 0) to i32*)
@X0_544_2095220 = private thread_local(initialexec) alias i32, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 1, i32 0, i32 0) to i32*)
@X3_592_209c350 = private thread_local(initialexec) alias i8*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 7, i32 0, i32 0) to i8**)
@SP_1040_20a0240 = private thread_local(initialexec) alias i32*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 63, i32 0, i32 0) to i32**)
@X19_848_20a2800 = private thread_local(initialexec) alias i8**, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 39, i32 0, i32 0) to i8***)
@X0_544_209c350 = private thread_local(initialexec) alias i8*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 1, i32 0, i32 0) to i8**)
@X1_560_209c350 = private thread_local(initialexec) alias i8*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 3, i32 0, i32 0) to i8**)
@X30_1024_20a2bb0 = private thread_local(initialexec) alias i64 (i64, i64, i64, i64, i64, i64, i64, i64)*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 61, i32 0, i32 0) to i64 (i64, i64, i64, i64, i64, i64, i64, i64)**)
@PC_1056_20a2bb0 = private thread_local(initialexec) alias i64 (i64, i64, i64, i64, i64, i64, i64, i64)*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 65, i32 0, i32 0) to i64 (i64, i64, i64, i64, i64, i64, i64, i64)**)
@X7_656_20a0240 = private thread_local(initialexec) alias i32*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 15, i32 0, i32 0) to i32**)
@X6_640_20a0090 = private thread_local(initialexec) alias void ()*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 13, i32 0, i32 0) to void ()**)
@X5_624_20a0090 = private thread_local(initialexec) alias void ()*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 11, i32 0, i32 0) to void ()**)
@X4_608_20a2860 = private thread_local(initialexec) alias i32 (i32, i8**, i8**)*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 9, i32 0, i32 0) to i32 (i32, i8**, i8**)**)
@X2_576_20a2800 = private thread_local(initialexec) alias i8**, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 5, i32 0, i32 0) to i8***)
@X0_544_20a2860 = private thread_local(initialexec) alias i32 (i32, i8**, i8**)*, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 1, i32 0, i32 0) to i32 (i32, i8**, i8**)**)
@X1_560_2095220 = private thread_local(initialexec) alias i32, bitcast (i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 3, i32 0, i32 0) to i32*)

declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_sync_hyper_call(%struct.State* dereferenceable(1168), %struct.Memory*, i32) #0

; Function Attrs: nounwind readnone
declare !remill.function.type !1215 dso_local i32 @__remill_fpu_exception_test_and_clear(i32, i32) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_barrier_store_store(%struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_barrier_load_store(%struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_barrier_load_load(%struct.Memory*) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_barrier_store_load(%struct.Memory*) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_atomic_begin(%struct.Memory*) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_atomic_end(%struct.Memory*) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_delay_slot_begin(%struct.Memory*) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_delay_slot_end(%struct.Memory*) #3

; Function Attrs: noduplicate noinline nounwind optnone
define dso_local %struct.Memory* @__remill_error(%struct.State* nonnull, i64, %struct.Memory*) #4 !remill.function.type !1215 {
  call void @abort()
  unreachable
}

; Function Attrs: noduplicate noinline nounwind optnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_function_call(%struct.State* nonnull, i64, %struct.Memory*) #4

; Function Attrs: noduplicate noinline nounwind optnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_function_return(%struct.State* nonnull, i64, %struct.Memory*) #4

; Function Attrs: noduplicate noinline nounwind optnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_jump(%struct.State* nonnull, i64, %struct.Memory*) #4

; Function Attrs: noduplicate noinline nounwind optnone
define dso_local %struct.Memory* @__remill_missing_block(%struct.State* nonnull, i64, %struct.Memory*) #4 !remill.function.type !1215 {
  call void @abort()
  unreachable
}

; Function Attrs: noduplicate noinline nounwind optnone
declare !remill.function.type !1215 dso_local %struct.Memory* @__remill_async_hyper_call(%struct.State* nonnull, i64, %struct.Memory*) #4

; Function Attrs: nobuiltin noinline
define private void @_start() #5 {
  %1 = call %struct.State* @__mcsema_init_reg_state()
  %2 = call %struct.Memory* @sub_400600__start(%struct.State* %1, i64 4195840, %struct.Memory* null)
  ret void
}

; Function Attrs: nobuiltin noinline
define private void @__libc_csu_init() #5 {
  %1 = call %struct.State* @__mcsema_init_reg_state()
  %2 = call %struct.Memory* @sub_400b40___libc_csu_init(%struct.State* %1, i64 4197184, %struct.Memory* null)
  ret void
}

; Function Attrs: nobuiltin noinline
define private void @__libc_csu_fini() #5 {
  %1 = call %struct.State* @__mcsema_init_reg_state()
  %2 = call %struct.Memory* @sub_400bc0___libc_csu_fini(%struct.State* %1, i64 4197312, %struct.Memory* null)
  ret void
}

; Function Attrs: nobuiltin noinline
define private void @frame_dummy() #5 {
  %1 = call %struct.State* @__mcsema_init_reg_state()
  %2 = call %struct.Memory* @sub_400710_frame_dummy(%struct.State* %1, i64 4196112, %struct.Memory* null)
  ret void
}

; Function Attrs: nobuiltin noinline
define private void @__do_global_dtors_aux() #5 {
  %1 = call %struct.State* @__mcsema_init_reg_state()
  %2 = call %struct.Memory* @sub_4006e0___do_global_dtors_aux(%struct.State* %1, i64 4196064, %struct.Memory* null)
  ret void
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_400bc4__term_proc(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_400bc4:
  %0 = load i64, i64* @X29_1008_2095238
  %1 = load i64, i64* @X30_1024_2095238
  %2 = load i64, i64* @SP_1040_2095238
  %3 = sub i64 %2, 16
  %4 = inttoptr i64 %3 to i64*
  store i64 %0, i64* %4
  %5 = getelementptr i64, i64* %4, i32 1
  store i64 %1, i64* %5
  store i64 %0, i64* @X29_1008_2095238, align 8, !tbaa !1216
  store i64 %1, i64* @X30_1024_2095238, align 8, !tbaa !1216
  ret %struct.Memory* %memory
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_400654_call_weak_fn(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_400654:
  %0 = load i64, i64* bitcast (i8** @data_411fe0 to i64*)
  store i64 %0, i64* @X0_544_2095238, align 8, !tbaa !1216
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %inst_400664, label %inst_400660

inst_400664:                                      ; preds = %inst_400654
  ret %struct.Memory* %memory

inst_400660:                                      ; preds = %inst_400654
  %2 = call %struct.Memory* @ext_4005a0___gmon_start__(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %memory)
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_400b40___libc_csu_init(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_400b40:
  %0 = load i64, i64* @X29_1008_2095238
  %1 = load i64, i64* @X30_1024_2095238
  %2 = load i64, i64* @SP_1040_2095238
  %3 = sub i64 %2, 64
  %4 = inttoptr i64 %3 to i64*
  store i64 %0, i64* %4
  %5 = getelementptr i64, i64* %4, i32 1
  store i64 %1, i64* %5
  store i64 %3, i64* @SP_1040_2095238, align 8, !tbaa !1216
  store i64 %3, i64* @X29_1008_2095238, align 8, !tbaa !1216
  %6 = load i64, i64* @X19_848_2095238
  %7 = load i64, i64* @X20_864_2095238
  %8 = getelementptr i64, i64* %4, i32 2
  store i64 %6, i64* %8
  %9 = getelementptr i64, i64* %8, i32 1
  store i64 %7, i64* %9
  %10 = load i64, i64* @X21_880_2095238
  %11 = load i64, i64* @X22_896_2095238
  %12 = getelementptr i64, i64* %4, i32 4
  store i64 %10, i64* %12
  %13 = getelementptr i64, i64* %12, i32 1
  store i64 %11, i64* %13
  store i8** @data_411df8, i8*** @X21_880_20a2800
  %14 = load i32, i32* @X0_544_2095220
  %15 = zext i32 %14 to i64
  %16 = and i64 %15, 4294967295
  store i64 %16, i64* @X22_896_2095238, align 8, !tbaa !1216
  %17 = load i64, i64* @X23_912_2095238
  %18 = load i64, i64* @X24_928_2095238
  %19 = getelementptr i64, i64* %4, i32 6
  store i64 %17, i64* %19
  %20 = getelementptr i64, i64* %19, i32 1
  store i64 %18, i64* %20
  %21 = load i64, i64* @X1_560_2095238
  store i64 %21, i64* @X23_912_2095238, align 8, !tbaa !1216
  %22 = load i64, i64* @X2_576_2095238
  store i64 %22, i64* @X24_928_2095238, align 8, !tbaa !1216
  store i64 1, i64* @X20_864_2095238, align 8, !tbaa !1216
  store i8* @data_400b7c, i8** @X30_1024_209c350
  %23 = call %struct.Memory* @sub_400530__init_proc(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %memory)
  %24 = load i64, i64* @X20_864_2095238
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %inst_400ba8, label %inst_400b80

inst_400b88:                                      ; preds = %inst_400b80, %inst_400b88
  %26 = phi i64 [ add (i64 ptrtoint (i8* @data_400b80 to i64), i64 8), %inst_400b80 ], [ %84, %inst_400b88 ]
  %27 = add i64 %26, 4
  %28 = load i64, i64* @X21_880_2095238
  %29 = load i64, i64* @X19_848_2095238
  %30 = shl i64 %29, 3
  %31 = add i64 %30, %28
  %32 = inttoptr i64 %31 to i64*
  %33 = load i64, i64* %32
  store i64 %33, i64* @X3_592_2095238, align 8, !tbaa !1216
  %34 = add i64 %27, 4
  %35 = load i64, i64* @X24_928_2095238
  store i64 %35, i64* @X2_576_2095238, align 8, !tbaa !1216
  %36 = add i64 %34, 4
  %37 = add i64 1, %29
  store i64 %37, i64* @X19_848_2095238, align 8, !tbaa !1216
  %38 = add i64 %36, 4
  %39 = load i64, i64* @X23_912_2095238
  store i64 %39, i64* @X1_560_2095238, align 8, !tbaa !1216
  %40 = add i64 %38, 4
  %41 = load i32, i32* @X22_896_2095220
  %42 = zext i32 %41 to i64
  %43 = and i64 %42, 4294967295
  store i64 %43, i64* @X0_544_2095238, align 8, !tbaa !1216
  %44 = add i64 %40, 4
  store i64 %44, i64* @X30_1024_2095238, align 8, !tbaa !1216
  store i64 %33, i64* @PC_1056_2095238, align 8, !tbaa !1216
  %45 = inttoptr i64 %33 to i64 (i64, i64, i64, i64, i64, i64, i64, i64)*
  %46 = load i64, i64* @SP_1040_2095238, !alias.scope !1220, !noalias !1223
  %47 = load i64, i64* @X4_608_2095238, !alias.scope !1220, !noalias !1223
  %48 = load i64, i64* @X5_624_2095238, !alias.scope !1220, !noalias !1223
  %49 = load i64, i64* @X6_640_2095238, !alias.scope !1220, !noalias !1223
  %50 = load i64, i64* @X7_656_2095238, !alias.scope !1220, !noalias !1223
  %51 = call i64 %45(i64 %43, i64 %39, i64 %35, i64 %33, i64 %47, i64 %48, i64 %49, i64 %50) #11
  store i64 %51, i64* @X0_544_2095238, !alias.scope !1220, !noalias !1223
  store i64 %46, i64* @SP_1040_2095238, !alias.scope !1220, !noalias !1223
  %52 = load i64, i64* @X20_864_2095238
  %53 = load i64, i64* @X19_848_2095238
  %54 = xor i64 %53, -1
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = add nuw nsw i128 %56, %55
  %58 = add nuw nsw i128 %57, 1
  %59 = trunc i128 %58 to i64
  %60 = ashr i64 %52, 63
  %61 = ashr i64 %54, 63
  %62 = zext i64 %60 to i128
  %63 = shl nuw i128 %62, 64
  %64 = or i128 %63, %55
  %65 = zext i64 %61 to i128
  %66 = shl nuw i128 %65, 64
  %67 = or i128 %66, %56
  %68 = add i128 %64, 1
  %69 = add i128 %68, %67
  %70 = lshr i64 %59, 63
  %71 = trunc i64 %70 to i8
  store i8 %71, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %72 = icmp eq i64 %59, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %74 = and i128 %58, 18446744073709551615
  %75 = icmp ugt i128 %57, 18446744073709551614
  %76 = zext i1 %75 to i8
  store i8 %76, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %77 = ashr i64 %59, 63
  %78 = zext i64 %77 to i128
  %79 = shl nuw i128 %78, 64
  %80 = or i128 %79, %74
  %81 = icmp ne i128 %80, %69
  %82 = zext i1 %81 to i8
  store i8 %82, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %83 = icmp eq i8 %73, 0
  %84 = select i1 %83, i64 ptrtoint (i8* @data_400b88 to i64), i64 ptrtoint (i8* @data_400ba8 to i64)
  br i1 %83, label %inst_400b88, label %inst_400ba8

inst_400ba8:                                      ; preds = %inst_400b88, %inst_400b40
  %85 = load i64*, i64** @SP_1040_209c210
  %86 = load i64, i64* @SP_1040_2095238
  %87 = getelementptr i64, i64* %85, i32 2
  %88 = load i64, i64* %87
  %89 = getelementptr i64, i64* %87, i32 1
  %90 = load i64, i64* %89
  store i64 %88, i64* @X19_848_2095238, align 8, !tbaa !1216
  store i64 %90, i64* @X20_864_2095238, align 8, !tbaa !1216
  %91 = getelementptr i64, i64* %85, i32 4
  %92 = load i64, i64* %91
  %93 = getelementptr i64, i64* %91, i32 1
  %94 = load i64, i64* %93
  store i64 %92, i64* @X21_880_2095238, align 8, !tbaa !1216
  store i64 %94, i64* @X22_896_2095238, align 8, !tbaa !1216
  %95 = getelementptr i64, i64* %85, i32 6
  %96 = load i64, i64* %95
  %97 = getelementptr i64, i64* %95, i32 1
  %98 = load i64, i64* %97
  store i64 %96, i64* @X23_912_2095238, align 8, !tbaa !1216
  store i64 %98, i64* @X24_928_2095238, align 8, !tbaa !1216
  %99 = add i64 %86, 64
  %100 = load i64, i64* %85
  %101 = getelementptr i64, i64* %85, i32 1
  %102 = load i64, i64* %101
  store i64 %100, i64* @X29_1008_2095238, align 8, !tbaa !1216
  store i64 %102, i64* @X30_1024_2095238, align 8, !tbaa !1216
  store i64 %99, i64* @SP_1040_2095238, align 8, !tbaa !1216
  ret %struct.Memory* %23

inst_400b80:                                      ; preds = %inst_400b40
  store i64 0, i64* @X19_848_2095238, align 8, !tbaa !1216
  br label %inst_400b88
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_400bc0___libc_csu_fini(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_400bc0:
  ret %struct.Memory* %memory
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_400710_frame_dummy(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_400710:
  %0 = call %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %memory)
  ret %struct.Memory* %0
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_400714_draw(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_400714:
  %0 = load i64, i64* @X29_1008_2095238
  %1 = load i64, i64* @X30_1024_2095238
  %2 = load i64, i64* @SP_1040_2095238
  %3 = sub i64 %2, 32
  %4 = inttoptr i64 %3 to i64*
  %5 = inttoptr i64 %3 to i32*
  store i64 %0, i64* %4
  %6 = getelementptr i64, i64* %4, i32 1
  store i64 %1, i64* %6
  store i64 %3, i64* @SP_1040_2095238, align 8, !tbaa !1216
  store i64 %3, i64* @X29_1008_2095238, align 8, !tbaa !1216
  %7 = getelementptr i32, i32* %5, i32 7
  store i32 0, i32* %7
  br label %inst_40078c

inst_40076c:                                      ; preds = %inst_400724, %inst_40072c
  %8 = phi %struct.Memory* [ %35, %inst_400724 ], [ %85, %inst_40072c ]
  %9 = load i32*, i32** @SP_1040_20a0240
  %10 = getelementptr i32, i32* %9, i32 6
  %11 = load i32, i32* %10
  %12 = zext i32 %11 to i64
  %13 = and i64 %12, 4294967295
  %14 = add nuw nsw i64 %13, 4294967285
  %15 = add nuw nsw i64 %14, 1
  %16 = shl i64 %12, 32
  %17 = ashr exact i64 %16, 32
  %18 = add nsw i64 %17, 1
  %19 = add nsw i64 %18, -11
  %20 = trunc i64 %15 to i32
  %21 = lshr i32 %20, 31
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %23 = icmp eq i32 %20, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %25 = icmp ugt i64 %14, 4294967294
  %26 = zext i1 %25 to i8
  store i8 %26, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %27 = shl i64 %15, 32
  %28 = ashr exact i64 %27, 32
  %29 = icmp ne i64 %28, %19
  %30 = zext i1 %29 to i8
  store i8 %30, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %31 = icmp ne i8 %22, %30
  %32 = or i1 %31, %23
  %33 = select i1 %32, i64 sub (i64 add (i64 ptrtoint (i8* @data_40076c to i64), i64 8), i64 72), i64 add (i64 ptrtoint (i8* @data_40076c to i64), i64 12)
  %34 = add i64 %33, 4
  br i1 %32, label %inst_40072c, label %inst_400778

inst_40078c:                                      ; preds = %inst_400778, %inst_400714
  %35 = phi %struct.Memory* [ %memory, %inst_400714 ], [ %95, %inst_400778 ]
  %36 = load i32*, i32** @SP_1040_20a0240
  %37 = getelementptr i32, i32* %36, i32 7
  %38 = load i32, i32* %37
  %39 = zext i32 %38 to i64
  %40 = and i64 %39, 4294967295
  %41 = add nuw nsw i64 %40, 4294967289
  %42 = add nuw nsw i64 %41, 1
  %43 = shl i64 %39, 32
  %44 = ashr exact i64 %43, 32
  %45 = add nsw i64 %44, 1
  %46 = add nsw i64 %45, -7
  %47 = trunc i64 %42 to i32
  %48 = lshr i32 %47, 31
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %50 = icmp eq i32 %47, 0
  %51 = zext i1 %50 to i8
  store i8 %51, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %52 = icmp ugt i64 %41, 4294967294
  %53 = zext i1 %52 to i8
  store i8 %53, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %54 = shl i64 %42, 32
  %55 = ashr exact i64 %54, 32
  %56 = icmp ne i64 %55, %46
  %57 = zext i1 %56 to i8
  store i8 %57, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %58 = icmp ne i8 %49, %57
  %59 = or i1 %58, %50
  br i1 %59, label %inst_400724, label %inst_400798

inst_40072c:                                      ; preds = %inst_40076c
  %60 = add i64 %34, 4
  store i8* @data_412058, i8** @X3_592_209c350
  %61 = add i64 %60, 4
  %62 = sext i32 %11 to i64
  store i64 %62, i64* @X2_576_2095238, align 8, !tbaa !1216
  %63 = add i64 %61, 4
  %64 = getelementptr i32, i32* %9, i32 7
  %65 = load i32, i32* %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* @X1_560_2095238, align 8, !tbaa !1216
  %67 = add i64 %63, 4
  %68 = add i64 %67, 4
  %69 = shl i64 %66, 1
  %70 = add i64 %68, 4
  %71 = add i64 %66, %69
  %72 = add i64 %70, 4
  %73 = shl i64 %71, 2
  %74 = add i64 %72, 4
  %75 = sub i64 %73, %66
  %76 = add i64 %74, 4
  %77 = add i64 %75, ptrtoint (i8* @data_412058 to i64)
  %78 = add i64 %76, 4
  %79 = add i64 %62, %77
  %80 = add i64 %78, 4
  %81 = inttoptr i64 %79 to i8*
  %82 = load i8, i8* %81
  %83 = zext i8 %82 to i64
  store i64 %83, i64* @X0_544_2095238, align 8, !tbaa !1216
  %84 = add i64 %80, 4
  store i64 %84, i64* @X30_1024_2095238, align 8, !tbaa !1216
  %85 = call %struct.Memory* @ext_4005f0_putchar(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %8)
  %86 = load i64, i64* @SP_1040_2095238
  %87 = add i64 %86, 24
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32, i32* %88
  %90 = zext i32 %89 to i64
  %91 = add i64 1, %90
  %92 = and i64 %91, 4294967295
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %88
  br label %inst_40076c

inst_400778:                                      ; preds = %inst_40076c
  store i64 10, i64* @X0_544_2095238, align 8, !tbaa !1216
  %94 = add i64 %34, 4
  store i64 %94, i64* @X30_1024_2095238, align 8, !tbaa !1216
  %95 = call %struct.Memory* @ext_4005f0_putchar(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %8)
  %96 = load i64, i64* @SP_1040_2095238
  %97 = add i64 %96, 28
  %98 = inttoptr i64 %97 to i32*
  %99 = load i32, i32* %98
  %100 = zext i32 %99 to i64
  %101 = add i64 1, %100
  %102 = and i64 %101, 4294967295
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %98
  br label %inst_40078c

inst_400724:                                      ; preds = %inst_40078c
  %104 = getelementptr i32, i32* %36, i32 6
  store i32 0, i32* %104
  br label %inst_40076c

inst_400798:                                      ; preds = %inst_40078c
  store i64 10, i64* @X0_544_2095238, align 8, !tbaa !1216
  store i64 add (i64 ptrtoint (i8* @data_40078c to i64), i64 20), i64* @X30_1024_2095238, align 8, !tbaa !1216
  %105 = call %struct.Memory* @ext_4005f0_putchar(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %35)
  %106 = load i64*, i64** @SP_1040_209c210
  %107 = load i64, i64* @SP_1040_2095238
  %108 = add i64 %107, 32
  %109 = load i64, i64* %106
  %110 = getelementptr i64, i64* %106, i32 1
  %111 = load i64, i64* %110
  store i64 %109, i64* @X29_1008_2095238, align 8, !tbaa !1216
  store i64 %111, i64* @X30_1024_2095238, align 8, !tbaa !1216
  store i64 %108, i64* @SP_1040_2095238, align 8, !tbaa !1216
  ret %struct.Memory* %105
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_4006e0___do_global_dtors_aux(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_4006e0:
  %0 = load i64, i64* @X29_1008_2095238
  %1 = load i64, i64* @X30_1024_2095238
  %2 = load i64, i64* @SP_1040_2095238
  %3 = sub i64 %2, 32
  %4 = inttoptr i64 %3 to i64*
  store i64 %0, i64* %4
  %5 = getelementptr i64, i64* %4, i32 1
  store i64 %1, i64* %5
  store i64 %3, i64* @SP_1040_2095238, align 8, !tbaa !1216
  store i64 %3, i64* @X29_1008_2095238, align 8, !tbaa !1216
  %6 = load i64, i64* @X19_848_2095238
  %7 = getelementptr i64, i64* %4, i32 2
  store i64 %6, i64* %7
  store i8** @data_412000, i8*** @X19_848_20a2800
  %8 = load i8, i8* @data_4120a5
  %9 = zext i8 %8 to i64
  store i64 %9, i64* @X0_544_2095238, align 8, !tbaa !1216
  %10 = trunc i64 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %inst_400704, label %inst_4006f8

inst_400704:                                      ; preds = %inst_4006f8, %inst_4006e0
  %12 = phi %struct.Memory* [ %memory, %inst_4006e0 ], [ %21, %inst_4006f8 ]
  %13 = load i64*, i64** @SP_1040_209c210
  %14 = load i64, i64* @SP_1040_2095238
  %15 = getelementptr i64, i64* %13, i32 2
  %16 = load i64, i64* %15
  store i64 %16, i64* @X19_848_2095238, align 8, !tbaa !1216
  %17 = add i64 %14, 32
  %18 = load i64, i64* %13
  %19 = getelementptr i64, i64* %13, i32 1
  %20 = load i64, i64* %19
  store i64 %18, i64* @X29_1008_2095238, align 8, !tbaa !1216
  store i64 %20, i64* @X30_1024_2095238, align 8, !tbaa !1216
  store i64 %17, i64* @SP_1040_2095238, align 8, !tbaa !1216
  ret %struct.Memory* %12

inst_4006f8:                                      ; preds = %inst_4006e0
  store i64 add (i64 ptrtoint (i8* @data_4006f8 to i64), i64 4), i64* @X30_1024_2095238, align 8, !tbaa !1216
  %21 = call %struct.Memory* @sub_400670_deregister_tm_clones(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %memory)
  store i64 1, i64* @X0_544_2095238, align 8, !tbaa !1216
  %22 = load i64, i64* @X19_848_2095238
  %23 = add i64 %22, 165
  %24 = inttoptr i64 %23 to i8*
  store i8 1, i8* %24
  br label %inst_400704
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_4006a0:
  store i8* @data_4120a8, i8** @X0_544_209c350
  store i64 0, i64* @X2_576_2095238, align 8, !tbaa !1216
  store i64 0, i64* @X1_560_2095238, align 8, !tbaa !1216
  ret %struct.Memory* %memory
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_400670_deregister_tm_clones(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_400670:
  store i8* @data_4120a8, i8** @X0_544_209c350
  store i8* @data_4120a8, i8** @X1_560_209c350
  store i8 0, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  store i8 1, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  store i8 1, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  store i8 1, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  ret %struct.Memory* %memory
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_400600__start(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_400600:
  store i64 0, i64* @X29_1008_2095238, align 8, !tbaa !1216
  %0 = load i64, i64* @X0_544_2095238
  store i64 %0, i64* @X5_624_2095238, align 8, !tbaa !1216
  %1 = load i64*, i64** @SP_1040_209c210
  %2 = load i64, i64* @SP_1040_2095238
  %3 = load i64, i64* %1
  store i64 %3, i64* @X1_560_2095238, align 8, !tbaa !1216
  %4 = add i64 8, %2
  store i64 %4, i64* @X2_576_2095238, align 8, !tbaa !1216
  store i64 %2, i64* @X6_640_2095238, align 8, !tbaa !1216
  store i64 4196268, i64* @X0_544_2095238, align 8, !tbaa !1216
  store i64 4197184, i64* @X3_592_2095238, align 8, !tbaa !1216
  store i64 4197312, i64* @X4_608_2095238, align 8, !tbaa !1216
  store i8* @data_400650, i8** @X30_1024_209c350
  %5 = call %struct.Memory* @ext_400580___libc_start_main(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %memory)
  store i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @call_weak_fn, i64 (i64, i64, i64, i64, i64, i64, i64, i64)** @X30_1024_20a2bb0
  %6 = call %struct.Memory* @ext_4005b0_abort(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %5)
  store i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @call_weak_fn, i64 (i64, i64, i64, i64, i64, i64, i64, i64)** @PC_1056_20a2bb0
  %7 = call %struct.Memory* @sub_400654_call_weak_fn(%struct.State* @__mcsema_reg_state, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @call_weak_fn to i64), %struct.Memory* %6)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_400530__init_proc(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_400530:
  %0 = load i64, i64* @X29_1008_2095238
  %1 = load i64, i64* @X30_1024_2095238
  %2 = load i64, i64* @SP_1040_2095238
  %3 = sub i64 %2, 16
  %4 = inttoptr i64 %3 to i64*
  store i64 %0, i64* %4
  %5 = getelementptr i64, i64* %4, i32 1
  store i64 %1, i64* %5
  store i64 %3, i64* @SP_1040_2095238, align 8, !tbaa !1216
  store i64 %3, i64* @X29_1008_2095238, align 8, !tbaa !1216
  store i8* @data_400540, i8** @X30_1024_209c350
  %6 = call %struct.Memory* @sub_400654_call_weak_fn(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %memory)
  %7 = load i64*, i64** @SP_1040_209c210
  %8 = load i64, i64* @SP_1040_2095238
  %9 = add i64 %8, 16
  %10 = load i64, i64* %7
  %11 = getelementptr i64, i64* %7, i32 1
  %12 = load i64, i64* %11
  store i64 %10, i64* @X29_1008_2095238, align 8, !tbaa !1216
  store i64 %12, i64* @X30_1024_2095238, align 8, !tbaa !1216
  store i64 %9, i64* @SP_1040_2095238, align 8, !tbaa !1216
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal %struct.Memory* @sub_4007ac_main(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
inst_4007ac:
  %0 = load i64, i64* @X29_1008_2095238
  %1 = load i64, i64* @X30_1024_2095238
  %2 = load i64, i64* @SP_1040_2095238
  %3 = sub i64 %2, 80
  %4 = inttoptr i64 %3 to i64*
  %5 = inttoptr i64 %3 to i32*
  store i64 %0, i64* %4
  %6 = getelementptr i64, i64* %4, i32 1
  store i64 %1, i64* %6
  store i64 %3, i64* @SP_1040_2095238, align 8, !tbaa !1216
  store i64 %3, i64* @X29_1008_2095238, align 8, !tbaa !1216
  %7 = load i32, i32* @X0_544_2095220
  %8 = getelementptr i32, i32* %5, i32 7
  store i32 %7, i32* %8
  %9 = load i64, i64* @X1_560_2095238
  %10 = getelementptr i64, i64* %4, i32 2
  store i64 %9, i64* %10
  %11 = getelementptr i32, i32* %5, i32 17
  store i32 0, i32* %11
  %12 = getelementptr i32, i32* %5, i32 19
  store i32 1, i32* %12
  %13 = getelementptr i32, i32* %5, i32 18
  store i32 1, i32* %13
  store i8* @data_412058, i8** @X3_592_209c350
  %14 = load i32, i32* %12
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* %13
  %17 = sext i32 %16 to i64
  %18 = shl i64 %17, 1
  %19 = add i64 %17, %18
  %20 = shl i64 %19, 2
  %21 = sub i64 %20, %17
  %22 = add i64 %21, ptrtoint (i8* @data_412058 to i64)
  %23 = add i64 %15, %22
  %24 = inttoptr i64 %23 to i8*
  store i8 88, i8* %24
  store i64 7, i64* @X2_576_2095238, align 8, !tbaa !1216
  store i64 11, i64* @X1_560_2095238, align 8, !tbaa !1216
  store i8* @data_400bf0, i8** @X0_544_209c350
  store i8* @data_400818, i8** @X30_1024_209c350
  %25 = call %struct.Memory* @ext_4005e0_printf(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %memory)
  %26 = load i32*, i32** @SP_1040_20a0240
  %27 = getelementptr i32, i32* %26, i32 18
  %28 = load i32, i32* %27
  %29 = zext i32 %28 to i64
  store i64 %29, i64* @X2_576_2095238, align 8, !tbaa !1216
  %30 = getelementptr i32, i32* %26, i32 19
  %31 = load i32, i32* %30
  %32 = zext i32 %31 to i64
  store i64 %32, i64* @X1_560_2095238, align 8, !tbaa !1216
  store i8* @data_400c08, i8** @X0_544_209c350
  store i8* @data_40082c, i8** @X30_1024_209c350
  %33 = call %struct.Memory* @ext_4005e0_printf(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %25)
  %34 = load i64, i64* @SP_1040_2095238
  %35 = add i64 %34, 68
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %36
  %38 = zext i32 %37 to i64
  store i64 %38, i64* @X1_560_2095238, align 8, !tbaa !1216
  store i8* @data_400c20, i8** @X0_544_209c350
  store i8* @data_40083c, i8** @X30_1024_209c350
  %39 = call %struct.Memory* @ext_4005e0_printf(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %33)
  store i8* @data_400c38, i8** @X0_544_209c350
  store i8* @data_400848, i8** @X30_1024_209c350
  %40 = call %struct.Memory* @ext_4005c0_puts(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %39)
  store i8* @data_400c80, i8** @X0_544_209c350
  store i8* @data_400854, i8** @X30_1024_209c350
  %41 = call %struct.Memory* @ext_4005c0_puts(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %40)
  store i8* @data_400858, i8** @X30_1024_209c350
  %42 = call %struct.Memory* @sub_400714_draw(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %41)
  %43 = load i64, i64* @SP_1040_2095238
  %44 = add i64 32, %43
  store i64 28, i64* @X2_576_2095238, align 8, !tbaa !1216
  store i64 %44, i64* @X1_560_2095238, align 8, !tbaa !1216
  store i64 0, i64* @X0_544_2095238, align 8, !tbaa !1216
  store i8* @data_40086c, i8** @X30_1024_209c350
  %45 = call %struct.Memory* @ext_4005d0_read(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %42)
  br label %inst_400b10

inst_400900:                                      ; preds = %inst_4008b4, %inst_4008a4, %inst_400894
  %46 = phi i64 [ %354, %inst_400894 ], [ %379, %inst_4008a4 ], [ undef, %inst_4008b4 ]
  %47 = add i64 %46, 4
  %48 = and i64 %46, -4096
  %49 = add i64 %47, 4
  %50 = add i64 3232, %48
  store i64 %50, i64* @X0_544_2095238, align 8, !tbaa !1216
  %51 = add i64 %49, 4
  store i64 %51, i64* @X30_1024_2095238, align 8, !tbaa !1216
  %52 = call %struct.Memory* @ext_4005c0_puts(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %109)
  store i8* @data_400cd0, i8** @X0_544_209c350
  store i8* @data_400918, i8** @X30_1024_209c350
  %53 = call %struct.Memory* @ext_4005c0_puts(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %52)
  store i64 1, i64* @X0_544_2095238, align 8, !tbaa !1216
  store i8* @data_400920, i8** @X30_1024_209c350
  %54 = call %struct.Memory* @ext_400570_exit(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %53)
  br label %inst_400920

inst_400980:                                      ; preds = %inst_400958, %inst_400920
  %55 = phi i64 [ %184, %inst_400920 ], [ ptrtoint (i8* @data_400980 to i64), %inst_400958 ]
  %56 = phi %struct.Memory* [ %146, %inst_400920 ], [ %417, %inst_400958 ]
  %57 = add i64 %55, 4
  %58 = add i64 %57, 4
  store i8* @data_412058, i8** @X3_592_209c350
  %59 = add i64 %58, 4
  %60 = load i32*, i32** @SP_1040_20a0240
  %61 = getelementptr i32, i32* %60, i32 19
  %62 = load i32, i32* %61
  %63 = sext i32 %62 to i64
  %64 = add i64 %59, 4
  %65 = getelementptr i32, i32* %60, i32 18
  %66 = load i32, i32* %65
  %67 = sext i32 %66 to i64
  %68 = add i64 %64, 4
  %69 = add i64 %68, 4
  %70 = shl i64 %67, 1
  %71 = add i64 %69, 4
  %72 = add i64 %67, %70
  %73 = add i64 %71, 4
  %74 = shl i64 %72, 2
  %75 = add i64 %73, 4
  %76 = sub i64 %74, %67
  %77 = add i64 %75, 4
  %78 = add i64 %76, ptrtoint (i8* @data_412058 to i64)
  %79 = add i64 %77, 4
  %80 = add i64 %63, %78
  %81 = add i64 %79, 4
  %82 = inttoptr i64 %80 to i8*
  %83 = load i8, i8* %82
  %84 = zext i8 %83 to i64
  %85 = add i64 %81, 4
  %86 = trunc i64 %84 to i32
  %87 = zext i32 %86 to i64
  %88 = and i64 %87, 4294967295
  %89 = add nuw nsw i64 %88, 4294967263
  %90 = add nuw nsw i64 %89, 1
  %91 = shl i64 %87, 32
  %92 = ashr exact i64 %91, 32
  %93 = add nsw i64 %92, 1
  %94 = add nsw i64 %93, -33
  %95 = trunc i64 %90 to i32
  %96 = lshr i32 %95, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %98 = icmp eq i32 %95, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %100 = icmp ugt i64 %89, 4294967294
  %101 = zext i1 %100 to i8
  store i8 %101, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %102 = shl i64 %90, 32
  %103 = ashr exact i64 %102, 32
  %104 = icmp ne i64 %103, %94
  %105 = zext i1 %104 to i8
  store i8 %105, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %106 = add i64 %85, 4
  %107 = add i64 %85, 112
  %108 = select i1 %98, i64 %107, i64 %106
  br i1 %98, label %inst_400a24, label %inst_4009b8

inst_400b10:                                      ; preds = %inst_400ac4, %inst_4007ac
  %109 = phi %struct.Memory* [ %45, %inst_4007ac ], [ %278, %inst_400ac4 ]
  %110 = load i32*, i32** @SP_1040_20a0240
  %111 = load i64, i64* @SP_1040_2095238
  %112 = getelementptr i32, i32* %110, i32 17
  %113 = load i32, i32* %112
  %114 = zext i32 %113 to i64
  %115 = and i64 %114, 4294967295
  %116 = add nuw nsw i64 %115, 4294967268
  %117 = add nuw nsw i64 %116, 1
  %118 = shl i64 %114, 32
  %119 = ashr exact i64 %118, 32
  %120 = add nsw i64 %119, 1
  %121 = add nsw i64 %120, -28
  %122 = trunc i64 %117 to i32
  %123 = lshr i32 %122, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %125 = icmp eq i32 %122, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %127 = icmp ugt i64 %116, 4294967294
  %128 = zext i1 %127 to i8
  store i8 %128, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %129 = shl i64 %117, 32
  %130 = ashr exact i64 %129, 32
  %131 = icmp ne i64 %130, %121
  %132 = zext i1 %131 to i8
  store i8 %132, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %133 = icmp ne i8 %124, %132
  %134 = or i1 %133, %125
  %135 = select i1 %134, i64 sub (i64 add (i64 ptrtoint (i8* @data_400b10 to i64), i64 8), i64 680), i64 add (i64 ptrtoint (i8* @data_400b10 to i64), i64 12)
  %136 = add i64 %135, 4
  br i1 %134, label %inst_400870, label %inst_400b1c

inst_400a14:                                      ; preds = %inst_400a08, %inst_4009fc, %inst_4009c4, %inst_4009b8
  %137 = phi i64 [ %442, %inst_4009b8 ], [ %473, %inst_4009c4 ], [ %496, %inst_4009fc ], [ %518, %inst_400a08 ]
  %138 = add i64 %137, 4
  %139 = getelementptr i32, i32* %60, i32 16
  %140 = load i32, i32* %139
  %141 = add i64 %138, 4
  store i32 %140, i32* %61
  %142 = add i64 %141, 4
  %143 = getelementptr i32, i32* %60, i32 15
  %144 = load i32, i32* %143
  %145 = add i64 %142, 4
  store i32 %144, i32* %65
  br label %inst_400a24

inst_400920:                                      ; preds = %inst_4008f0, %inst_4008e0, %inst_4008d0, %inst_4008c0, %inst_400900
  %146 = phi %struct.Memory* [ %109, %inst_4008c0 ], [ %54, %inst_400900 ], [ %109, %inst_4008d0 ], [ %109, %inst_4008e0 ], [ %109, %inst_4008f0 ]
  store i8* @data_412058, i8** @X3_592_209c350
  %147 = load i32*, i32** @SP_1040_20a0240
  %148 = getelementptr i32, i32* %147, i32 19
  %149 = load i32, i32* %148
  %150 = sext i32 %149 to i64
  store i64 %150, i64* @X2_576_2095238, align 8, !tbaa !1216
  %151 = getelementptr i32, i32* %147, i32 18
  %152 = load i32, i32* %151
  %153 = sext i32 %152 to i64
  store i64 %153, i64* @X1_560_2095238, align 8, !tbaa !1216
  %154 = shl i64 %153, 1
  %155 = add i64 %153, %154
  %156 = shl i64 %155, 2
  %157 = sub i64 %156, %153
  %158 = add i64 %157, ptrtoint (i8* @data_412058 to i64)
  %159 = add i64 %150, %158
  %160 = inttoptr i64 %159 to i8*
  %161 = load i8, i8* %160
  %162 = zext i8 %161 to i64
  %163 = trunc i64 %162 to i32
  %164 = zext i32 %163 to i64
  %165 = and i64 %164, 4294967295
  %166 = add nuw nsw i64 %165, 4294967260
  %167 = add nuw nsw i64 %166, 1
  %168 = shl i64 %164, 32
  %169 = ashr exact i64 %168, 32
  %170 = add nsw i64 %169, 1
  %171 = add nsw i64 %170, -36
  %172 = trunc i64 %167 to i32
  %173 = lshr i32 %172, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %175 = icmp eq i32 %172, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %177 = icmp ugt i64 %166, 4294967294
  %178 = zext i1 %177 to i8
  store i8 %178, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %179 = shl i64 %167, 32
  %180 = ashr exact i64 %179, 32
  %181 = icmp ne i64 %180, %171
  %182 = zext i1 %181 to i8
  store i8 %182, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %183 = icmp eq i8 %176, 0
  %184 = select i1 %183, i64 add (i64 ptrtoint (i8* @data_400920 to i64), i64 96), i64 add (i64 ptrtoint (i8* @data_400920 to i64), i64 56)
  br i1 %183, label %inst_400980, label %inst_400958

inst_400a24:                                      ; preds = %inst_400a08, %inst_400a14, %inst_400980
  %185 = phi i64 [ %108, %inst_400980 ], [ %145, %inst_400a14 ], [ %518, %inst_400a08 ]
  %186 = add i64 %185, 4
  %187 = load i32, i32* %65
  %188 = zext i32 %187 to i64
  store i64 %188, i64* @X2_576_2095238, align 8, !tbaa !1216
  %189 = add i64 %186, 4
  %190 = load i32, i32* %61
  %191 = zext i32 %190 to i64
  store i64 %191, i64* @X1_560_2095238, align 8, !tbaa !1216
  %192 = add i64 %189, 4
  %193 = and i64 %189, -4096
  %194 = add i64 %192, 4
  %195 = add i64 3080, %193
  store i64 %195, i64* @X0_544_2095238, align 8, !tbaa !1216
  %196 = add i64 %194, 4
  store i64 %196, i64* @X30_1024_2095238, align 8, !tbaa !1216
  %197 = call %struct.Memory* @ext_4005e0_printf(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %56)
  %198 = load i32*, i32** @SP_1040_20a0240
  %199 = load i64, i64* @SP_1040_2095238
  %200 = getelementptr i32, i32* %198, i32 17
  %201 = load i32, i32* %200
  %202 = sext i32 %201 to i64
  %203 = add i64 32, %199
  %204 = add i64 %202, %203
  %205 = inttoptr i64 %204 to i8*
  %206 = load i8, i8* %205
  %207 = zext i8 %206 to i64
  %208 = trunc i64 %207 to i32
  %209 = zext i32 %208 to i64
  %210 = and i64 %209, 4294967295
  store i64 %210, i64* @X2_576_2095238, align 8, !tbaa !1216
  %211 = getelementptr i32, i32* %198, i32 16
  %212 = load i32, i32* %211
  %213 = zext i32 %212 to i64
  %214 = getelementptr i32, i32* %198, i32 19
  %215 = load i32, i32* %214
  %216 = xor i32 %215, -1
  %217 = and i64 %213, 4294967295
  %218 = zext i32 %216 to i64
  %219 = add nuw nsw i64 %217, %218
  %220 = add nuw nsw i64 %219, 1
  %221 = shl i64 %213, 32
  %222 = ashr exact i64 %221, 32
  %223 = sext i32 %216 to i64
  %224 = add nsw i64 %222, 1
  %225 = add nsw i64 %224, %223
  %226 = trunc i64 %220 to i32
  %227 = lshr i32 %226, 31
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %229 = icmp eq i32 %226, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %231 = icmp ugt i64 %219, 4294967294
  %232 = zext i1 %231 to i8
  store i8 %232, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %233 = shl i64 %220, 32
  %234 = ashr exact i64 %233, 32
  %235 = icmp ne i64 %234, %225
  %236 = zext i1 %235 to i8
  store i8 %236, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %237 = icmp eq i8 %230, 0
  %238 = select i1 %237, i64 ptrtoint (i8* @data_400a74 to i64), i64 ptrtoint (i8* @data_400a58 to i64)
  br i1 %237, label %inst_400a74, label %inst_400a58

inst_400ac4:                                      ; preds = %inst_400ab0, %inst_400aa0, %inst_400a7c
  %239 = phi i64 [ %324, %inst_400a7c ], [ %586, %inst_400aa0 ], [ ptrtoint (i8* @data_400ac4 to i64), %inst_400ab0 ]
  %240 = phi %struct.Memory* [ %295, %inst_400a7c ], [ %295, %inst_400aa0 ], [ %593, %inst_400ab0 ]
  %241 = add i64 %239, 4
  %242 = add i64 %241, 4
  store i8* @data_412058, i8** @X3_592_209c350
  %243 = add i64 %242, 4
  %244 = load i32*, i32** @SP_1040_20a0240
  %245 = getelementptr i32, i32* %244, i32 19
  %246 = load i32, i32* %245
  %247 = sext i32 %246 to i64
  store i64 %247, i64* @X2_576_2095238, align 8, !tbaa !1216
  %248 = add i64 %243, 4
  %249 = getelementptr i32, i32* %244, i32 18
  %250 = load i32, i32* %249
  %251 = sext i32 %250 to i64
  %252 = add i64 %248, 4
  %253 = add i64 %252, 4
  %254 = shl i64 %251, 1
  %255 = add i64 %253, 4
  %256 = add i64 %251, %254
  %257 = add i64 %255, 4
  %258 = shl i64 %256, 2
  %259 = add i64 %257, 4
  %260 = sub i64 %258, %251
  %261 = add i64 %259, 4
  %262 = add i64 %260, ptrtoint (i8* @data_412058 to i64)
  %263 = add i64 %261, 4
  %264 = add i64 %247, %262
  store i64 %264, i64* @X0_544_2095238, align 8, !tbaa !1216
  %265 = add i64 %263, 4
  store i64 88, i64* @X1_560_2095238, align 8, !tbaa !1216
  %266 = add i64 %265, 4
  %267 = inttoptr i64 %264 to i8*
  store i8 88, i8* %267
  %268 = add i64 %266, 4
  store i64 %268, i64* @X30_1024_2095238, align 8, !tbaa !1216
  %269 = call %struct.Memory* @sub_400714_draw(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %240)
  %270 = load i64, i64* @SP_1040_2095238
  %271 = add i64 %270, 68
  %272 = inttoptr i64 %271 to i32*
  %273 = load i32, i32* %272
  %274 = zext i32 %273 to i64
  %275 = add i64 1, %274
  %276 = and i64 %275, 4294967295
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %272
  store i64 1, i64* @X0_544_2095238, align 8, !tbaa !1216
  store i8* @data_400b10, i8** @X30_1024_209c350
  %278 = call %struct.Memory* @ext_400590_sleep(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %269)
  br label %inst_400b10

inst_400a74:                                      ; preds = %inst_400a58, %inst_400a24
  %279 = phi i64 [ %238, %inst_400a24 ], [ %551, %inst_400a58 ]
  %280 = add i64 %279, 4
  %281 = and i64 %279, -4096
  %282 = add i64 %280, 4
  %283 = add i64 3352, %281
  store i64 %283, i64* @X0_544_2095238, align 8, !tbaa !1216
  br label %inst_400a7c

inst_400a7c:                                      ; preds = %inst_400a68, %inst_400a74
  %284 = phi i64 [ %282, %inst_400a74 ], [ undef, %inst_400a68 ]
  %285 = add i64 %284, 4
  %286 = load i64, i64* @X0_544_2095238
  store i64 %286, i64* @X3_592_2095238, align 8, !tbaa !1216
  %287 = add i64 %285, 4
  %288 = load i32, i32* %200
  %289 = zext i32 %288 to i64
  store i64 %289, i64* @X1_560_2095238, align 8, !tbaa !1216
  %290 = add i64 %287, 4
  %291 = and i64 %287, -4096
  %292 = add i64 %290, 4
  %293 = add i64 3360, %291
  store i64 %293, i64* @X0_544_2095238, align 8, !tbaa !1216
  %294 = add i64 %292, 4
  store i64 %294, i64* @X30_1024_2095238, align 8, !tbaa !1216
  %295 = call %struct.Memory* @ext_4005e0_printf(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %197)
  %296 = load i32*, i32** @SP_1040_20a0240
  %297 = getelementptr i32, i32* %296, i32 16
  %298 = load i32, i32* %297
  %299 = zext i32 %298 to i64
  %300 = getelementptr i32, i32* %296, i32 19
  %301 = load i32, i32* %300
  %302 = xor i32 %301, -1
  %303 = and i64 %299, 4294967295
  %304 = zext i32 %302 to i64
  %305 = add nuw nsw i64 %303, %304
  %306 = add nuw nsw i64 %305, 1
  %307 = shl i64 %299, 32
  %308 = ashr exact i64 %307, 32
  %309 = sext i32 %302 to i64
  %310 = add nsw i64 %308, 1
  %311 = add nsw i64 %310, %309
  %312 = trunc i64 %306 to i32
  %313 = lshr i32 %312, 31
  %314 = trunc i32 %313 to i8
  store i8 %314, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %315 = icmp eq i32 %312, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %317 = icmp ugt i64 %305, 4294967294
  %318 = zext i1 %317 to i8
  store i8 %318, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %319 = shl i64 %306, 32
  %320 = ashr exact i64 %319, 32
  %321 = icmp ne i64 %320, %311
  %322 = zext i1 %321 to i8
  store i8 %322, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %323 = icmp eq i8 %316, 0
  %324 = select i1 %323, i64 ptrtoint (i8* @data_400ac4 to i64), i64 ptrtoint (i8* @data_400aa0 to i64)
  br i1 %323, label %inst_400ac4, label %inst_400aa0

inst_4008c0:                                      ; preds = %inst_400870
  %325 = load i32, i32* %597
  %326 = zext i32 %325 to i64
  %327 = sub i64 %326, 1
  %328 = and i64 %327, 4294967295
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %597
  br label %inst_400920

inst_400894:                                      ; preds = %inst_400870
  %330 = add i64 %136, 4
  %331 = add i64 %330, 4
  %332 = add i64 %331, 4
  %333 = add i64 %332, 4
  %334 = add i64 %333, 4
  %335 = add i64 %334, 4
  %336 = add i64 %335, 4
  %337 = shl i64 %608, 32
  %338 = ashr exact i64 %337, 32
  %339 = add nsw i64 %338, 1
  %340 = add nsw i64 %339, -120
  %341 = lshr i32 %612, 31
  %342 = trunc i32 %341 to i8
  %343 = icmp ugt i64 %610, 4294967294
  %344 = zext i1 %343 to i8
  %345 = shl i64 %611, 32
  %346 = ashr exact i64 %345, 32
  %347 = icmp ne i64 %346, %340
  %348 = zext i1 %347 to i8
  %349 = add i64 %336, 4
  %350 = add i64 %349, 4
  store i8 %342, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  store i8 0, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  store i8 %344, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  store i8 %348, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %351 = add i64 %350, 4
  %352 = add i64 %350, 104
  %353 = icmp eq i8 %342, %348
  %354 = select i1 %353, i64 %352, i64 %351
  br i1 %353, label %inst_400900, label %inst_40089c

inst_40089c:                                      ; preds = %inst_400894
  %355 = add nuw nsw i64 %609, 4294967180
  %356 = add nuw nsw i64 %355, 1
  %357 = trunc i64 %356 to i32
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %inst_4008d0, label %inst_4008a4

inst_4008d0:                                      ; preds = %inst_40089c
  %359 = load i32, i32* %597
  %360 = zext i32 %359 to i64
  %361 = add i64 1, %360
  %362 = and i64 %361, 4294967295
  %363 = trunc i64 %362 to i32
  store i32 %363, i32* %597
  br label %inst_400920

inst_4008a4:                                      ; preds = %inst_40089c
  %364 = add i64 %354, 4
  %365 = add nsw i64 %339, -116
  %366 = lshr i32 %357, 31
  %367 = trunc i32 %366 to i8
  %368 = icmp ugt i64 %355, 4294967294
  %369 = zext i1 %368 to i8
  %370 = shl i64 %356, 32
  %371 = ashr exact i64 %370, 32
  %372 = icmp ne i64 %371, %365
  %373 = zext i1 %372 to i8
  %374 = add i64 %364, 4
  %375 = add i64 %374, 4
  store i8 %367, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  store i8 0, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  store i8 %369, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  store i8 %373, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %376 = add i64 %375, 4
  %377 = add i64 %375, 88
  %378 = icmp eq i8 %367, %373
  %379 = select i1 %378, i64 %377, i64 %376
  br i1 %378, label %inst_400900, label %inst_4008ac

inst_4008ac:                                      ; preds = %inst_4008a4
  %380 = add nuw nsw i64 %609, 4294967198
  %381 = add nuw nsw i64 %380, 1
  %382 = trunc i64 %381 to i32
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %inst_4008e0, label %inst_4008b4

inst_4008e0:                                      ; preds = %inst_4008ac
  %384 = load i32, i32* %594
  %385 = zext i32 %384 to i64
  %386 = sub i64 %385, 1
  %387 = and i64 %386, 4294967295
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %594
  br label %inst_400920

inst_4008b4:                                      ; preds = %inst_4008ac
  %389 = add nuw nsw i64 %609, 4294967195
  %390 = add nuw nsw i64 %389, 1
  %391 = add nsw i64 %339, -101
  %392 = trunc i64 %390 to i32
  %393 = lshr i32 %392, 31
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %395 = icmp eq i32 %392, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %397 = icmp ugt i64 %389, 4294967294
  %398 = zext i1 %397 to i8
  store i8 %398, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %399 = shl i64 %390, 32
  %400 = ashr exact i64 %399, 32
  %401 = icmp ne i64 %400, %391
  %402 = zext i1 %401 to i8
  store i8 %402, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  br i1 %395, label %inst_4008f0, label %inst_400900

inst_4008f0:                                      ; preds = %inst_4008b4
  %403 = load i32, i32* %594
  %404 = zext i32 %403 to i64
  %405 = add i64 1, %404
  %406 = and i64 %405, 4294967295
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %594
  br label %inst_400920

inst_400958:                                      ; preds = %inst_400920
  %408 = add i64 %184, 4
  %409 = and i64 %184, -4096
  %410 = add i64 %408, 4
  %411 = add i64 3296, %409
  store i64 %411, i64* @X0_544_2095238, align 8, !tbaa !1216
  %412 = add i64 %410, 4
  store i64 %412, i64* @X30_1024_2095238, align 8, !tbaa !1216
  %413 = call %struct.Memory* @ext_4005c0_puts(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %146)
  %414 = load i64, i64* @SP_1040_2095238
  %415 = add i64 32, %414
  store i64 %415, i64* @X1_560_2095238, align 8, !tbaa !1216
  store i8* @data_400cf0, i8** @X0_544_209c350
  store i8* @data_400978, i8** @X30_1024_209c350
  %416 = call %struct.Memory* @ext_4005e0_printf(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %413)
  store i64 0, i64* @X0_544_2095238, align 8, !tbaa !1216
  store i8* @data_400980, i8** @X30_1024_209c350
  %417 = call %struct.Memory* @ext_400570_exit(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %416)
  br label %inst_400980

inst_4009b8:                                      ; preds = %inst_400980
  %418 = add i64 %108, 4
  %419 = zext i32 %66 to i64
  %420 = add i64 %418, 4
  %421 = and i64 %419, 4294967295
  %422 = add nuw nsw i64 %421, 4294967293
  %423 = add nuw nsw i64 %422, 1
  %424 = shl i64 %419, 32
  %425 = ashr exact i64 %424, 32
  %426 = add nsw i64 %425, 1
  %427 = add nsw i64 %426, -3
  %428 = trunc i64 %423 to i32
  %429 = lshr i32 %428, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %431 = icmp eq i32 %428, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %433 = icmp ugt i64 %422, 4294967294
  %434 = zext i1 %433 to i8
  store i8 %434, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %435 = shl i64 %423, 32
  %436 = ashr exact i64 %435, 32
  %437 = icmp ne i64 %436, %427
  %438 = zext i1 %437 to i8
  store i8 %438, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %439 = add i64 %420, 4
  %440 = add i64 %420, 84
  %441 = icmp eq i8 %432, 0
  %442 = select i1 %441, i64 %440, i64 %439
  br i1 %441, label %inst_400a14, label %inst_4009c4

inst_4009c4:                                      ; preds = %inst_4009b8
  %443 = add i64 %442, 4
  %444 = add i64 %443, 4
  store i8* @data_412058, i8** @X3_592_209c350
  %445 = add i64 %444, 4
  %446 = add i64 %445, 4
  %447 = add i64 %446, 4
  %448 = add i64 %447, 4
  %449 = add i64 %448, 4
  %450 = add i64 %449, 4
  %451 = add i64 %450, 4
  %452 = add i64 %451, 4
  %453 = add i64 %452, 4
  %454 = add i64 %453, 4
  %455 = add i64 %454, 4
  %456 = add nuw nsw i64 %88, 4294967171
  %457 = add nuw nsw i64 %456, 1
  %458 = add nsw i64 %93, -125
  %459 = trunc i64 %457 to i32
  %460 = lshr i32 %459, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %462 = icmp eq i32 %459, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %464 = icmp ugt i64 %456, 4294967294
  %465 = zext i1 %464 to i8
  store i8 %465, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %466 = shl i64 %457, 32
  %467 = ashr exact i64 %466, 32
  %468 = icmp ne i64 %467, %458
  %469 = zext i1 %468 to i8
  store i8 %469, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %470 = add i64 %455, 4
  %471 = add i64 %455, 28
  %472 = icmp eq i8 %463, 0
  %473 = select i1 %472, i64 %471, i64 %470
  br i1 %472, label %inst_400a14, label %inst_4009fc

inst_4009fc:                                      ; preds = %inst_4009c4
  %474 = add i64 %473, 4
  %475 = load i32, i32* %61
  %476 = zext i32 %475 to i64
  %477 = add i64 %474, 4
  %478 = and i64 %476, 4294967295
  %479 = add nuw nsw i64 %478, 4294967295
  %480 = add nuw nsw i64 %479, 1
  %481 = shl i64 %476, 32
  %482 = ashr exact i64 %481, 32
  %483 = trunc i64 %480 to i32
  %484 = lshr i32 %483, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %486 = icmp eq i32 %483, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  store i8 1, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %488 = shl i64 %480, 32
  %489 = ashr exact i64 %488, 32
  %490 = icmp ne i64 %489, %482
  %491 = zext i1 %490 to i8
  store i8 %491, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %492 = add i64 %477, 4
  %493 = add i64 %477, 16
  %494 = icmp ne i8 %485, %491
  %495 = or i1 %494, %486
  %496 = select i1 %495, i64 %493, i64 %492
  br i1 %495, label %inst_400a14, label %inst_400a08

inst_400a08:                                      ; preds = %inst_4009fc
  %497 = add i64 %496, 4
  %498 = add i64 %497, 4
  %499 = add nuw nsw i64 %478, 4294967285
  %500 = add nuw nsw i64 %499, 1
  %501 = add nsw i64 %482, 1
  %502 = add nsw i64 %501, -11
  %503 = trunc i64 %500 to i32
  %504 = lshr i32 %503, 31
  %505 = trunc i32 %504 to i8
  store i8 %505, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %506 = icmp eq i32 %503, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %508 = icmp ugt i64 %499, 4294967294
  %509 = zext i1 %508 to i8
  store i8 %509, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %510 = shl i64 %500, 32
  %511 = ashr exact i64 %510, 32
  %512 = icmp ne i64 %511, %502
  %513 = zext i1 %512 to i8
  store i8 %513, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %514 = add i64 %498, 4
  %515 = add i64 %498, 20
  %516 = icmp ne i8 %505, %513
  %517 = or i1 %516, %506
  %518 = select i1 %517, i64 %515, i64 %514
  br i1 %517, label %inst_400a24, label %inst_400a14

inst_400a58:                                      ; preds = %inst_400a24
  %519 = add i64 %238, 4
  %520 = getelementptr i32, i32* %198, i32 15
  %521 = load i32, i32* %520
  %522 = zext i32 %521 to i64
  %523 = add i64 %519, 4
  %524 = getelementptr i32, i32* %198, i32 18
  %525 = load i32, i32* %524
  %526 = add i64 %523, 4
  %527 = xor i32 %525, -1
  %528 = and i64 %522, 4294967295
  %529 = zext i32 %527 to i64
  %530 = add nuw nsw i64 %528, %529
  %531 = add nuw nsw i64 %530, 1
  %532 = shl i64 %522, 32
  %533 = ashr exact i64 %532, 32
  %534 = sext i32 %527 to i64
  %535 = add nsw i64 %533, 1
  %536 = add nsw i64 %535, %534
  %537 = trunc i64 %531 to i32
  %538 = lshr i32 %537, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %540 = icmp eq i32 %537, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %542 = icmp ugt i64 %530, 4294967294
  %543 = zext i1 %542 to i8
  store i8 %543, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %544 = shl i64 %531, 32
  %545 = ashr exact i64 %544, 32
  %546 = icmp ne i64 %545, %536
  %547 = zext i1 %546 to i8
  store i8 %547, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %548 = add i64 %526, 4
  %549 = add i64 %526, 16
  %550 = icmp eq i8 %541, 0
  %551 = select i1 %550, i64 %549, i64 %548
  br i1 %550, label %inst_400a74, label %inst_400a68

inst_400a68:                                      ; preds = %inst_400a58
  %552 = and i64 %551, -4096
  %553 = add i64 3336, %552
  store i64 %553, i64* @X0_544_2095238, align 8, !tbaa !1216
  br label %inst_400a7c

inst_400aa0:                                      ; preds = %inst_400a7c
  %554 = add i64 %324, 4
  %555 = getelementptr i32, i32* %296, i32 15
  %556 = load i32, i32* %555
  %557 = zext i32 %556 to i64
  store i64 %557, i64* @X1_560_2095238, align 8, !tbaa !1216
  %558 = add i64 %554, 4
  %559 = getelementptr i32, i32* %296, i32 18
  %560 = load i32, i32* %559
  %561 = add i64 %558, 4
  %562 = xor i32 %560, -1
  %563 = and i64 %557, 4294967295
  %564 = zext i32 %562 to i64
  %565 = add nuw nsw i64 %563, %564
  %566 = add nuw nsw i64 %565, 1
  %567 = shl i64 %557, 32
  %568 = ashr exact i64 %567, 32
  %569 = sext i32 %562 to i64
  %570 = add nsw i64 %568, 1
  %571 = add nsw i64 %570, %569
  %572 = trunc i64 %566 to i32
  %573 = lshr i32 %572, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 5), align 1, !tbaa !1225
  %575 = icmp eq i32 %572, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 7), align 1, !tbaa !1231
  %577 = icmp ugt i64 %565, 4294967294
  %578 = zext i1 %577 to i8
  store i8 %578, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 9), align 1, !tbaa !1232
  %579 = shl i64 %566, 32
  %580 = ashr exact i64 %579, 32
  %581 = icmp ne i64 %580, %571
  %582 = zext i1 %581 to i8
  store i8 %582, i8* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 11), align 1, !tbaa !1233
  %583 = add i64 %561, 4
  %584 = add i64 %561, 24
  %585 = icmp eq i8 %576, 0
  %586 = select i1 %585, i64 %584, i64 %583
  br i1 %585, label %inst_400ac4, label %inst_400ab0

inst_400ab0:                                      ; preds = %inst_400aa0
  %587 = add i64 %586, 4
  %588 = and i64 %586, -4096
  %589 = add i64 %587, 4
  %590 = add i64 3400, %588
  store i64 %590, i64* @X0_544_2095238, align 8, !tbaa !1216
  %591 = add i64 %589, 4
  store i64 %591, i64* @X30_1024_2095238, align 8, !tbaa !1216
  %592 = call %struct.Memory* @ext_4005c0_puts(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %295)
  store i64 1, i64* @X0_544_2095238, align 8, !tbaa !1216
  store i8* @data_400ac4, i8** @X30_1024_209c350
  %593 = call %struct.Memory* @ext_400570_exit(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %592)
  br label %inst_400ac4

inst_400870:                                      ; preds = %inst_400b10
  %594 = getelementptr i32, i32* %110, i32 19
  %595 = load i32, i32* %594
  %596 = getelementptr i32, i32* %110, i32 16
  store i32 %595, i32* %596
  %597 = getelementptr i32, i32* %110, i32 18
  %598 = load i32, i32* %597
  %599 = getelementptr i32, i32* %110, i32 15
  store i32 %598, i32* %599
  %600 = load i32, i32* %112
  %601 = sext i32 %600 to i64
  %602 = add i64 32, %111
  store i64 %602, i64* @X1_560_2095238, align 8, !tbaa !1216
  %603 = add i64 %601, %602
  %604 = inttoptr i64 %603 to i8*
  %605 = load i8, i8* %604
  %606 = zext i8 %605 to i64
  %607 = trunc i64 %606 to i32
  %608 = zext i32 %607 to i64
  %609 = and i64 %608, 4294967295
  %610 = add nuw nsw i64 %609, 4294967176
  %611 = add nuw nsw i64 %610, 1
  %612 = trunc i64 %611 to i32
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %inst_4008c0, label %inst_400894

inst_400b1c:                                      ; preds = %inst_400b10
  %614 = and i64 %135, -4096
  %615 = add i64 %136, 4
  %616 = add i64 3400, %614
  store i64 %616, i64* @X0_544_2095238, align 8, !tbaa !1216
  %617 = add i64 %615, 4
  store i64 %617, i64* @X30_1024_2095238, align 8, !tbaa !1216
  %618 = call %struct.Memory* @ext_4005c0_puts(%struct.State* @__mcsema_reg_state, i64 undef, %struct.Memory* %109)
  store i64 1, i64* @X0_544_2095238, align 8, !tbaa !1216
  %619 = load i64*, i64** @SP_1040_209c210
  %620 = load i64, i64* @SP_1040_2095238
  %621 = add i64 %620, 80
  %622 = load i64, i64* %619
  %623 = getelementptr i64, i64* %619, i32 1
  %624 = load i64, i64* %623
  store i64 %622, i64* @X29_1008_2095238, align 8, !tbaa !1216
  store i64 %624, i64* @X30_1024_2095238, align 8, !tbaa !1216
  store i64 %621, i64* @SP_1040_2095238, align 8, !tbaa !1216
  ret %struct.Memory* %618
}

; Function Attrs: noinline
define weak void @__gmon_start__() #7 !remill.function.type !1234 {
  ret void
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005e0_printf(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
  %1 = load i8*, i8** @X0_544_209c350
  %2 = load i64, i64* @X1_560_2095238
  %3 = load i64, i64* @X2_576_2095238
  %4 = load i64, i64* @X3_592_2095238
  %5 = load i64, i64* @X4_608_2095238
  %6 = load i64, i64* @X5_624_2095238
  %7 = load i64, i64* @X6_640_2095238
  %8 = load i64, i64* @X7_656_2095238
  %9 = call i32 (i8*, ...) @printf(i8* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8)
  %10 = zext i32 %9 to i64
  store i64 %10, i64* @X0_544_2095238
  ret %struct.Memory* %memory
}

; Function Attrs: noinline
declare !remill.function.type !1234 i32 @printf(i8*, ...) #7

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005d0_read(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
  %1 = load i64, i64* @X0_544_2095238
  %2 = load i64, i64* @X1_560_2095238
  %3 = load i64, i64* @X2_576_2095238
  %4 = call i64 @read(i64 %1, i64 %2, i64 %3)
  store i64 %4, i64* @X0_544_2095238
  ret %struct.Memory* %memory
}

; Function Attrs: nobuiltin noinline
declare !remill.function.type !1234 i64 @read(i64, i64, i64) #5

; Function Attrs: noinline
define internal %struct.Memory* @ext_400570_exit(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
  %1 = load i32, i32* @X0_544_2095220
  call void @exit(i32 %1)
  unreachable
}

; Function Attrs: noinline noreturn
declare !remill.function.type !1234 void @exit(i32) #8

; Function Attrs: nobuiltin noinline
declare !remill.function.type !1234 i64 @putchar(i64) #5

; Function Attrs: noinline
declare !remill.function.type !1234 void @__libc_start_main(i32 (i32, i8**, i8**)*, i32, i8**, i8*, i32 (i32, i8**, i8**)*, void ()*, void ()*, i32*) #7

; Function Attrs: nobuiltin noinline
declare !remill.function.type !1234 i64 @sleep(i64) #5

; Function Attrs: noinline
define internal %struct.Memory* @ext_400580___libc_start_main(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
  %1 = load i32 (i32, i8**, i8**)*, i32 (i32, i8**, i8**)** @X0_544_20a2860
  %2 = load i32, i32* @X1_560_2095220
  %3 = load i8**, i8*** @X2_576_20a2800
  %4 = load i8*, i8** @X3_592_209c350
  %5 = load i32 (i32, i8**, i8**)*, i32 (i32, i8**, i8**)** @X4_608_20a2860
  %6 = load void ()*, void ()** @X5_624_20a0090
  %7 = load void ()*, void ()** @X6_640_20a0090
  %8 = load i32*, i32** @X7_656_20a0240
  call void @__libc_start_main(i32 (i32, i8**, i8**)* %1, i32 %2, i8** %3, i8* %4, i32 (i32, i8**, i8**)* %5, void ()* %6, void ()* %7, i32* %8)
  ret %struct.Memory* %memory
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400590_sleep(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
  %1 = load i64, i64* @X0_544_2095238
  %2 = call i64 @sleep(i64 %1)
  store i64 %2, i64* @X0_544_2095238
  ret %struct.Memory* %memory
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005a0___gmon_start__(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
  call void @__gmon_start__()
  ret %struct.Memory* %memory
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005b0_abort(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
  call void @abort()
  unreachable
}

; Function Attrs: noinline noreturn
declare !remill.function.type !1234 void @abort() #8

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005c0_puts(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
  %1 = load i64, i64* @X0_544_2095238
  %2 = call i64 @puts(i64 %1)
  store i64 %2, i64* @X0_544_2095238
  ret %struct.Memory* %memory
}

; Function Attrs: nobuiltin noinline
declare !remill.function.type !1234 i64 @puts(i64) #5

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005f0_putchar(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #6 {
  %1 = load i64, i64* @X0_544_2095238
  %2 = call i64 @putchar(i64 %1)
  store i64 %2, i64* @X0_544_2095238
  ret %struct.Memory* %memory
}

define internal i32 @printf_novarargs.1(i8*, i64, i64, i64, i64, i64, i64, i64) {
  %9 = call i32 (i8*, ...) @printf(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7)
  ret i32 %9
}

; Function Attrs: alwaysinline inlinehint nounwind
define dso_local %struct.Memory* @__mcsema_detach_call_value(%struct.State* noalias nonnull %state, i64 %pc, %struct.Memory* noalias %memory) #9 !remill.function.type !1235 {
  %1 = inttoptr i64 %pc to i64 (i64, i64, i64, i64, i64, i64, i64, i64)*
  %2 = load i64, i64* @X0_544_2095238
  %3 = load i64, i64* @X1_560_2095238
  %4 = load i64, i64* @X2_576_2095238
  %5 = load i64, i64* @X3_592_2095238
  %6 = load i64, i64* @X4_608_2095238
  %7 = load i64, i64* @X5_624_2095238
  %8 = load i64, i64* @X6_640_2095238
  %9 = load i64, i64* @X7_656_2095238
  %10 = call i64 %1(i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9)
  store i64 %10, i64* @X0_544_2095238
  ret %struct.Memory* %memory
}

; Function Attrs: nobuiltin noinline
define private i64 @call_weak_fn(i64, i64, i64, i64, i64, i64, i64, i64) #5 {
  %9 = call %struct.State* @__mcsema_init_reg_state()
  %X0 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 1, i32 0, i32 0, !remill_register !1236
  store i64 %0, i64* %X0
  %X1 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 3, i32 0, i32 0, !remill_register !1237
  store i64 %1, i64* %X1
  %X2 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 5, i32 0, i32 0, !remill_register !1238
  store i64 %2, i64* %X2
  %X3 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 7, i32 0, i32 0, !remill_register !1239
  store i64 %3, i64* %X3
  %X4 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 9, i32 0, i32 0, !remill_register !1240
  store i64 %4, i64* %X4
  %X5 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 11, i32 0, i32 0, !remill_register !1241
  store i64 %5, i64* %X5
  %X6 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 13, i32 0, i32 0, !remill_register !1242
  store i64 %6, i64* %X6
  %X7 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 15, i32 0, i32 0, !remill_register !1243
  store i64 %7, i64* %X7
  %10 = call %struct.Memory* @sub_400654_call_weak_fn(%struct.State* %9, i64 4195924, %struct.Memory* null)
  %11 = load i64, i64* %X0
  ret i64 %11
}

define %struct.State* @__mcsema_init_reg_state() {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 63, i32 0, i32 0)
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %is_null, label %end

is_null:                                          ; preds = %entry
  store i64 ptrtoint (i8* getelementptr inbounds ([1048576 x i8], [1048576 x i8]* @__mcsema_stack, i32 0, i32 1048064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 3, i32 63, i32 0, i32 0)
  store i64 ptrtoint ([2048 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i32 0, i32 9, i32 1, i32 0, i32 0)
  call void @__mcsema_early_init()
  br label %end

end:                                              ; preds = %is_null, %entry
  ret %struct.State* @__mcsema_reg_state
}

define internal void @__mcsema_early_init() {
  %1 = load volatile i1, i1* @0
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  ret void

3:                                                ; preds = %0
  store volatile i1 true, i1* @0
  ret void
}

; Function Attrs: nobuiltin noinline
define dso_local i64 @draw(i64, i64, i64, i64, i64, i64, i64, i64) #5 !remill.function.type !1234 {
  %9 = call %struct.State* @__mcsema_init_reg_state()
  %X0 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 1, i32 0, i32 0, !remill_register !1236
  store i64 %0, i64* %X0
  %X1 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 3, i32 0, i32 0, !remill_register !1237
  store i64 %1, i64* %X1
  %X2 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 5, i32 0, i32 0, !remill_register !1238
  store i64 %2, i64* %X2
  %X3 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 7, i32 0, i32 0, !remill_register !1239
  store i64 %3, i64* %X3
  %X4 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 9, i32 0, i32 0, !remill_register !1240
  store i64 %4, i64* %X4
  %X5 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 11, i32 0, i32 0, !remill_register !1241
  store i64 %5, i64* %X5
  %X6 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 13, i32 0, i32 0, !remill_register !1242
  store i64 %6, i64* %X6
  %X7 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 3, i32 15, i32 0, i32 0, !remill_register !1243
  store i64 %7, i64* %X7
  %10 = call %struct.Memory* @sub_400714_draw(%struct.State* %9, i64 4196116, %struct.Memory* null)
  %11 = load i64, i64* %X0
  ret i64 %11
}

; Function Attrs: nobuiltin noinline
define i32 @main(i32 %param0, i8** %param1, i8** %param2) #5 !remill.function.type !1234 {
  %1 = call %struct.State* @__mcsema_init_reg_state()
  %2 = getelementptr inbounds %struct.State, %struct.State* %1, i32 0, i32 3, i32 1, i32 0, i32 0
  %W0 = bitcast i64* %2 to i32*, !remill_register !1244
  store i32 %param0, i32* %W0
  %X1 = getelementptr inbounds %struct.State, %struct.State* %1, i32 0, i32 3, i32 3, i32 0, i32 0, !remill_register !1237
  %3 = ptrtoint i8** %param1 to i64
  store i64 %3, i64* %X1
  %X2 = getelementptr inbounds %struct.State, %struct.State* %1, i32 0, i32 3, i32 5, i32 0, i32 0, !remill_register !1238
  %4 = ptrtoint i8** %param2 to i64
  store i64 %4, i64* %X2
  %5 = call %struct.Memory* @sub_4007ac_main(%struct.State* %1, i64 4196268, %struct.Memory* null)
  %6 = load i64, i64* %2
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

define internal void @__mcsema_constructor() {
  call void @__libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @__libc_csu_fini()
  ret void
}

; Function Attrs: noinline optnone
define %struct.State* @__mcsema_debug_get_reg_state() #10 {
  ret %struct.State* @__mcsema_reg_state
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noduplicate noinline nounwind optnone readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noinline }
attributes #6 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline }
attributes #8 = { noinline noreturn }
attributes #9 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline optnone }
attributes #11 = { nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!llvm.dbg.cu = !{!4}

!0 = !{!"clang version 9.0.1 (https://github.com/trailofbits/vcpkg.git 4592a93cc4ca82f1963dba08413c43639662d7ae)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !5, producer: "clang version 9.0.1 (https://github.com/trailofbits/vcpkg.git 4592a93cc4ca82f1963dba08413c43639662d7ae)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6, imports: !7, nameTableKind: None)
!5 = !DIFile(filename: "/mnt/g/build/remill/lib/Arch/AArch64/Runtime/BasicBlock.cpp", directory: "/mnt/g/build/remill-build/lib/Arch/AArch64/Runtime")
!6 = !{}
!7 = !{!8, !13, !20, !24, !31, !35, !43, !48, !50, !58, !62, !66, !76, !78, !82, !86, !90, !95, !99, !103, !107, !111, !119, !123, !127, !129, !133, !137, !142, !148, !152, !156, !158, !166, !170, !178, !180, !184, !188, !192, !196, !201, !206, !211, !212, !213, !214, !216, !217, !218, !219, !220, !221, !222, !278, !282, !299, !302, !307, !315, !320, !324, !328, !332, !336, !338, !340, !344, !350, !354, !360, !366, !368, !372, !376, !380, !384, !395, !397, !401, !405, !409, !411, !415, !419, !423, !425, !427, !431, !439, !443, !447, !451, !453, !459, !461, !467, !471, !475, !479, !483, !487, !491, !493, !495, !499, !503, !507, !509, !513, !517, !519, !521, !525, !529, !533, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !552, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !582, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !612, !614, !618, !622, !627, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !661, !667, !672, !676, !678, !680, !682, !684, !691, !695, !699, !703, !707, !711, !716, !720, !722, !726, !732, !736, !741, !743, !745, !749, !753, !755, !757, !759, !761, !765, !767, !769, !773, !777, !781, !785, !789, !793, !795, !799, !803, !807, !811, !813, !815, !819, !823, !824, !825, !826, !827, !828, !834, !836, !838, !842, !844, !846, !848, !850, !852, !854, !856, !861, !865, !867, !869, !874, !876, !878, !880, !882, !884, !886, !889, !891, !893, !897, !901, !903, !905, !907, !909, !911, !913, !915, !917, !919, !921, !925, !929, !931, !933, !935, !937, !939, !941, !943, !945, !947, !949, !951, !953, !955, !957, !959, !963, !967, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !993, !997, !1001, !1003, !1005, !1007, !1011, !1015, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1037, !1039, !1041, !1043, !1047, !1051, !1055, !1057, !1059, !1061, !1063, !1067, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1087, !1091, !1093, !1095, !1097, !1099, !1103, !1107, !1111, !1113, !1115, !1117, !1119, !1121, !1123, !1127, !1131, !1135, !1137, !1141, !1145, !1147, !1149, !1151, !1153, !1155, !1157, !1162, !1164, !1167, !1172, !1174, !1180, !1182, !1184, !1186, !1191, !1193, !1199, !1201, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!8 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !10, file: !12, line: 58)
!9 = !DINamespace(name: "__gnu_debug", scope: null)
!10 = !DINamespace(name: "__debug", scope: !11)
!11 = !DINamespace(name: "std", scope: null)
!12 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug/debug.h", directory: "")
!13 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !14, file: !19, line: 52)
!14 = !DISubprogram(name: "abs", scope: !15, file: !15, line: 840, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!15 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h", directory: "")
!20 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !21, file: !23, line: 127)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !15, line: 62, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!23 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib", directory: "")
!24 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !25, file: !23, line: 128)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !15, line: 70, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !27, identifier: "_ZTS6ldiv_t")
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !26, file: !15, line: 68, baseType: !29, size: 64)
!29 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !26, file: !15, line: 69, baseType: !29, size: 64, offset: 64)
!31 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !32, file: !23, line: 130)
!32 = !DISubprogram(name: "abort", scope: !15, file: !15, line: 591, type: !33, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!33 = !DISubroutineType(types: !34)
!34 = !{null}
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !36, file: !23, line: 132)
!36 = !DISubprogram(name: "aligned_alloc", scope: !15, file: !15, line: 586, type: !37, flags: DIFlagPrototyped, spFlags: 0)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !40, !40}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 46, baseType: !42)
!41 = !DIFile(filename: "vcpkg_ubuntu-20.04_llvm-9_amd64/installed/x64-linux-rel/tools/llvm/lib/clang/9.0.1/include/stddef.h", directory: "/mnt/g/build")
!42 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !44, file: !23, line: 134)
!44 = !DISubprogram(name: "atexit", scope: !15, file: !15, line: 595, type: !45, flags: DIFlagPrototyped, spFlags: 0)
!45 = !DISubroutineType(types: !46)
!46 = !{!18, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!48 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !49, file: !23, line: 137)
!49 = !DISubprogram(name: "at_quick_exit", scope: !15, file: !15, line: 600, type: !45, flags: DIFlagPrototyped, spFlags: 0)
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !51, file: !23, line: 140)
!51 = !DISubprogram(name: "atof", scope: !15, file: !15, line: 101, type: !52, flags: DIFlagPrototyped, spFlags: 0)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !55}
!54 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !59, file: !23, line: 141)
!59 = !DISubprogram(name: "atoi", scope: !15, file: !15, line: 104, type: !60, flags: DIFlagPrototyped, spFlags: 0)
!60 = !DISubroutineType(types: !61)
!61 = !{!18, !55}
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !63, file: !23, line: 142)
!63 = !DISubprogram(name: "atol", scope: !15, file: !15, line: 107, type: !64, flags: DIFlagPrototyped, spFlags: 0)
!64 = !DISubroutineType(types: !65)
!65 = !{!29, !55}
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !67, file: !23, line: 143)
!67 = !DISubprogram(name: "bsearch", scope: !15, file: !15, line: 820, type: !68, flags: DIFlagPrototyped, spFlags: 0)
!68 = !DISubroutineType(types: !69)
!69 = !{!39, !70, !70, !40, !40, !72}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !15, line: 808, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!18, !70, !70}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !77, file: !23, line: 144)
!77 = !DISubprogram(name: "calloc", scope: !15, file: !15, line: 542, type: !37, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !79, file: !23, line: 145)
!79 = !DISubprogram(name: "div", scope: !15, file: !15, line: 852, type: !80, flags: DIFlagPrototyped, spFlags: 0)
!80 = !DISubroutineType(types: !81)
!81 = !{!21, !18, !18}
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !83, file: !23, line: 146)
!83 = !DISubprogram(name: "exit", scope: !15, file: !15, line: 617, type: !84, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !18}
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !87, file: !23, line: 147)
!87 = !DISubprogram(name: "free", scope: !15, file: !15, line: 565, type: !88, flags: DIFlagPrototyped, spFlags: 0)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !39}
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !91, file: !23, line: 148)
!91 = !DISubprogram(name: "getenv", scope: !15, file: !15, line: 634, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !55}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !96, file: !23, line: 149)
!96 = !DISubprogram(name: "labs", scope: !15, file: !15, line: 841, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!97 = !DISubroutineType(types: !98)
!98 = !{!29, !29}
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !100, file: !23, line: 150)
!100 = !DISubprogram(name: "ldiv", scope: !15, file: !15, line: 854, type: !101, flags: DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{!25, !29, !29}
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !104, file: !23, line: 151)
!104 = !DISubprogram(name: "malloc", scope: !15, file: !15, line: 539, type: !105, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{!39, !40}
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !108, file: !23, line: 153)
!108 = !DISubprogram(name: "mblen", scope: !15, file: !15, line: 922, type: !109, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{!18, !55, !40}
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !112, file: !23, line: 154)
!112 = !DISubprogram(name: "mbstowcs", scope: !15, file: !15, line: 933, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!40, !115, !118, !40}
!115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !120, file: !23, line: 155)
!120 = !DISubprogram(name: "mbtowc", scope: !15, file: !15, line: 925, type: !121, flags: DIFlagPrototyped, spFlags: 0)
!121 = !DISubroutineType(types: !122)
!122 = !{!18, !115, !118, !40}
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !124, file: !23, line: 157)
!124 = !DISubprogram(name: "qsort", scope: !15, file: !15, line: 830, type: !125, flags: DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !39, !40, !40, !72}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !128, file: !23, line: 160)
!128 = !DISubprogram(name: "quick_exit", scope: !15, file: !15, line: 623, type: !84, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !130, file: !23, line: 163)
!130 = !DISubprogram(name: "rand", scope: !15, file: !15, line: 453, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!18}
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !134, file: !23, line: 164)
!134 = !DISubprogram(name: "realloc", scope: !15, file: !15, line: 550, type: !135, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{!39, !39, !40}
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !138, file: !23, line: 165)
!138 = !DISubprogram(name: "srand", scope: !15, file: !15, line: 455, type: !139, flags: DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141}
!141 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !143, file: !23, line: 166)
!143 = !DISubprogram(name: "strtod", scope: !15, file: !15, line: 117, type: !144, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{!54, !118, !146}
!146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !149, file: !23, line: 167)
!149 = !DISubprogram(name: "strtol", scope: !15, file: !15, line: 176, type: !150, flags: DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!29, !118, !146, !18}
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !153, file: !23, line: 168)
!153 = !DISubprogram(name: "strtoul", scope: !15, file: !15, line: 180, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!42, !118, !146, !18}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !157, file: !23, line: 169)
!157 = !DISubprogram(name: "system", scope: !15, file: !15, line: 784, type: !60, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !159, file: !23, line: 171)
!159 = !DISubprogram(name: "wcstombs", scope: !15, file: !15, line: 936, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!40, !162, !163, !40}
!162 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !167, file: !23, line: 172)
!167 = !DISubprogram(name: "wctomb", scope: !15, file: !15, line: 929, type: !168, flags: DIFlagPrototyped, spFlags: 0)
!168 = !DISubroutineType(types: !169)
!169 = !{!18, !94, !117}
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !172, file: !23, line: 200)
!171 = !DINamespace(name: "__gnu_cxx", scope: null)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !15, line: 80, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !174, identifier: "_ZTS7lldiv_t")
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !173, file: !15, line: 78, baseType: !176, size: 64)
!176 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !173, file: !15, line: 79, baseType: !176, size: 64, offset: 64)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !179, file: !23, line: 206)
!179 = !DISubprogram(name: "_Exit", scope: !15, file: !15, line: 629, type: !84, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !181, file: !23, line: 210)
!181 = !DISubprogram(name: "llabs", scope: !15, file: !15, line: 844, type: !182, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DISubroutineType(types: !183)
!183 = !{!176, !176}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !185, file: !23, line: 216)
!185 = !DISubprogram(name: "lldiv", scope: !15, file: !15, line: 858, type: !186, flags: DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{!172, !176, !176}
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !189, file: !23, line: 227)
!189 = !DISubprogram(name: "atoll", scope: !15, file: !15, line: 112, type: !190, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!176, !55}
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !193, file: !23, line: 228)
!193 = !DISubprogram(name: "strtoll", scope: !15, file: !15, line: 200, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!176, !118, !146, !18}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !197, file: !23, line: 229)
!197 = !DISubprogram(name: "strtoull", scope: !15, file: !15, line: 205, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !118, !146, !18}
!200 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !202, file: !23, line: 231)
!202 = !DISubprogram(name: "strtof", scope: !15, file: !15, line: 123, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !118, !146}
!205 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !207, file: !23, line: 232)
!207 = !DISubprogram(name: "strtold", scope: !15, file: !15, line: 126, type: !208, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !118, !146}
!210 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !172, file: !23, line: 240)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !179, file: !23, line: 242)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !181, file: !23, line: 244)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !215, file: !23, line: 245)
!215 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !171, file: !23, line: 213, type: !186, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !185, file: !23, line: 246)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !189, file: !23, line: 248)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !202, file: !23, line: 249)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !193, file: !23, line: 250)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !197, file: !23, line: 251)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !207, file: !23, line: 252)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !223, file: !224, line: 57)
!223 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !225, file: !224, line: 79, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !226, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!224 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/exception_ptr.h", directory: "")
!225 = !DINamespace(name: "__exception_ptr", scope: !11)
!226 = !{!227, !228, !232, !235, !236, !241, !242, !246, !252, !256, !260, !263, !264, !267, !271}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !223, file: !224, line: 81, baseType: !39, size: 64)
!228 = !DISubprogram(name: "exception_ptr", scope: !223, file: !224, line: 83, type: !229, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231, !39}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!232 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !223, file: !224, line: 85, type: !233, scopeLine: 85, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !231}
!235 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !223, file: !224, line: 86, type: !233, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !223, file: !224, line: 88, type: !237, scopeLine: 88, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!39, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!241 = !DISubprogram(name: "exception_ptr", scope: !223, file: !224, line: 96, type: !233, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!242 = !DISubprogram(name: "exception_ptr", scope: !223, file: !224, line: 98, type: !243, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !231, !245}
!245 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !240, size: 64)
!246 = !DISubprogram(name: "exception_ptr", scope: !223, file: !224, line: 101, type: !247, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !231, !249}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !11, file: !250, line: 262, baseType: !251)
!250 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/c++config.h", directory: "")
!251 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!252 = !DISubprogram(name: "exception_ptr", scope: !223, file: !224, line: 105, type: !253, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !231, !255}
!255 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !223, size: 64)
!256 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !223, file: !224, line: 118, type: !257, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !231, !245}
!259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !223, size: 64)
!260 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !223, file: !224, line: 122, type: !261, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!259, !231, !255}
!263 = !DISubprogram(name: "~exception_ptr", scope: !223, file: !224, line: 129, type: !233, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!264 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !223, file: !224, line: 132, type: !265, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !231, !259}
!267 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !223, file: !224, line: 144, type: !268, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !239}
!270 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!271 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !223, file: !224, line: 153, type: !272, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !239}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !11, file: !277, line: 88, flags: DIFlagFwdDecl)
!277 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/typeinfo", directory: "")
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !225, entity: !279, file: !224, line: 73)
!279 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !11, file: !224, line: 69, type: !280, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !223}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !283, file: !298, line: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !284, line: 6, baseType: !285)
!284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !286, line: 21, baseType: !287)
!286 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !288, identifier: "_ZTS11__mbstate_t")
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !287, file: !286, line: 15, baseType: !18, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !287, file: !286, line: 20, baseType: !291, size: 32, offset: 32)
!291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !286, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !292, identifier: "_ZTSN11__mbstate_tUt_E")
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !291, file: !286, line: 18, baseType: !141, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !291, file: !286, line: 19, baseType: !295, size: 32)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 32, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 4)
!298 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwchar", directory: "")
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !300, file: !298, line: 141)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !301, line: 20, baseType: !141)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "")
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !303, file: !298, line: 143)
!303 = !DISubprogram(name: "btowc", scope: !304, file: !304, line: 284, type: !305, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!305 = !DISubroutineType(types: !306)
!306 = !{!300, !18}
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !308, file: !298, line: 144)
!308 = !DISubprogram(name: "fgetwc", scope: !304, file: !304, line: 726, type: !309, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!300, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !313, line: 5, baseType: !314)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !316, file: !298, line: 145)
!316 = !DISubprogram(name: "fgetws", scope: !304, file: !304, line: 755, type: !317, flags: DIFlagPrototyped, spFlags: 0)
!317 = !DISubroutineType(types: !318)
!318 = !{!116, !115, !18, !319}
!319 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !311)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !321, file: !298, line: 146)
!321 = !DISubprogram(name: "fputwc", scope: !304, file: !304, line: 740, type: !322, flags: DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!300, !117, !311}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !325, file: !298, line: 147)
!325 = !DISubprogram(name: "fputws", scope: !304, file: !304, line: 762, type: !326, flags: DIFlagPrototyped, spFlags: 0)
!326 = !DISubroutineType(types: !327)
!327 = !{!18, !163, !319}
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !329, file: !298, line: 148)
!329 = !DISubprogram(name: "fwide", scope: !304, file: !304, line: 573, type: !330, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!18, !311, !18}
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !333, file: !298, line: 149)
!333 = !DISubprogram(name: "fwprintf", scope: !304, file: !304, line: 580, type: !334, flags: DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{!18, !319, !163, null}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !337, file: !298, line: 150)
!337 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !304, file: !304, line: 640, type: !334, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !339, file: !298, line: 151)
!339 = !DISubprogram(name: "getwc", scope: !304, file: !304, line: 727, type: !309, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !341, file: !298, line: 152)
!341 = !DISubprogram(name: "getwchar", scope: !304, file: !304, line: 733, type: !342, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{!300}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !345, file: !298, line: 153)
!345 = !DISubprogram(name: "mbrlen", scope: !304, file: !304, line: 307, type: !346, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{!40, !118, !40, !348}
!348 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !351, file: !298, line: 154)
!351 = !DISubprogram(name: "mbrtowc", scope: !304, file: !304, line: 296, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{!40, !115, !118, !40, !348}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !355, file: !298, line: 155)
!355 = !DISubprogram(name: "mbsinit", scope: !304, file: !304, line: 292, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!356 = !DISubroutineType(types: !357)
!357 = !{!18, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !361, file: !298, line: 156)
!361 = !DISubprogram(name: "mbsrtowcs", scope: !304, file: !304, line: 337, type: !362, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{!40, !115, !364, !40, !348}
!364 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !367, file: !298, line: 157)
!367 = !DISubprogram(name: "putwc", scope: !304, file: !304, line: 741, type: !322, flags: DIFlagPrototyped, spFlags: 0)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !369, file: !298, line: 158)
!369 = !DISubprogram(name: "putwchar", scope: !304, file: !304, line: 747, type: !370, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DISubroutineType(types: !371)
!371 = !{!300, !117}
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !373, file: !298, line: 160)
!373 = !DISubprogram(name: "swprintf", scope: !304, file: !304, line: 590, type: !374, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DISubroutineType(types: !375)
!375 = !{!18, !115, !40, !163, null}
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !377, file: !298, line: 162)
!377 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !304, file: !304, line: 647, type: !378, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DISubroutineType(types: !379)
!379 = !{!18, !163, !163, null}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !381, file: !298, line: 163)
!381 = !DISubprogram(name: "ungetwc", scope: !304, file: !304, line: 770, type: !382, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{!300, !300, !311}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !385, file: !298, line: 164)
!385 = !DISubprogram(name: "vfwprintf", scope: !304, file: !304, line: 598, type: !386, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DISubroutineType(types: !387)
!387 = !{!18, !319, !163, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !5, size: 192, flags: DIFlagTypePassByValue, elements: !390, identifier: "_ZTS13__va_list_tag")
!390 = !{!391, !392, !393, !394}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !389, file: !5, baseType: !141, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !389, file: !5, baseType: !141, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !389, file: !5, baseType: !39, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !389, file: !5, baseType: !39, size: 64, offset: 128)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !396, file: !298, line: 166)
!396 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !304, file: !304, line: 693, type: !386, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !398, file: !298, line: 169)
!398 = !DISubprogram(name: "vswprintf", scope: !304, file: !304, line: 611, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{!18, !115, !40, !163, !388}
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !402, file: !298, line: 172)
!402 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !304, file: !304, line: 700, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{!18, !163, !163, !388}
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !406, file: !298, line: 174)
!406 = !DISubprogram(name: "vwprintf", scope: !304, file: !304, line: 606, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!18, !163, !388}
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !410, file: !298, line: 176)
!410 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !304, file: !304, line: 697, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !412, file: !298, line: 178)
!412 = !DISubprogram(name: "wcrtomb", scope: !304, file: !304, line: 301, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DISubroutineType(types: !414)
!414 = !{!40, !162, !117, !348}
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !416, file: !298, line: 179)
!416 = !DISubprogram(name: "wcscat", scope: !304, file: !304, line: 97, type: !417, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DISubroutineType(types: !418)
!418 = !{!116, !115, !163}
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !420, file: !298, line: 180)
!420 = !DISubprogram(name: "wcscmp", scope: !304, file: !304, line: 106, type: !421, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DISubroutineType(types: !422)
!422 = !{!18, !164, !164}
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !424, file: !298, line: 181)
!424 = !DISubprogram(name: "wcscoll", scope: !304, file: !304, line: 131, type: !421, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !426, file: !298, line: 182)
!426 = !DISubprogram(name: "wcscpy", scope: !304, file: !304, line: 87, type: !417, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !428, file: !298, line: 183)
!428 = !DISubprogram(name: "wcscspn", scope: !304, file: !304, line: 187, type: !429, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!40, !164, !164}
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !432, file: !298, line: 184)
!432 = !DISubprogram(name: "wcsftime", scope: !304, file: !304, line: 834, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!40, !115, !40, !163, !435}
!435 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !304, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !440, file: !298, line: 185)
!440 = !DISubprogram(name: "wcslen", scope: !304, file: !304, line: 222, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!40, !164}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !444, file: !298, line: 186)
!444 = !DISubprogram(name: "wcsncat", scope: !304, file: !304, line: 101, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!116, !115, !163, !40}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !448, file: !298, line: 187)
!448 = !DISubprogram(name: "wcsncmp", scope: !304, file: !304, line: 109, type: !449, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!18, !164, !164, !40}
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !452, file: !298, line: 188)
!452 = !DISubprogram(name: "wcsncpy", scope: !304, file: !304, line: 92, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !454, file: !298, line: 189)
!454 = !DISubprogram(name: "wcsrtombs", scope: !304, file: !304, line: 343, type: !455, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!40, !162, !457, !40, !348}
!457 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !460, file: !298, line: 190)
!460 = !DISubprogram(name: "wcsspn", scope: !304, file: !304, line: 191, type: !429, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !462, file: !298, line: 191)
!462 = !DISubprogram(name: "wcstod", scope: !304, file: !304, line: 377, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!54, !163, !465}
!465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !468, file: !298, line: 193)
!468 = !DISubprogram(name: "wcstof", scope: !304, file: !304, line: 382, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!205, !163, !465}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !472, file: !298, line: 195)
!472 = !DISubprogram(name: "wcstok", scope: !304, file: !304, line: 217, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!116, !115, !163, !465}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !476, file: !298, line: 196)
!476 = !DISubprogram(name: "wcstol", scope: !304, file: !304, line: 428, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!29, !163, !465, !18}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !480, file: !298, line: 197)
!480 = !DISubprogram(name: "wcstoul", scope: !304, file: !304, line: 433, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!42, !163, !465, !18}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !484, file: !298, line: 198)
!484 = !DISubprogram(name: "wcsxfrm", scope: !304, file: !304, line: 135, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!40, !115, !163, !40}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !488, file: !298, line: 199)
!488 = !DISubprogram(name: "wctob", scope: !304, file: !304, line: 288, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!18, !300}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !492, file: !298, line: 200)
!492 = !DISubprogram(name: "wmemcmp", scope: !304, file: !304, line: 258, type: !449, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !494, file: !298, line: 201)
!494 = !DISubprogram(name: "wmemcpy", scope: !304, file: !304, line: 262, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !496, file: !298, line: 202)
!496 = !DISubprogram(name: "wmemmove", scope: !304, file: !304, line: 267, type: !497, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{!116, !116, !164, !40}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !500, file: !298, line: 203)
!500 = !DISubprogram(name: "wmemset", scope: !304, file: !304, line: 271, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!116, !116, !117, !40}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !504, file: !298, line: 204)
!504 = !DISubprogram(name: "wprintf", scope: !304, file: !304, line: 587, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{!18, !163, null}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !508, file: !298, line: 205)
!508 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !304, file: !304, line: 644, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !510, file: !298, line: 206)
!510 = !DISubprogram(name: "wcschr", scope: !304, file: !304, line: 164, type: !511, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DISubroutineType(types: !512)
!512 = !{!116, !164, !117}
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !514, file: !298, line: 207)
!514 = !DISubprogram(name: "wcspbrk", scope: !304, file: !304, line: 201, type: !515, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{!116, !164, !164}
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !518, file: !298, line: 208)
!518 = !DISubprogram(name: "wcsrchr", scope: !304, file: !304, line: 174, type: !511, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !520, file: !298, line: 209)
!520 = !DISubprogram(name: "wcsstr", scope: !304, file: !304, line: 212, type: !515, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !522, file: !298, line: 210)
!522 = !DISubprogram(name: "wmemchr", scope: !304, file: !304, line: 253, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!116, !164, !117, !40}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !526, file: !298, line: 251)
!526 = !DISubprogram(name: "wcstold", scope: !304, file: !304, line: 384, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!210, !163, !465}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !530, file: !298, line: 260)
!530 = !DISubprogram(name: "wcstoll", scope: !304, file: !304, line: 441, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{!176, !163, !465, !18}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !534, file: !298, line: 261)
!534 = !DISubprogram(name: "wcstoull", scope: !304, file: !304, line: 448, type: !535, flags: DIFlagPrototyped, spFlags: 0)
!535 = !DISubroutineType(types: !536)
!536 = !{!200, !163, !465, !18}
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !526, file: !298, line: 267)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !530, file: !298, line: 268)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !534, file: !298, line: 269)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !468, file: !298, line: 283)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !396, file: !298, line: 286)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !402, file: !298, line: 289)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !410, file: !298, line: 292)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !526, file: !298, line: 296)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !530, file: !298, line: 297)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !534, file: !298, line: 298)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !548, file: !551, line: 47)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !549, line: 224, baseType: !550)
!549 = !DIFile(filename: "vcpkg_ubuntu-20.04_llvm-9_amd64/installed/x64-linux-rel/tools/llvm/lib/clang/9.0.1/include/stdint.h", directory: "/mnt/g/build")
!550 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!551 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdint", directory: "")
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !553, file: !551, line: 48)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !549, line: 205, baseType: !554)
!554 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !556, file: !551, line: 49)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !549, line: 167, baseType: !18)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !558, file: !551, line: 50)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !549, line: 96, baseType: !29)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !560, file: !551, line: 52)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !549, line: 234, baseType: !548)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !562, file: !551, line: 53)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !549, line: 217, baseType: !553)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !564, file: !551, line: 54)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !549, line: 186, baseType: !556)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !566, file: !551, line: 55)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !549, line: 112, baseType: !558)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !568, file: !551, line: 57)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !549, line: 232, baseType: !548)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !570, file: !551, line: 58)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !549, line: 215, baseType: !553)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !572, file: !551, line: 59)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !549, line: 184, baseType: !556)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !574, file: !551, line: 60)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !549, line: 110, baseType: !558)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !576, file: !551, line: 62)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !549, line: 262, baseType: !29)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !578, file: !551, line: 63)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !549, line: 249, baseType: !29)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !580, file: !551, line: 65)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !549, line: 226, baseType: !581)
!581 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !583, file: !551, line: 66)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !549, line: 207, baseType: !584)
!584 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !586, file: !551, line: 67)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !549, line: 172, baseType: !141)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !588, file: !551, line: 68)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !549, line: 98, baseType: !42)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !590, file: !551, line: 70)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !549, line: 235, baseType: !580)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !592, file: !551, line: 71)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !549, line: 218, baseType: !583)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !594, file: !551, line: 72)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !549, line: 187, baseType: !586)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !596, file: !551, line: 73)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !549, line: 113, baseType: !588)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !598, file: !551, line: 75)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !549, line: 233, baseType: !580)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !600, file: !551, line: 76)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !549, line: 216, baseType: !583)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !602, file: !551, line: 77)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !549, line: 185, baseType: !586)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !604, file: !551, line: 78)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !549, line: 111, baseType: !588)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !606, file: !551, line: 80)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !549, line: 263, baseType: !42)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !608, file: !551, line: 81)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !549, line: 256, baseType: !42)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !610, file: !611, line: 44)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !11, file: !250, line: 258, baseType: !42)
!611 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext/new_allocator.h", directory: "")
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !613, file: !611, line: 45)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !11, file: !250, line: 259, baseType: !29)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !615, file: !617, line: 53)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !616, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!616 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!617 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/clocale", directory: "")
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !619, file: !617, line: 54)
!619 = !DISubprogram(name: "setlocale", scope: !616, file: !616, line: 122, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!94, !18, !55}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !623, file: !617, line: 55)
!623 = !DISubprogram(name: "localeconv", scope: !616, file: !616, line: 125, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !628, file: !630, line: 64)
!628 = !DISubprogram(name: "isalnum", scope: !629, file: !629, line: 108, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!630 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cctype", directory: "")
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !632, file: !630, line: 65)
!632 = !DISubprogram(name: "isalpha", scope: !629, file: !629, line: 109, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !634, file: !630, line: 66)
!634 = !DISubprogram(name: "iscntrl", scope: !629, file: !629, line: 110, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !636, file: !630, line: 67)
!636 = !DISubprogram(name: "isdigit", scope: !629, file: !629, line: 111, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !638, file: !630, line: 68)
!638 = !DISubprogram(name: "isgraph", scope: !629, file: !629, line: 113, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !640, file: !630, line: 69)
!640 = !DISubprogram(name: "islower", scope: !629, file: !629, line: 112, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !642, file: !630, line: 70)
!642 = !DISubprogram(name: "isprint", scope: !629, file: !629, line: 114, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !644, file: !630, line: 71)
!644 = !DISubprogram(name: "ispunct", scope: !629, file: !629, line: 115, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !646, file: !630, line: 72)
!646 = !DISubprogram(name: "isspace", scope: !629, file: !629, line: 116, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !648, file: !630, line: 73)
!648 = !DISubprogram(name: "isupper", scope: !629, file: !629, line: 117, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !650, file: !630, line: 74)
!650 = !DISubprogram(name: "isxdigit", scope: !629, file: !629, line: 118, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !652, file: !630, line: 75)
!652 = !DISubprogram(name: "tolower", scope: !629, file: !629, line: 122, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !654, file: !630, line: 76)
!654 = !DISubprogram(name: "toupper", scope: !629, file: !629, line: 125, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !656, file: !630, line: 87)
!656 = !DISubprogram(name: "isblank", scope: !629, file: !629, line: 130, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !658, file: !660, line: 98)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !659, line: 7, baseType: !314)
!659 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!660 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdio", directory: "")
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !662, file: !660, line: 99)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !663, line: 84, baseType: !664)
!663 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !665, line: 14, baseType: !666)
!665 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "")
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !665, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !668, file: !660, line: 101)
!668 = !DISubprogram(name: "clearerr", scope: !663, file: !663, line: 757, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !673, file: !660, line: 102)
!673 = !DISubprogram(name: "fclose", scope: !663, file: !663, line: 213, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{!18, !671}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !677, file: !660, line: 103)
!677 = !DISubprogram(name: "feof", scope: !663, file: !663, line: 759, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !679, file: !660, line: 104)
!679 = !DISubprogram(name: "ferror", scope: !663, file: !663, line: 761, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !681, file: !660, line: 105)
!681 = !DISubprogram(name: "fflush", scope: !663, file: !663, line: 218, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !683, file: !660, line: 106)
!683 = !DISubprogram(name: "fgetc", scope: !663, file: !663, line: 485, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !685, file: !660, line: 107)
!685 = !DISubprogram(name: "fgetpos", scope: !663, file: !663, line: 731, type: !686, flags: DIFlagPrototyped, spFlags: 0)
!686 = !DISubroutineType(types: !687)
!687 = !{!18, !688, !689}
!688 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !671)
!689 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !692, file: !660, line: 108)
!692 = !DISubprogram(name: "fgets", scope: !663, file: !663, line: 564, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{!94, !162, !18, !688}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !696, file: !660, line: 109)
!696 = !DISubprogram(name: "fopen", scope: !663, file: !663, line: 246, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!671, !118, !118}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !700, file: !660, line: 110)
!700 = !DISubprogram(name: "fprintf", scope: !663, file: !663, line: 326, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!18, !688, !118, null}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !704, file: !660, line: 111)
!704 = !DISubprogram(name: "fputc", scope: !663, file: !663, line: 521, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!18, !18, !671}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !708, file: !660, line: 112)
!708 = !DISubprogram(name: "fputs", scope: !663, file: !663, line: 626, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!18, !118, !688}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !712, file: !660, line: 113)
!712 = !DISubprogram(name: "fread", scope: !663, file: !663, line: 646, type: !713, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DISubroutineType(types: !714)
!714 = !{!40, !715, !40, !40, !688}
!715 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !717, file: !660, line: 114)
!717 = !DISubprogram(name: "freopen", scope: !663, file: !663, line: 252, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!671, !118, !118, !688}
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !721, file: !660, line: 115)
!721 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !663, file: !663, line: 407, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !723, file: !660, line: 116)
!723 = !DISubprogram(name: "fseek", scope: !663, file: !663, line: 684, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!18, !671, !29, !18}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !727, file: !660, line: 117)
!727 = !DISubprogram(name: "fsetpos", scope: !663, file: !663, line: 736, type: !728, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{!18, !671, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !733, file: !660, line: 118)
!733 = !DISubprogram(name: "ftell", scope: !663, file: !663, line: 689, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{!29, !671}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !737, file: !660, line: 119)
!737 = !DISubprogram(name: "fwrite", scope: !663, file: !663, line: 652, type: !738, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{!40, !740, !40, !40, !688}
!740 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !742, file: !660, line: 120)
!742 = !DISubprogram(name: "getc", scope: !663, file: !663, line: 486, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !744, file: !660, line: 121)
!744 = !DISubprogram(name: "getchar", scope: !663, file: !663, line: 492, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !746, file: !660, line: 126)
!746 = !DISubprogram(name: "perror", scope: !663, file: !663, line: 775, type: !747, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !55}
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !750, file: !660, line: 127)
!750 = !DISubprogram(name: "printf", scope: !663, file: !663, line: 332, type: !751, flags: DIFlagPrototyped, spFlags: 0)
!751 = !DISubroutineType(types: !752)
!752 = !{!18, !118, null}
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !754, file: !660, line: 128)
!754 = !DISubprogram(name: "putc", scope: !663, file: !663, line: 522, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !756, file: !660, line: 129)
!756 = !DISubprogram(name: "putchar", scope: !663, file: !663, line: 528, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !758, file: !660, line: 130)
!758 = !DISubprogram(name: "puts", scope: !663, file: !663, line: 632, type: !60, flags: DIFlagPrototyped, spFlags: 0)
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !760, file: !660, line: 131)
!760 = !DISubprogram(name: "remove", scope: !663, file: !663, line: 146, type: !60, flags: DIFlagPrototyped, spFlags: 0)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !762, file: !660, line: 132)
!762 = !DISubprogram(name: "rename", scope: !663, file: !663, line: 148, type: !763, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DISubroutineType(types: !764)
!764 = !{!18, !55, !55}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !766, file: !660, line: 133)
!766 = !DISubprogram(name: "rewind", scope: !663, file: !663, line: 694, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !768, file: !660, line: 134)
!768 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !663, file: !663, line: 410, type: !751, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !770, file: !660, line: 135)
!770 = !DISubprogram(name: "setbuf", scope: !663, file: !663, line: 304, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !688, !162}
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !774, file: !660, line: 136)
!774 = !DISubprogram(name: "setvbuf", scope: !663, file: !663, line: 308, type: !775, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DISubroutineType(types: !776)
!776 = !{!18, !688, !162, !18, !40}
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !778, file: !660, line: 137)
!778 = !DISubprogram(name: "sprintf", scope: !663, file: !663, line: 334, type: !779, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DISubroutineType(types: !780)
!780 = !{!18, !162, !118, null}
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !782, file: !660, line: 138)
!782 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !663, file: !663, line: 412, type: !783, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DISubroutineType(types: !784)
!784 = !{!18, !118, !118, null}
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !786, file: !660, line: 139)
!786 = !DISubprogram(name: "tmpfile", scope: !663, file: !663, line: 173, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{!671}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !790, file: !660, line: 141)
!790 = !DISubprogram(name: "tmpnam", scope: !663, file: !663, line: 187, type: !791, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{!94, !94}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !794, file: !660, line: 143)
!794 = !DISubprogram(name: "ungetc", scope: !663, file: !663, line: 639, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !796, file: !660, line: 144)
!796 = !DISubprogram(name: "vfprintf", scope: !663, file: !663, line: 341, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!18, !688, !118, !388}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !800, file: !660, line: 145)
!800 = !DISubprogram(name: "vprintf", scope: !663, file: !663, line: 347, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!18, !118, !388}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !804, file: !660, line: 146)
!804 = !DISubprogram(name: "vsprintf", scope: !663, file: !663, line: 349, type: !805, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!18, !162, !118, !388}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !808, file: !660, line: 175)
!808 = !DISubprogram(name: "snprintf", scope: !663, file: !663, line: 354, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{!18, !162, !40, !118, null}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !812, file: !660, line: 176)
!812 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !663, file: !663, line: 451, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !814, file: !660, line: 177)
!814 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !663, file: !663, line: 456, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !816, file: !660, line: 178)
!816 = !DISubprogram(name: "vsnprintf", scope: !663, file: !663, line: 358, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DISubroutineType(types: !818)
!818 = !{!18, !162, !40, !118, !388}
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !171, entity: !820, file: !660, line: 179)
!820 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !663, file: !663, line: 459, type: !821, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DISubroutineType(types: !822)
!822 = !{!18, !118, !118, !388}
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !808, file: !660, line: 185)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !812, file: !660, line: 186)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !814, file: !660, line: 187)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !816, file: !660, line: 188)
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !820, file: !660, line: 189)
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !829, file: !833, line: 83)
!829 = !DISubprogram(name: "acos", scope: !830, file: !830, line: 53, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!830 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "")
!831 = !DISubroutineType(types: !832)
!832 = !{!54, !54}
!833 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cmath", directory: "")
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !835, file: !833, line: 102)
!835 = !DISubprogram(name: "asin", scope: !830, file: !830, line: 55, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !837, file: !833, line: 121)
!837 = !DISubprogram(name: "atan", scope: !830, file: !830, line: 57, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !839, file: !833, line: 140)
!839 = !DISubprogram(name: "atan2", scope: !830, file: !830, line: 59, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{!54, !54, !54}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !843, file: !833, line: 161)
!843 = !DISubprogram(name: "ceil", scope: !830, file: !830, line: 159, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !845, file: !833, line: 180)
!845 = !DISubprogram(name: "cos", scope: !830, file: !830, line: 62, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !847, file: !833, line: 199)
!847 = !DISubprogram(name: "cosh", scope: !830, file: !830, line: 71, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !849, file: !833, line: 218)
!849 = !DISubprogram(name: "exp", scope: !830, file: !830, line: 95, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !851, file: !833, line: 237)
!851 = !DISubprogram(name: "fabs", scope: !830, file: !830, line: 162, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !853, file: !833, line: 256)
!853 = !DISubprogram(name: "floor", scope: !830, file: !830, line: 165, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !855, file: !833, line: 275)
!855 = !DISubprogram(name: "fmod", scope: !830, file: !830, line: 168, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !857, file: !833, line: 296)
!857 = !DISubprogram(name: "frexp", scope: !830, file: !830, line: 98, type: !858, flags: DIFlagPrototyped, spFlags: 0)
!858 = !DISubroutineType(types: !859)
!859 = !{!54, !54, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !862, file: !833, line: 315)
!862 = !DISubprogram(name: "ldexp", scope: !830, file: !830, line: 101, type: !863, flags: DIFlagPrototyped, spFlags: 0)
!863 = !DISubroutineType(types: !864)
!864 = !{!54, !54, !18}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !866, file: !833, line: 334)
!866 = !DISubprogram(name: "log", scope: !830, file: !830, line: 104, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !868, file: !833, line: 353)
!868 = !DISubprogram(name: "log10", scope: !830, file: !830, line: 107, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !870, file: !833, line: 372)
!870 = !DISubprogram(name: "modf", scope: !830, file: !830, line: 110, type: !871, flags: DIFlagPrototyped, spFlags: 0)
!871 = !DISubroutineType(types: !872)
!872 = !{!54, !54, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !875, file: !833, line: 384)
!875 = !DISubprogram(name: "pow", scope: !830, file: !830, line: 140, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !877, file: !833, line: 421)
!877 = !DISubprogram(name: "sin", scope: !830, file: !830, line: 64, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !879, file: !833, line: 440)
!879 = !DISubprogram(name: "sinh", scope: !830, file: !830, line: 73, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !881, file: !833, line: 459)
!881 = !DISubprogram(name: "sqrt", scope: !830, file: !830, line: 143, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !883, file: !833, line: 478)
!883 = !DISubprogram(name: "tan", scope: !830, file: !830, line: 66, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !885, file: !833, line: 497)
!885 = !DISubprogram(name: "tanh", scope: !830, file: !830, line: 75, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !887, file: !833, line: 1065)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !888, line: 150, baseType: !54)
!888 = !DIFile(filename: "/usr/include/math.h", directory: "")
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !890, file: !833, line: 1066)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !888, line: 149, baseType: !205)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !892, file: !833, line: 1069)
!892 = !DISubprogram(name: "acosh", scope: !830, file: !830, line: 85, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !894, file: !833, line: 1070)
!894 = !DISubprogram(name: "acoshf", scope: !830, file: !830, line: 85, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DISubroutineType(types: !896)
!896 = !{!205, !205}
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !898, file: !833, line: 1071)
!898 = !DISubprogram(name: "acoshl", scope: !830, file: !830, line: 85, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DISubroutineType(types: !900)
!900 = !{!210, !210}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !902, file: !833, line: 1073)
!902 = !DISubprogram(name: "asinh", scope: !830, file: !830, line: 87, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !904, file: !833, line: 1074)
!904 = !DISubprogram(name: "asinhf", scope: !830, file: !830, line: 87, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !906, file: !833, line: 1075)
!906 = !DISubprogram(name: "asinhl", scope: !830, file: !830, line: 87, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !908, file: !833, line: 1077)
!908 = !DISubprogram(name: "atanh", scope: !830, file: !830, line: 89, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !910, file: !833, line: 1078)
!910 = !DISubprogram(name: "atanhf", scope: !830, file: !830, line: 89, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !912, file: !833, line: 1079)
!912 = !DISubprogram(name: "atanhl", scope: !830, file: !830, line: 89, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !914, file: !833, line: 1081)
!914 = !DISubprogram(name: "cbrt", scope: !830, file: !830, line: 152, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !916, file: !833, line: 1082)
!916 = !DISubprogram(name: "cbrtf", scope: !830, file: !830, line: 152, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !918, file: !833, line: 1083)
!918 = !DISubprogram(name: "cbrtl", scope: !830, file: !830, line: 152, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !920, file: !833, line: 1085)
!920 = !DISubprogram(name: "copysign", scope: !830, file: !830, line: 196, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !922, file: !833, line: 1086)
!922 = !DISubprogram(name: "copysignf", scope: !830, file: !830, line: 196, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!923 = !DISubroutineType(types: !924)
!924 = !{!205, !205, !205}
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !926, file: !833, line: 1087)
!926 = !DISubprogram(name: "copysignl", scope: !830, file: !830, line: 196, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!927 = !DISubroutineType(types: !928)
!928 = !{!210, !210, !210}
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !930, file: !833, line: 1089)
!930 = !DISubprogram(name: "erf", scope: !830, file: !830, line: 228, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !932, file: !833, line: 1090)
!932 = !DISubprogram(name: "erff", scope: !830, file: !830, line: 228, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !934, file: !833, line: 1091)
!934 = !DISubprogram(name: "erfl", scope: !830, file: !830, line: 228, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !936, file: !833, line: 1093)
!936 = !DISubprogram(name: "erfc", scope: !830, file: !830, line: 229, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !938, file: !833, line: 1094)
!938 = !DISubprogram(name: "erfcf", scope: !830, file: !830, line: 229, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !940, file: !833, line: 1095)
!940 = !DISubprogram(name: "erfcl", scope: !830, file: !830, line: 229, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !942, file: !833, line: 1097)
!942 = !DISubprogram(name: "exp2", scope: !830, file: !830, line: 130, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !944, file: !833, line: 1098)
!944 = !DISubprogram(name: "exp2f", scope: !830, file: !830, line: 130, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !946, file: !833, line: 1099)
!946 = !DISubprogram(name: "exp2l", scope: !830, file: !830, line: 130, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !948, file: !833, line: 1101)
!948 = !DISubprogram(name: "expm1", scope: !830, file: !830, line: 119, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !950, file: !833, line: 1102)
!950 = !DISubprogram(name: "expm1f", scope: !830, file: !830, line: 119, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !952, file: !833, line: 1103)
!952 = !DISubprogram(name: "expm1l", scope: !830, file: !830, line: 119, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !954, file: !833, line: 1105)
!954 = !DISubprogram(name: "fdim", scope: !830, file: !830, line: 326, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !956, file: !833, line: 1106)
!956 = !DISubprogram(name: "fdimf", scope: !830, file: !830, line: 326, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !958, file: !833, line: 1107)
!958 = !DISubprogram(name: "fdiml", scope: !830, file: !830, line: 326, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !960, file: !833, line: 1109)
!960 = !DISubprogram(name: "fma", scope: !830, file: !830, line: 335, type: !961, flags: DIFlagPrototyped, spFlags: 0)
!961 = !DISubroutineType(types: !962)
!962 = !{!54, !54, !54, !54}
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !964, file: !833, line: 1110)
!964 = !DISubprogram(name: "fmaf", scope: !830, file: !830, line: 335, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!965 = !DISubroutineType(types: !966)
!966 = !{!205, !205, !205, !205}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !968, file: !833, line: 1111)
!968 = !DISubprogram(name: "fmal", scope: !830, file: !830, line: 335, type: !969, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DISubroutineType(types: !970)
!970 = !{!210, !210, !210, !210}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !972, file: !833, line: 1113)
!972 = !DISubprogram(name: "fmax", scope: !830, file: !830, line: 329, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !974, file: !833, line: 1114)
!974 = !DISubprogram(name: "fmaxf", scope: !830, file: !830, line: 329, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !976, file: !833, line: 1115)
!976 = !DISubprogram(name: "fmaxl", scope: !830, file: !830, line: 329, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !978, file: !833, line: 1117)
!978 = !DISubprogram(name: "fmin", scope: !830, file: !830, line: 332, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !980, file: !833, line: 1118)
!980 = !DISubprogram(name: "fminf", scope: !830, file: !830, line: 332, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !982, file: !833, line: 1119)
!982 = !DISubprogram(name: "fminl", scope: !830, file: !830, line: 332, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !984, file: !833, line: 1121)
!984 = !DISubprogram(name: "hypot", scope: !830, file: !830, line: 147, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !986, file: !833, line: 1122)
!986 = !DISubprogram(name: "hypotf", scope: !830, file: !830, line: 147, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !988, file: !833, line: 1123)
!988 = !DISubprogram(name: "hypotl", scope: !830, file: !830, line: 147, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !990, file: !833, line: 1125)
!990 = !DISubprogram(name: "ilogb", scope: !830, file: !830, line: 280, type: !991, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{!18, !54}
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !994, file: !833, line: 1126)
!994 = !DISubprogram(name: "ilogbf", scope: !830, file: !830, line: 280, type: !995, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DISubroutineType(types: !996)
!996 = !{!18, !205}
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !998, file: !833, line: 1127)
!998 = !DISubprogram(name: "ilogbl", scope: !830, file: !830, line: 280, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!18, !210}
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1002, file: !833, line: 1129)
!1002 = !DISubprogram(name: "lgamma", scope: !830, file: !830, line: 230, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1004, file: !833, line: 1130)
!1004 = !DISubprogram(name: "lgammaf", scope: !830, file: !830, line: 230, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1006, file: !833, line: 1131)
!1006 = !DISubprogram(name: "lgammal", scope: !830, file: !830, line: 230, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1008, file: !833, line: 1134)
!1008 = !DISubprogram(name: "llrint", scope: !830, file: !830, line: 316, type: !1009, flags: DIFlagPrototyped, spFlags: 0)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!176, !54}
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1012, file: !833, line: 1135)
!1012 = !DISubprogram(name: "llrintf", scope: !830, file: !830, line: 316, type: !1013, flags: DIFlagPrototyped, spFlags: 0)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!176, !205}
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1016, file: !833, line: 1136)
!1016 = !DISubprogram(name: "llrintl", scope: !830, file: !830, line: 316, type: !1017, flags: DIFlagPrototyped, spFlags: 0)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!176, !210}
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1020, file: !833, line: 1138)
!1020 = !DISubprogram(name: "llround", scope: !830, file: !830, line: 322, type: !1009, flags: DIFlagPrototyped, spFlags: 0)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1022, file: !833, line: 1139)
!1022 = !DISubprogram(name: "llroundf", scope: !830, file: !830, line: 322, type: !1013, flags: DIFlagPrototyped, spFlags: 0)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1024, file: !833, line: 1140)
!1024 = !DISubprogram(name: "llroundl", scope: !830, file: !830, line: 322, type: !1017, flags: DIFlagPrototyped, spFlags: 0)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1026, file: !833, line: 1143)
!1026 = !DISubprogram(name: "log1p", scope: !830, file: !830, line: 122, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1028, file: !833, line: 1144)
!1028 = !DISubprogram(name: "log1pf", scope: !830, file: !830, line: 122, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1030, file: !833, line: 1145)
!1030 = !DISubprogram(name: "log1pl", scope: !830, file: !830, line: 122, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1032, file: !833, line: 1147)
!1032 = !DISubprogram(name: "log2", scope: !830, file: !830, line: 133, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1034, file: !833, line: 1148)
!1034 = !DISubprogram(name: "log2f", scope: !830, file: !830, line: 133, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1036, file: !833, line: 1149)
!1036 = !DISubprogram(name: "log2l", scope: !830, file: !830, line: 133, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1038, file: !833, line: 1151)
!1038 = !DISubprogram(name: "logb", scope: !830, file: !830, line: 125, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1040, file: !833, line: 1152)
!1040 = !DISubprogram(name: "logbf", scope: !830, file: !830, line: 125, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1041 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1042, file: !833, line: 1153)
!1042 = !DISubprogram(name: "logbl", scope: !830, file: !830, line: 125, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1044, file: !833, line: 1155)
!1044 = !DISubprogram(name: "lrint", scope: !830, file: !830, line: 314, type: !1045, flags: DIFlagPrototyped, spFlags: 0)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!29, !54}
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1048, file: !833, line: 1156)
!1048 = !DISubprogram(name: "lrintf", scope: !830, file: !830, line: 314, type: !1049, flags: DIFlagPrototyped, spFlags: 0)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!29, !205}
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1052, file: !833, line: 1157)
!1052 = !DISubprogram(name: "lrintl", scope: !830, file: !830, line: 314, type: !1053, flags: DIFlagPrototyped, spFlags: 0)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!29, !210}
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1056, file: !833, line: 1159)
!1056 = !DISubprogram(name: "lround", scope: !830, file: !830, line: 320, type: !1045, flags: DIFlagPrototyped, spFlags: 0)
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1058, file: !833, line: 1160)
!1058 = !DISubprogram(name: "lroundf", scope: !830, file: !830, line: 320, type: !1049, flags: DIFlagPrototyped, spFlags: 0)
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1060, file: !833, line: 1161)
!1060 = !DISubprogram(name: "lroundl", scope: !830, file: !830, line: 320, type: !1053, flags: DIFlagPrototyped, spFlags: 0)
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1062, file: !833, line: 1163)
!1062 = !DISubprogram(name: "nan", scope: !830, file: !830, line: 201, type: !52, flags: DIFlagPrototyped, spFlags: 0)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1064, file: !833, line: 1164)
!1064 = !DISubprogram(name: "nanf", scope: !830, file: !830, line: 201, type: !1065, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!205, !55}
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1068, file: !833, line: 1165)
!1068 = !DISubprogram(name: "nanl", scope: !830, file: !830, line: 201, type: !1069, flags: DIFlagPrototyped, spFlags: 0)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!210, !55}
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1072, file: !833, line: 1167)
!1072 = !DISubprogram(name: "nearbyint", scope: !830, file: !830, line: 294, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1074, file: !833, line: 1168)
!1074 = !DISubprogram(name: "nearbyintf", scope: !830, file: !830, line: 294, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1076, file: !833, line: 1169)
!1076 = !DISubprogram(name: "nearbyintl", scope: !830, file: !830, line: 294, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1078, file: !833, line: 1171)
!1078 = !DISubprogram(name: "nextafter", scope: !830, file: !830, line: 259, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1080, file: !833, line: 1172)
!1080 = !DISubprogram(name: "nextafterf", scope: !830, file: !830, line: 259, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1082, file: !833, line: 1173)
!1082 = !DISubprogram(name: "nextafterl", scope: !830, file: !830, line: 259, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1084, file: !833, line: 1175)
!1084 = !DISubprogram(name: "nexttoward", scope: !830, file: !830, line: 261, type: !1085, flags: DIFlagPrototyped, spFlags: 0)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!54, !54, !210}
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1088, file: !833, line: 1176)
!1088 = !DISubprogram(name: "nexttowardf", scope: !830, file: !830, line: 261, type: !1089, flags: DIFlagPrototyped, spFlags: 0)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!205, !205, !210}
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1092, file: !833, line: 1177)
!1092 = !DISubprogram(name: "nexttowardl", scope: !830, file: !830, line: 261, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1094, file: !833, line: 1179)
!1094 = !DISubprogram(name: "remainder", scope: !830, file: !830, line: 272, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1096, file: !833, line: 1180)
!1096 = !DISubprogram(name: "remainderf", scope: !830, file: !830, line: 272, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1098, file: !833, line: 1181)
!1098 = !DISubprogram(name: "remainderl", scope: !830, file: !830, line: 272, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1100, file: !833, line: 1183)
!1100 = !DISubprogram(name: "remquo", scope: !830, file: !830, line: 307, type: !1101, flags: DIFlagPrototyped, spFlags: 0)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!54, !54, !54, !860}
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1104, file: !833, line: 1184)
!1104 = !DISubprogram(name: "remquof", scope: !830, file: !830, line: 307, type: !1105, flags: DIFlagPrototyped, spFlags: 0)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!205, !205, !205, !860}
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1108, file: !833, line: 1185)
!1108 = !DISubprogram(name: "remquol", scope: !830, file: !830, line: 307, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!210, !210, !210, !860}
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1112, file: !833, line: 1187)
!1112 = !DISubprogram(name: "rint", scope: !830, file: !830, line: 256, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1114, file: !833, line: 1188)
!1114 = !DISubprogram(name: "rintf", scope: !830, file: !830, line: 256, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1116, file: !833, line: 1189)
!1116 = !DISubprogram(name: "rintl", scope: !830, file: !830, line: 256, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1118, file: !833, line: 1191)
!1118 = !DISubprogram(name: "round", scope: !830, file: !830, line: 298, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1120, file: !833, line: 1192)
!1120 = !DISubprogram(name: "roundf", scope: !830, file: !830, line: 298, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1122, file: !833, line: 1193)
!1122 = !DISubprogram(name: "roundl", scope: !830, file: !830, line: 298, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1124, file: !833, line: 1195)
!1124 = !DISubprogram(name: "scalbln", scope: !830, file: !830, line: 290, type: !1125, flags: DIFlagPrototyped, spFlags: 0)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!54, !54, !29}
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1128, file: !833, line: 1196)
!1128 = !DISubprogram(name: "scalblnf", scope: !830, file: !830, line: 290, type: !1129, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!205, !205, !29}
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1132, file: !833, line: 1197)
!1132 = !DISubprogram(name: "scalblnl", scope: !830, file: !830, line: 290, type: !1133, flags: DIFlagPrototyped, spFlags: 0)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!210, !210, !29}
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1136, file: !833, line: 1199)
!1136 = !DISubprogram(name: "scalbn", scope: !830, file: !830, line: 276, type: !863, flags: DIFlagPrototyped, spFlags: 0)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1138, file: !833, line: 1200)
!1138 = !DISubprogram(name: "scalbnf", scope: !830, file: !830, line: 276, type: !1139, flags: DIFlagPrototyped, spFlags: 0)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!205, !205, !18}
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1142, file: !833, line: 1201)
!1142 = !DISubprogram(name: "scalbnl", scope: !830, file: !830, line: 276, type: !1143, flags: DIFlagPrototyped, spFlags: 0)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!210, !210, !18}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1146, file: !833, line: 1203)
!1146 = !DISubprogram(name: "tgamma", scope: !830, file: !830, line: 235, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1148, file: !833, line: 1204)
!1148 = !DISubprogram(name: "tgammaf", scope: !830, file: !830, line: 235, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1150, file: !833, line: 1205)
!1150 = !DISubprogram(name: "tgammal", scope: !830, file: !830, line: 235, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1152, file: !833, line: 1207)
!1152 = !DISubprogram(name: "trunc", scope: !830, file: !830, line: 302, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1154, file: !833, line: 1208)
!1154 = !DISubprogram(name: "truncf", scope: !830, file: !830, line: 302, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1156, file: !833, line: 1209)
!1156 = !DISubprogram(name: "truncl", scope: !830, file: !830, line: 302, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1158, file: !1161, line: 58)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1159, line: 94, baseType: !1160)
!1159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "")
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1159, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1161 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/fenv.h", directory: "")
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1163, file: !1161, line: 59)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1159, line: 68, baseType: !584)
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1165, file: !1161, line: 62)
!1165 = !DISubprogram(name: "feclearexcept", scope: !1166, file: !1166, line: 71, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!1166 = !DIFile(filename: "/usr/include/fenv.h", directory: "")
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1168, file: !1161, line: 63)
!1168 = !DISubprogram(name: "fegetexceptflag", scope: !1166, file: !1166, line: 75, type: !1169, flags: DIFlagPrototyped, spFlags: 0)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!18, !1171, !18}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1173, file: !1161, line: 64)
!1173 = !DISubprogram(name: "feraiseexcept", scope: !1166, file: !1166, line: 78, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1175, file: !1161, line: 65)
!1175 = !DISubprogram(name: "fesetexceptflag", scope: !1166, file: !1166, line: 88, type: !1176, flags: DIFlagPrototyped, spFlags: 0)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!18, !1178, !18}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1181, file: !1161, line: 66)
!1181 = !DISubprogram(name: "fetestexcept", scope: !1166, file: !1166, line: 92, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1183, file: !1161, line: 68)
!1183 = !DISubprogram(name: "fegetround", scope: !1166, file: !1166, line: 104, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1185, file: !1161, line: 69)
!1185 = !DISubprogram(name: "fesetround", scope: !1166, file: !1166, line: 107, type: !16, flags: DIFlagPrototyped, spFlags: 0)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1187, file: !1161, line: 71)
!1187 = !DISubprogram(name: "fegetenv", scope: !1166, file: !1166, line: 114, type: !1188, flags: DIFlagPrototyped, spFlags: 0)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!18, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1192, file: !1161, line: 72)
!1192 = !DISubprogram(name: "feholdexcept", scope: !1166, file: !1166, line: 119, type: !1188, flags: DIFlagPrototyped, spFlags: 0)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1194, file: !1161, line: 73)
!1194 = !DISubprogram(name: "fesetenv", scope: !1166, file: !1166, line: 123, type: !1195, flags: DIFlagPrototyped, spFlags: 0)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!18, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1200, file: !1161, line: 74)
!1200 = !DISubprogram(name: "feupdateenv", scope: !1166, file: !1166, line: 128, type: !1195, flags: DIFlagPrototyped, spFlags: 0)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1158, file: !1202, line: 61)
!1202 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cfenv", directory: "")
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1163, file: !1202, line: 62)
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1165, file: !1202, line: 65)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1168, file: !1202, line: 66)
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1173, file: !1202, line: 67)
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1175, file: !1202, line: 68)
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1181, file: !1202, line: 69)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1183, file: !1202, line: 71)
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1185, file: !1202, line: 72)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1187, file: !1202, line: 74)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1192, file: !1202, line: 75)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1194, file: !1202, line: 76)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !11, entity: !1200, file: !1202, line: 77)
!1215 = !{!"base.helper.semantics"}
!1216 = !{!1217, !1217, i64 0}
!1217 = !{!"long", !1218, i64 0}
!1218 = !{!"omnipotent char", !1219, i64 0}
!1219 = !{!"Simple C++ TBAA"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1222, !"__mcsema_detach_call_value: %state"}
!1222 = distinct !{!1222, !"__mcsema_detach_call_value"}
!1223 = !{!1224}
!1224 = distinct !{!1224, !1222, !"__mcsema_detach_call_value: %memory"}
!1225 = !{!1226, !1218, i64 1137}
!1226 = !{!"_ZTS5State", !1227, i64 16, !1217, i64 528, !1228, i64 536, !1217, i64 1064, !1218, i64 1072, !1218, i64 1080, !1218, i64 1088, !1217, i64 1096, !1230, i64 1104, !1217, i64 1160}
!1227 = !{!"_ZTS4SIMD", !1218, i64 0}
!1228 = !{!"_ZTS3GPR", !1217, i64 0, !1229, i64 8, !1217, i64 16, !1229, i64 24, !1217, i64 32, !1229, i64 40, !1217, i64 48, !1229, i64 56, !1217, i64 64, !1229, i64 72, !1217, i64 80, !1229, i64 88, !1217, i64 96, !1229, i64 104, !1217, i64 112, !1229, i64 120, !1217, i64 128, !1229, i64 136, !1217, i64 144, !1229, i64 152, !1217, i64 160, !1229, i64 168, !1217, i64 176, !1229, i64 184, !1217, i64 192, !1229, i64 200, !1217, i64 208, !1229, i64 216, !1217, i64 224, !1229, i64 232, !1217, i64 240, !1229, i64 248, !1217, i64 256, !1229, i64 264, !1217, i64 272, !1229, i64 280, !1217, i64 288, !1229, i64 296, !1217, i64 304, !1229, i64 312, !1217, i64 320, !1229, i64 328, !1217, i64 336, !1229, i64 344, !1217, i64 352, !1229, i64 360, !1217, i64 368, !1229, i64 376, !1217, i64 384, !1229, i64 392, !1217, i64 400, !1229, i64 408, !1217, i64 416, !1229, i64 424, !1217, i64 432, !1229, i64 440, !1217, i64 448, !1229, i64 456, !1217, i64 464, !1229, i64 472, !1217, i64 480, !1229, i64 488, !1217, i64 496, !1229, i64 504, !1217, i64 512, !1229, i64 520}
!1229 = !{!"_ZTS3Reg", !1218, i64 0}
!1230 = !{!"_ZTS2SR", !1217, i64 0, !1229, i64 8, !1217, i64 16, !1229, i64 24, !1218, i64 32, !1218, i64 33, !1218, i64 34, !1218, i64 35, !1218, i64 36, !1218, i64 37, !1218, i64 38, !1218, i64 39, !1218, i64 40, !1218, i64 41, !1218, i64 42, !1218, i64 43, !1218, i64 44, !1218, i64 45, !1218, i64 46, !1218, i64 47, !1218, i64 48, !1218, i64 49, !1218, i64 50}
!1231 = !{!1226, !1218, i64 1139}
!1232 = !{!1226, !1218, i64 1141}
!1233 = !{!1226, !1218, i64 1143}
!1234 = !{!"base.entrypoint"}
!1235 = !{!"base.helper.mcsema"}
!1236 = !{[3 x i8] c"X0\00"}
!1237 = !{[3 x i8] c"X1\00"}
!1238 = !{[3 x i8] c"X2\00"}
!1239 = !{[3 x i8] c"X3\00"}
!1240 = !{[3 x i8] c"X4\00"}
!1241 = !{[3 x i8] c"X5\00"}
!1242 = !{[3 x i8] c"X6\00"}
!1243 = !{[3 x i8] c"X7\00"}
!1244 = !{[3 x i8] c"W0\00"}
