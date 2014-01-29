; ModuleID = 'stubs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { [4 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.anon = type { i32, i32 }
%struct.exe_disk_file_t = type { i32, i8*, i8*, %struct.stat64*, %struct.exe_sockaddr_t* }
%struct.exe_file_system_t = type { i32, i32, i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, i32, %struct.exe_disk_file_t*, i32, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t*, %struct.exe_sockaddr_t, %struct.exe_sockaddr_t*, i32 }
%struct.exe_sockaddr_t = type { %struct.sockaddr_storage*, i32 }
%struct.in6_addr = type { %0 }
%struct.in_addr = type { i32 }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_storage = type { i16, i64, [112 x i8] }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%union.anon = type { void (i32)* }

@__exe_fs = external unnamed_addr global %struct.exe_file_system_t
@.str = private unnamed_addr constant [19 x i8] c"(f->foreign)->addr\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"sockets.c.inc\00", align 1
@__PRETTY_FUNCTION__.7147 = internal unnamed_addr constant [18 x i8] c"__fd_attach_dgram\00", align 16
@.str2 = private unnamed_addr constant [26 x i8] c"0 && \22unsupported domain\22\00", align 1
@dummy_dfile = internal unnamed_addr global %struct.exe_disk_file_t zeroinitializer, align 32
@.str3 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@.str4 = private unnamed_addr constant [25 x i8] c"0 && \22not supported yet\22\00", align 1
@__PRETTY_FUNCTION__.7115 = internal unnamed_addr constant [13 x i8] c"__fd_recvmsg\00"
@.str5 = private unnamed_addr constant [28 x i8] c"flags is not zero, ignoring\00", align 1
@__PRETTY_FUNCTION__.7015 = internal unnamed_addr constant [13 x i8] c"__fd_sendmsg\00"
@.str6 = private unnamed_addr constant [17 x i8] c"f->foreign->addr\00", align 1
@__PRETTY_FUNCTION__.6855 = internal unnamed_addr constant [12 x i8] c"getpeername\00"
@.str7 = private unnamed_addr constant [14 x i8] c"f->local.addr\00", align 1
@__PRETTY_FUNCTION__.6817 = internal unnamed_addr constant [12 x i8] c"getsockname\00"
@__PRETTY_FUNCTION__.6581 = internal unnamed_addr constant [8 x i8] c"connect\00"
@.str8 = private unnamed_addr constant [505 x i8] c"((((f->foreign)->addr) ? (void) (0) : __assert_fail (\22(f->foreign)->addr\22, \22sockets.c.inc\22, 337, __PRETTY_FUNCTION__)), ( ((struct sockaddr *)((f->foreign)->addr))->sa_family == 2 ? ((struct sockaddr_in *)((f->foreign)->addr))->sin_port : ((struct sockaddr *)((f->foreign)->addr))->sa_family == 10 ? ((struct sockaddr_in6 *)((f->foreign)->addr))->sin6_port : (((0 && \22unsupported domain\22) ? (void) (0) : __assert_fail (\220 && \5C\22unsupported domain\5C\22\22, \22sockets.c.inc\22, 337, __PRETTY_FUNCTION__)), 0)) != 0)\00", align 8
@__PRETTY_FUNCTION__.6509 = internal unnamed_addr constant [5 x i8] c"bind\00"
@.str10 = private unnamed_addr constant [48 x i8] c"Calling rename with possibly symbolic arguments\00", align 8
@.str11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@__PRETTY_FUNCTION__.6357 = internal unnamed_addr constant [20 x i8] c"__allocate_sockaddr\00", align 16
@.str12 = private unnamed_addr constant [25 x i8] c"No more symbolic streams\00", align 1
@.str13 = private unnamed_addr constant [25 x i8] c"No more file descriptors\00", align 1
@.str14 = private unnamed_addr constant [24 x i8] c"unsupported socket type\00", align 1
@.str15 = private unnamed_addr constant [28 x i8] c"unsupported socket protocol\00", align 1
@.str16 = private unnamed_addr constant [20 x i8] c"ignoring setsockopt\00", align 1
@.str17 = private unnamed_addr constant [20 x i8] c"ignoring getsockopt\00", align 1
@.str18 = private unnamed_addr constant [46 x i8] c"__socketcall(type=%d: unknown): errno=ENOSYS\0A\00", align 8
@.str19 = private unnamed_addr constant [18 x i8] c"silently ignoring\00", align 1

define weak i32 @__syscall_rt_sigaction(i32 %signum, %struct.sigaction* %act, %struct.sigaction* %oldact, i64 %_something) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %signum}, i64 0, metadata !576), !dbg !580
  tail call void @llvm.dbg.value(metadata !{%struct.sigaction* %act}, i64 0, metadata !577), !dbg !580
  tail call void @llvm.dbg.value(metadata !{%struct.sigaction* %oldact}, i64 0, metadata !578), !dbg !581
  tail call void @llvm.dbg.value(metadata !{i64 %_something}, i64 0, metadata !579), !dbg !581
  tail call void @klee_warning_once(i8* getelementptr inbounds ([18 x i8]* @.str19, i64 0, i64 0)) nounwind, !dbg !582
  ret i32 0, !dbg !584
}

define weak i32 @_IO_getc(%struct._IO_FILE* %f) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %f}, i64 0, metadata !575), !dbg !585
  %0 = tail call i32 @__fgetc_unlocked(%struct._IO_FILE* %f) nounwind, !dbg !586
  ret i32 %0, !dbg !586
}

define weak i32 @_IO_putc(i32 %c, %struct._IO_FILE* %f) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !573), !dbg !588
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %f}, i64 0, metadata !574), !dbg !588
  %0 = tail call i32 @__fputc_unlocked(i32 %c, %struct._IO_FILE* %f) nounwind, !dbg !589
  ret i32 %0, !dbg !589
}

define weak i32 @rename(i8* %oldpath, i8* %newpath) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %oldpath}, i64 0, metadata !518), !dbg !591
  tail call void @llvm.dbg.value(metadata !{i8* %newpath}, i64 0, metadata !519), !dbg !591
  tail call void @klee_warning(i8* getelementptr inbounds ([48 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !592
  %0 = tail call i64 (i64, ...)* @syscall(i64 82, i8* %oldpath, i8* %newpath) nounwind, !dbg !593
  %1 = trunc i64 %0 to i32, !dbg !593
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !520), !dbg !593
  %2 = icmp eq i32 %1, -1, !dbg !594
  br i1 %2, label %bb, label %bb1, !dbg !594

bb:                                               ; preds = %entry
  %3 = tail call i32* @__errno_location() nounwind readnone, !dbg !595
  %4 = tail call i32 @klee_get_errno() nounwind, !dbg !595
  store i32 %4, i32* %3, align 4, !dbg !595
  br label %bb1, !dbg !595

bb1:                                              ; preds = %bb, %entry
  ret i32 %1, !dbg !596
}

define weak i32 @clock_gettime(i32 %clk_id, %struct.timespec* %res) nounwind {
entry:
  %tv = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata !{i32 %clk_id}, i64 0, metadata !563), !dbg !597
  call void @llvm.dbg.value(metadata !{%struct.timespec* %res}, i64 0, metadata !564), !dbg !597
  call void @llvm.dbg.declare(metadata !{%struct.timespec* %tv}, metadata !565), !dbg !598
  %0 = call i32 @gettimeofday(%struct.timespec* noalias %tv, %struct.anon* noalias null) nounwind, !dbg !599
  %1 = getelementptr inbounds %struct.timespec* %tv, i64 0, i32 0, !dbg !600
  %2 = load i64* %1, align 8, !dbg !600
  %3 = getelementptr inbounds %struct.timespec* %res, i64 0, i32 0, !dbg !600
  store i64 %2, i64* %3, align 8, !dbg !600
  %4 = getelementptr inbounds %struct.timespec* %tv, i64 0, i32 1, !dbg !601
  %5 = load i64* %4, align 8, !dbg !601
  %6 = mul nsw i64 %5, 1000, !dbg !601
  %7 = getelementptr inbounds %struct.timespec* %res, i64 0, i32 1, !dbg !601
  store i64 %6, i64* %7, align 8, !dbg !601
  ret i32 0, !dbg !602
}

define weak i32 @clock_settime(i32 %clk_id, %struct.timespec* %res) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %clk_id}, i64 0, metadata !388), !dbg !603
  tail call void @llvm.dbg.value(metadata !{%struct.timespec* %res}, i64 0, metadata !389), !dbg !603
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !604
  %0 = tail call i32* @__errno_location() nounwind readnone, !dbg !606
  store i32 1, i32* %0, align 4, !dbg !606
  ret i32 -1, !dbg !607
}

define i32 @strverscmp(i8* nocapture %__s1, i8* nocapture %__s2) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %__s1}, i64 0, metadata !557), !dbg !608
  tail call void @llvm.dbg.value(metadata !{i8* %__s2}, i64 0, metadata !558), !dbg !608
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !559), !dbg !609
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !562), !dbg !609
  %0 = tail call i32 @strcmp(i8* %__s1, i8* %__s2) nounwind readonly, !dbg !609
  ret i32 %0, !dbg !610
}

define weak i32 @gnu_dev_major(i64 %__dev) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %__dev}, i64 0, metadata !369), !dbg !611
  %0 = lshr i64 %__dev, 8, !dbg !612
  %1 = trunc i64 %0 to i32, !dbg !612
  %2 = and i32 %1, 4095, !dbg !612
  %3 = lshr i64 %__dev, 32, !dbg !612
  %4 = trunc i64 %3 to i32, !dbg !612
  %5 = and i32 %4, -4096, !dbg !612
  %6 = or i32 %2, %5, !dbg !612
  ret i32 %6, !dbg !612
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i32 @gnu_dev_minor(i64 %__dev) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %__dev}, i64 0, metadata !370), !dbg !614
  %0 = trunc i64 %__dev to i32, !dbg !615
  %1 = and i32 %0, 255, !dbg !615
  %2 = lshr i64 %__dev, 12, !dbg !615
  %3 = trunc i64 %2 to i32, !dbg !615
  %4 = and i32 %3, -256, !dbg !615
  %5 = or i32 %4, %1, !dbg !615
  ret i32 %5, !dbg !615
}

define weak i64 @gnu_dev_makedev(i32 %__major, i32 %__minor) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %__major}, i64 0, metadata !371), !dbg !617
  tail call void @llvm.dbg.value(metadata !{i32 %__minor}, i64 0, metadata !372), !dbg !617
  %0 = and i32 %__minor, 255, !dbg !618
  %1 = shl i32 %__major, 8
  %2 = and i32 %1, 1048320, !dbg !618
  %3 = or i32 %0, %2, !dbg !618
  %4 = zext i32 %3 to i64, !dbg !618
  %5 = zext i32 %__minor to i64, !dbg !618
  %6 = shl nuw nsw i64 %5, 12
  %7 = and i64 %6, 17592184995840, !dbg !618
  %8 = zext i32 %__major to i64, !dbg !618
  %9 = shl nuw i64 %8, 32
  %10 = and i64 %9, -17592186044416, !dbg !618
  %11 = or i64 %7, %10, !dbg !618
  %12 = or i64 %11, %4, !dbg !618
  ret i64 %12, !dbg !618
}

define i32 @getsockopt(i32 %sockfd, i32 %level, i32 %optname, i8* nocapture %optval, i32* nocapture %optlen) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !373), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !374), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32 %optname}, i64 0, metadata !375), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i8* %optval}, i64 0, metadata !376), !dbg !621
  tail call void @llvm.dbg.value(metadata !{i32* %optlen}, i64 0, metadata !377), !dbg !621
  ret i32 0, !dbg !622
}

define i32 @setsockopt(i32 %sockfd, i32 %level, i32 %optname, i8* nocapture %optval, i32 %optlen) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !378), !dbg !624
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !379), !dbg !624
  tail call void @llvm.dbg.value(metadata !{i32 %optname}, i64 0, metadata !380), !dbg !624
  tail call void @llvm.dbg.value(metadata !{i8* %optval}, i64 0, metadata !381), !dbg !625
  tail call void @llvm.dbg.value(metadata !{i32 %optlen}, i64 0, metadata !382), !dbg !625
  ret i32 0, !dbg !626
}

define i64 @__fd_attach_dgram(%struct.exe_file_t* nocapture %f) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %f}, i64 0, metadata !383), !dbg !628
  %0 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 1, !dbg !629
  %1 = load i32* %0, align 4, !dbg !629
  %2 = and i32 %1, 32, !dbg !629
  %3 = icmp eq i32 %2, 0, !dbg !629
  br i1 %3, label %bb, label %bb9, !dbg !629

bb:                                               ; preds = %entry
  %4 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 5, !dbg !631
  %5 = load %struct.exe_sockaddr_t** %4, align 8, !dbg !631
  %6 = getelementptr inbounds %struct.exe_sockaddr_t* %5, i64 0, i32 0, !dbg !631
  %7 = load %struct.sockaddr_storage** %6, align 8, !dbg !631
  %8 = icmp eq %struct.sockaddr_storage* %7, null, !dbg !631
  br i1 %8, label %bb1, label %bb2, !dbg !631

bb1:                                              ; preds = %bb
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 840, i8* getelementptr inbounds ([18 x i8]* @__PRETTY_FUNCTION__.7147, i64 0, i64 0)) noreturn nounwind, !dbg !631
  unreachable, !dbg !631

bb2:                                              ; preds = %bb
  %9 = getelementptr inbounds %struct.sockaddr_storage* %7, i64 0, i32 0, !dbg !631
  %10 = load i16* %9, align 2, !dbg !631
  switch i16 %10, label %bb6 [
    i16 2, label %bb3
    i16 10, label %bb5
  ]

bb3:                                              ; preds = %bb2
  %11 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in*, !dbg !631
  %12 = getelementptr inbounds %struct.sockaddr_in* %11, i64 0, i32 1, !dbg !631
  %13 = load i16* %12, align 2, !dbg !631
  %14 = icmp eq i16 %13, 0, !dbg !631
  %15 = zext i1 %14 to i8, !dbg !631
  br label %bb7, !dbg !631

bb5:                                              ; preds = %bb2
  %16 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in6*, !dbg !631
  %17 = getelementptr inbounds %struct.sockaddr_in6* %16, i64 0, i32 1, !dbg !631
  %18 = load i16* %17, align 2, !dbg !631
  %19 = icmp eq i16 %18, 0, !dbg !631
  %20 = zext i1 %19 to i8, !dbg !631
  br label %bb7, !dbg !631

bb6:                                              ; preds = %bb2
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 840, i8* getelementptr inbounds ([18 x i8]* @__PRETTY_FUNCTION__.7147, i64 0, i64 0)) noreturn nounwind, !dbg !631
  unreachable, !dbg !631

bb7:                                              ; preds = %bb5, %bb3
  %iftmp.120.0 = phi i8 [ %15, %bb3 ], [ %20, %bb5 ]
  %toBool = icmp eq i8 %iftmp.120.0, 0, !dbg !631
  br i1 %toBool, label %bb12, label %bb8, !dbg !631

bb8:                                              ; preds = %bb7
  %21 = tail call i32* @__errno_location() nounwind readnone, !dbg !632
  store i32 107, i32* %21, align 4, !dbg !632
  br label %bb12, !dbg !633

bb9:                                              ; preds = %entry
  %22 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 2, !dbg !634
  store i64 0, i64* %22, align 8, !dbg !634
  %23 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 4, !dbg !635
  %24 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 11), align 8, !dbg !635
  %25 = icmp ult i32 %23, %24, !dbg !635
  br i1 %25, label %__get_sym_dgram.exit, label %__get_sym_dgram.exit.thread, !dbg !635

__get_sym_dgram.exit.thread:                      ; preds = %bb9
  %26 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 3, !dbg !637
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** %26, align 8, !dbg !637
  br label %bb10

__get_sym_dgram.exit:                             ; preds = %bb9
  %27 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 13), align 8, !dbg !638
  %28 = zext i32 %23 to i64, !dbg !638
  %29 = getelementptr inbounds %struct.exe_disk_file_t* %27, i64 %28, !dbg !638
  %30 = add i32 %23, 1, !dbg !638
  store i32 %30, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 4, !dbg !638
  %31 = getelementptr inbounds %struct.exe_file_t* %f, i64 0, i32 3, !dbg !637
  store %struct.exe_disk_file_t* %29, %struct.exe_disk_file_t** %31, align 8, !dbg !637
  %32 = icmp eq %struct.exe_disk_file_t* %29, null, !dbg !639
  br i1 %32, label %bb10, label %bb12, !dbg !639

bb10:                                             ; preds = %__get_sym_dgram.exit.thread, %__get_sym_dgram.exit
  %33 = phi %struct.exe_disk_file_t** [ %26, %__get_sym_dgram.exit.thread ], [ %31, %__get_sym_dgram.exit ]
  store %struct.exe_disk_file_t* @dummy_dfile, %struct.exe_disk_file_t** %33, align 8, !dbg !640
  %34 = tail call i32* @__errno_location() nounwind readnone, !dbg !641
  store i32 111, i32* %34, align 4, !dbg !641
  br label %bb12, !dbg !642

bb12:                                             ; preds = %__get_sym_dgram.exit, %bb7, %bb10, %bb8
  %.0 = phi i64 [ -1, %bb8 ], [ -1, %bb10 ], [ 0, %bb7 ], [ 0, %__get_sym_dgram.exit ]
  ret i64 %.0, !dbg !633
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i32* @__errno_location() nounwind readnone

define weak i8* @getenv(i8* %b) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !385), !dbg !643
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !644
  ret i8* null, !dbg !646
}

declare void @klee_warning(i8*)

define weak i8* @setlocale(i32 %a, i8* %b) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !386), !dbg !647
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !387), !dbg !647
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !648
  ret i8* null, !dbg !650
}

define i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !390), !dbg !651
  tail call void @llvm.dbg.value(metadata !{%struct.msghdr* %msg}, i64 0, metadata !391), !dbg !651
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !392), !dbg !651
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %fd) nounwind, !dbg !652
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !393), !dbg !652
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !653
  br i1 %1, label %bb, label %bb1, !dbg !653

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !654
  store i32 9, i32* %2, align 4, !dbg !654
  br label %bb14, !dbg !655

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !656
  %4 = load i32* %3, align 4, !dbg !656
  %5 = and i32 %4, 16, !dbg !656
  %6 = icmp eq i32 %5, 0, !dbg !656
  br i1 %6, label %bb2, label %bb3, !dbg !656

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !657
  store i32 88, i32* %7, align 4, !dbg !657
  br label %bb14, !dbg !658

bb3:                                              ; preds = %bb1
  %8 = icmp eq %struct.msghdr* %msg, null, !dbg !659
  br i1 %8, label %bb4, label %bb5, !dbg !659

bb4:                                              ; preds = %bb3
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !660
  store i32 14, i32* %9, align 4, !dbg !660
  br label %bb14, !dbg !661

bb5:                                              ; preds = %bb3
  %10 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !662
  %11 = load %struct.exe_disk_file_t** %10, align 8, !dbg !662
  %12 = icmp eq %struct.exe_disk_file_t* %11, null, !dbg !662
  br i1 %12, label %bb6, label %bb7, !dbg !662

bb6:                                              ; preds = %bb5
  tail call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 818, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7115, i64 0, i64 0)) noreturn nounwind, !dbg !663
  unreachable, !dbg !663

bb7:                                              ; preds = %bb5
  %13 = tail call i64 @__fd_attach_dgram(%struct.exe_file_t* %0) nounwind, !dbg !664
  %14 = icmp slt i64 %13, 0, !dbg !664
  br i1 %14, label %bb14, label %bb9, !dbg !664

bb9:                                              ; preds = %bb7
  %15 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !665
  %16 = load i8** %15, align 8, !dbg !665
  %17 = icmp eq i8* %16, null, !dbg !665
  %.pre = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 1, !dbg !666
  br i1 %17, label %bb11, label %bb10, !dbg !665

bb10:                                             ; preds = %bb9
  %18 = load i32* %.pre, align 8, !dbg !667
  %19 = zext i32 %18 to i64, !dbg !667
  tail call void @klee_check_memory_access(i8* %16, i64 %19) nounwind, !dbg !667
  %20 = load %struct.exe_disk_file_t** %10, align 8, !dbg !668
  %21 = getelementptr inbounds %struct.exe_disk_file_t* %20, i64 0, i32 4, !dbg !668
  %22 = load %struct.exe_sockaddr_t** %21, align 8, !dbg !668
  %23 = getelementptr inbounds %struct.exe_sockaddr_t* %22, i64 0, i32 1, !dbg !668
  %24 = load i32* %23, align 8, !dbg !668
  %25 = zext i32 %24 to i64, !dbg !668
  %26 = getelementptr inbounds %struct.exe_sockaddr_t* %22, i64 0, i32 0, !dbg !668
  %27 = load %struct.sockaddr_storage** %26, align 8, !dbg !668
  %28 = load i8** %15, align 8, !dbg !668
  %29 = bitcast %struct.sockaddr_storage* %27 to i8*, !dbg !668
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 %25, i32 1, i1 false), !dbg !668
  br label %bb11, !dbg !668

bb11:                                             ; preds = %bb9, %bb10
  %30 = load %struct.exe_disk_file_t** %10, align 8, !dbg !666
  %31 = getelementptr inbounds %struct.exe_disk_file_t* %30, i64 0, i32 4, !dbg !666
  %32 = load %struct.exe_sockaddr_t** %31, align 8, !dbg !666
  %33 = getelementptr inbounds %struct.exe_sockaddr_t* %32, i64 0, i32 1, !dbg !666
  %34 = load i32* %33, align 8, !dbg !666
  store i32 %34, i32* %.pre, align 8, !dbg !666
  %35 = icmp eq i32 %flags, 0, !dbg !669
  br i1 %35, label %bb13, label %bb12, !dbg !669

bb12:                                             ; preds = %bb11
  tail call void @klee_warning(i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !670
  br label %bb13, !dbg !670

bb13:                                             ; preds = %bb11, %bb12
  %36 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 3, !dbg !671
  %37 = load i64* %36, align 8, !dbg !671
  %38 = trunc i64 %37 to i32, !dbg !671
  %39 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 2, !dbg !671
  %40 = load %struct.iovec** %39, align 8, !dbg !671
  %41 = tail call i64 @__fd_scatter_read(%struct.exe_file_t* %0, %struct.iovec* %40, i32 %38) nounwind, !dbg !671
  br label %bb14, !dbg !671

bb14:                                             ; preds = %bb7, %bb13, %bb4, %bb2, %bb
  %.0 = phi i64 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %41, %bb13 ], [ -1, %bb7 ]
  ret i64 %.0, !dbg !655
}

declare %struct.exe_file_t* @__get_file(i32)

declare void @klee_check_memory_access(i8*, i64)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i64 @__fd_scatter_read(%struct.exe_file_t*, %struct.iovec*, i32)

define i64 @recvmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !397), !dbg !672
  tail call void @llvm.dbg.value(metadata !{%struct.msghdr* %msg}, i64 0, metadata !398), !dbg !672
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !399), !dbg !672
  %0 = tail call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind, !dbg !673
  ret i64 %0, !dbg !673
}

define i64 @__fd_recvfrom(i32 %fd, i8* %buf, i64 %len, i32 %flags, %struct.sockaddr* %from, i32* %fromlen) nounwind {
entry:
  %iov = alloca %struct.iovec, align 8
  %msg = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !400), !dbg !675
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !401), !dbg !675
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !402), !dbg !675
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !403), !dbg !675
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %from}, i64 0, metadata !404), !dbg !675
  call void @llvm.dbg.value(metadata !{i32* %fromlen}, i64 0, metadata !405), !dbg !675
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov}, metadata !406), !dbg !676
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg}, metadata !408), !dbg !677
  %0 = icmp ne %struct.sockaddr* %from, null, !dbg !678
  %1 = icmp eq i32* %fromlen, null, !dbg !678
  %2 = and i1 %0, %1, !dbg !678
  br i1 %2, label %bb, label %bb3, !dbg !678

bb:                                               ; preds = %entry
  %3 = call i32* @__errno_location() nounwind readnone, !dbg !679
  store i32 14, i32* %3, align 4, !dbg !679
  br label %bb9, !dbg !680

bb3:                                              ; preds = %entry
  %4 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 0, !dbg !681
  store i8* %buf, i8** %4, align 8, !dbg !681
  %5 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 1, !dbg !682
  store i64 %len, i64* %5, align 8, !dbg !682
  %6 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !683
  %7 = bitcast %struct.sockaddr* %from to i8*, !dbg !683
  store i8* %7, i8** %6, align 8, !dbg !683
  br i1 %1, label %bb6, label %bb4, !dbg !684

bb4:                                              ; preds = %bb3
  %8 = load i32* %fromlen, align 4, !dbg !684
  br label %bb6, !dbg !684

bb6:                                              ; preds = %bb3, %bb4
  %iftmp.112.0 = phi i32 [ %8, %bb4 ], [ 0, %bb3 ]
  %9 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 1, !dbg !684
  store i32 %iftmp.112.0, i32* %9, align 8, !dbg !684
  %10 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 2, !dbg !685
  store %struct.iovec* %iov, %struct.iovec** %10, align 8, !dbg !685
  %11 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 3, !dbg !686
  store i64 1, i64* %11, align 8, !dbg !686
  %12 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 4, !dbg !687
  store i8* null, i8** %12, align 8, !dbg !687
  %13 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 5, !dbg !688
  store i64 0, i64* %13, align 8, !dbg !688
  %14 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 6, !dbg !689
  store i32 %flags, i32* %14, align 8, !dbg !689
  %15 = call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind, !dbg !690
  call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !409), !dbg !690
  br i1 %1, label %bb9, label %bb7, !dbg !691

bb7:                                              ; preds = %bb6
  %16 = load i32* %9, align 8, !dbg !691
  store i32 %16, i32* %fromlen, align 4, !dbg !691
  br label %bb9, !dbg !691

bb9:                                              ; preds = %bb7, %bb6, %bb
  %.0 = phi i64 [ -1, %bb ], [ %15, %bb6 ], [ %15, %bb7 ]
  ret i64 %.0, !dbg !680
}

define i64 @recvfrom(i32 %fd, i8* %buf, i64 %len, i32 %flags, %struct.sockaddr* %from, i32* %fromlen) nounwind {
entry:
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !410), !dbg !692
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !411), !dbg !692
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !412), !dbg !692
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !413), !dbg !692
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %from}, i64 0, metadata !414), !dbg !692
  call void @llvm.dbg.value(metadata !{i32* %fromlen}, i64 0, metadata !415), !dbg !692
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !400) nounwind, !dbg !693
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !401) nounwind, !dbg !693
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !402) nounwind, !dbg !693
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !403) nounwind, !dbg !693
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %from}, i64 0, metadata !404) nounwind, !dbg !693
  call void @llvm.dbg.value(metadata !{i32* %fromlen}, i64 0, metadata !405) nounwind, !dbg !693
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !406) nounwind, !dbg !696
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !408) nounwind, !dbg !697
  %0 = icmp ne %struct.sockaddr* %from, null, !dbg !698
  %1 = icmp eq i32* %fromlen, null, !dbg !698
  %2 = and i1 %0, %1, !dbg !698
  br i1 %2, label %bb.i, label %bb3.i, !dbg !698

bb.i:                                             ; preds = %entry
  %3 = call i32* @__errno_location() nounwind readnone, !dbg !699
  store i32 14, i32* %3, align 4, !dbg !699
  br label %__fd_recvfrom.exit, !dbg !700

bb3.i:                                            ; preds = %entry
  %4 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !701
  store i8* %buf, i8** %4, align 8, !dbg !701
  %5 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !702
  store i64 %len, i64* %5, align 8, !dbg !702
  %6 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !703
  %7 = bitcast %struct.sockaddr* %from to i8*, !dbg !703
  store i8* %7, i8** %6, align 8, !dbg !703
  br i1 %1, label %bb6.i, label %bb4.i, !dbg !704

bb4.i:                                            ; preds = %bb3.i
  %8 = load i32* %fromlen, align 4, !dbg !704
  br label %bb6.i, !dbg !704

bb6.i:                                            ; preds = %bb4.i, %bb3.i
  %iftmp.112.0.i = phi i32 [ %8, %bb4.i ], [ 0, %bb3.i ]
  %9 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !704
  store i32 %iftmp.112.0.i, i32* %9, align 8, !dbg !704
  %10 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !705
  store %struct.iovec* %iov.i, %struct.iovec** %10, align 8, !dbg !705
  %11 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !706
  store i64 1, i64* %11, align 8, !dbg !706
  %12 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !707
  store i8* null, i8** %12, align 8, !dbg !707
  %13 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !708
  store i64 0, i64* %13, align 8, !dbg !708
  %14 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !709
  store i32 %flags, i32* %14, align 8, !dbg !709
  %15 = call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg.i, i32 %flags) nounwind, !dbg !710
  call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !409) nounwind, !dbg !710
  br i1 %1, label %__fd_recvfrom.exit, label %bb7.i, !dbg !711

bb7.i:                                            ; preds = %bb6.i
  %16 = load i32* %9, align 8, !dbg !711
  store i32 %16, i32* %fromlen, align 4, !dbg !711
  br label %__fd_recvfrom.exit, !dbg !711

__fd_recvfrom.exit:                               ; preds = %bb.i, %bb6.i, %bb7.i
  %.0.i = phi i64 [ -1, %bb.i ], [ %15, %bb6.i ], [ %15, %bb7.i ]
  ret i64 %.0.i, !dbg !694
}

define i64 @__fd_recv(i32 %fd, i8* %buf, i64 %len, i32 %flags) nounwind {
__fd_recvfrom.exit:
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !416), !dbg !712
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !417), !dbg !712
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !418), !dbg !712
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !419), !dbg !712
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !400) nounwind, !dbg !713
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !401) nounwind, !dbg !713
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !402) nounwind, !dbg !713
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !403) nounwind, !dbg !713
  call void @llvm.dbg.value(metadata !716, i64 0, metadata !404) nounwind, !dbg !713
  call void @llvm.dbg.value(metadata !717, i64 0, metadata !405) nounwind, !dbg !713
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !406) nounwind, !dbg !718
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !408) nounwind, !dbg !719
  %0 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !720
  store i8* %buf, i8** %0, align 8, !dbg !720
  %1 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !721
  store i64 %len, i64* %1, align 8, !dbg !721
  %2 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !722
  store i8* null, i8** %2, align 8, !dbg !722
  %3 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !723
  store i32 0, i32* %3, align 8, !dbg !723
  %4 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !724
  store %struct.iovec* %iov.i, %struct.iovec** %4, align 8, !dbg !724
  %5 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !725
  store i64 1, i64* %5, align 8, !dbg !725
  %6 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !726
  store i8* null, i8** %6, align 8, !dbg !726
  %7 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !727
  store i64 0, i64* %7, align 8, !dbg !727
  %8 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !728
  store i32 %flags, i32* %8, align 8, !dbg !728
  %9 = call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg.i, i32 %flags) nounwind, !dbg !729
  call void @llvm.dbg.value(metadata !{i64 %9}, i64 0, metadata !409) nounwind, !dbg !729
  ret i64 %9, !dbg !714
}

define i64 @recv(i32 %fd, i8* %buf, i64 %len, i32 %flags) nounwind {
entry:
  %iov.i.i = alloca %struct.iovec, align 8
  %msg.i.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !420), !dbg !730
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !421), !dbg !730
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !422), !dbg !730
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !423), !dbg !730
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !416) nounwind, !dbg !731
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !417) nounwind, !dbg !731
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !418) nounwind, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !419) nounwind, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !400) nounwind, !dbg !734
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !401) nounwind, !dbg !734
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !402) nounwind, !dbg !734
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !403) nounwind, !dbg !734
  call void @llvm.dbg.value(metadata !716, i64 0, metadata !404) nounwind, !dbg !734
  call void @llvm.dbg.value(metadata !717, i64 0, metadata !405) nounwind, !dbg !734
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i.i}, metadata !406) nounwind, !dbg !736
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i.i}, metadata !408) nounwind, !dbg !737
  %0 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 0, !dbg !738
  store i8* %buf, i8** %0, align 8, !dbg !738
  %1 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 1, !dbg !739
  store i64 %len, i64* %1, align 8, !dbg !739
  %2 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 0, !dbg !740
  store i8* null, i8** %2, align 8, !dbg !740
  %3 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 1, !dbg !741
  store i32 0, i32* %3, align 8, !dbg !741
  %4 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 2, !dbg !742
  store %struct.iovec* %iov.i.i, %struct.iovec** %4, align 8, !dbg !742
  %5 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 3, !dbg !743
  store i64 1, i64* %5, align 8, !dbg !743
  %6 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 4, !dbg !744
  store i8* null, i8** %6, align 8, !dbg !744
  %7 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 5, !dbg !745
  store i64 0, i64* %7, align 8, !dbg !745
  %8 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 6, !dbg !746
  store i32 %flags, i32* %8, align 8, !dbg !746
  %9 = call i64 @__fd_recvmsg(i32 %fd, %struct.msghdr* %msg.i.i, i32 %flags) nounwind, !dbg !747
  call void @llvm.dbg.value(metadata !{i64 %9}, i64 0, metadata !409) nounwind, !dbg !747
  ret i64 %9, !dbg !732
}

define i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !424), !dbg !748
  tail call void @llvm.dbg.value(metadata !{%struct.msghdr* %msg}, i64 0, metadata !425), !dbg !748
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !426), !dbg !748
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %fd) nounwind, !dbg !749
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !427), !dbg !749
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !750
  br i1 %1, label %bb, label %bb1, !dbg !750

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !751
  store i32 9, i32* %2, align 4, !dbg !751
  br label %bb46, !dbg !752

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !753
  %4 = load i32* %3, align 4, !dbg !753
  %5 = and i32 %4, 16, !dbg !753
  %6 = icmp eq i32 %5, 0, !dbg !753
  br i1 %6, label %bb2, label %bb3, !dbg !753

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !754
  store i32 88, i32* %7, align 4, !dbg !754
  br label %bb46, !dbg !755

bb3:                                              ; preds = %bb1
  %8 = icmp eq %struct.msghdr* %msg, null, !dbg !756
  br i1 %8, label %bb4, label %bb5, !dbg !756

bb4:                                              ; preds = %bb3
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !757
  store i32 14, i32* %9, align 4, !dbg !757
  br label %bb46, !dbg !758

bb5:                                              ; preds = %bb3
  %10 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !759
  %11 = load %struct.exe_disk_file_t** %10, align 8, !dbg !759
  %12 = icmp eq %struct.exe_disk_file_t* %11, null, !dbg !759
  br i1 %12, label %bb6, label %bb7, !dbg !759

bb6:                                              ; preds = %bb5
  tail call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 759, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7015, i64 0, i64 0)) noreturn nounwind, !dbg !760
  unreachable, !dbg !760

bb7:                                              ; preds = %bb5
  %13 = and i32 %4, 32, !dbg !761
  %14 = icmp eq i32 %13, 0, !dbg !761
  %15 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 5, !dbg !762
  %16 = load %struct.exe_sockaddr_t** %15, align 8, !dbg !762
  %17 = getelementptr inbounds %struct.exe_sockaddr_t* %16, i64 0, i32 0, !dbg !762
  %18 = load %struct.sockaddr_storage** %17, align 8, !dbg !762
  %19 = icmp eq %struct.sockaddr_storage* %18, null, !dbg !762
  br i1 %14, label %bb8, label %bb19, !dbg !761

bb8:                                              ; preds = %bb7
  br i1 %19, label %bb9, label %bb12, !dbg !762

bb9:                                              ; preds = %bb8
  tail call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 763, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7015, i64 0, i64 0)) noreturn nounwind, !dbg !762
  unreachable, !dbg !762

bb12:                                             ; preds = %bb8
  %20 = getelementptr inbounds %struct.sockaddr_storage* %18, i64 0, i32 0, !dbg !763
  %21 = load i16* %20, align 2, !dbg !763
  switch i16 %21, label %bb16 [
    i16 2, label %bb13
    i16 10, label %bb15
  ]

bb13:                                             ; preds = %bb12
  %22 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in*, !dbg !763
  %23 = getelementptr inbounds %struct.sockaddr_in* %22, i64 0, i32 1, !dbg !763
  %24 = load i16* %23, align 2, !dbg !763
  %25 = icmp eq i16 %24, 0, !dbg !763
  %26 = zext i1 %25 to i8, !dbg !763
  br label %bb17, !dbg !763

bb15:                                             ; preds = %bb12
  %27 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in6*, !dbg !763
  %28 = getelementptr inbounds %struct.sockaddr_in6* %27, i64 0, i32 1, !dbg !763
  %29 = load i16* %28, align 2, !dbg !763
  %30 = icmp eq i16 %29, 0, !dbg !763
  %31 = zext i1 %30 to i8, !dbg !763
  br label %bb17, !dbg !763

bb16:                                             ; preds = %bb12
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 764, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7015, i64 0, i64 0)) noreturn nounwind, !dbg !763
  unreachable, !dbg !763

bb17:                                             ; preds = %bb15, %bb13
  %iftmp.114.0 = phi i8 [ %26, %bb13 ], [ %31, %bb15 ]
  %toBool = icmp eq i8 %iftmp.114.0, 0, !dbg !763
  br i1 %toBool, label %bb41, label %bb18, !dbg !763

bb18:                                             ; preds = %bb17
  %32 = tail call i32* @__errno_location() nounwind readnone, !dbg !764
  store i32 107, i32* %32, align 4, !dbg !764
  br label %bb46, !dbg !765

bb19:                                             ; preds = %bb7
  br i1 %19, label %bb20, label %bb21, !dbg !766

bb20:                                             ; preds = %bb19
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 770, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7015, i64 0, i64 0)) noreturn nounwind, !dbg !766
  unreachable, !dbg !766

bb21:                                             ; preds = %bb19
  %33 = getelementptr inbounds %struct.sockaddr_storage* %18, i64 0, i32 0, !dbg !766
  %34 = load i16* %33, align 2, !dbg !766
  switch i16 %34, label %bb25 [
    i16 2, label %bb22
    i16 10, label %bb24
  ]

bb22:                                             ; preds = %bb21
  %35 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in*, !dbg !766
  %36 = getelementptr inbounds %struct.sockaddr_in* %35, i64 0, i32 1, !dbg !766
  %37 = load i16* %36, align 2, !dbg !766
  %38 = icmp eq i16 %37, 0, !dbg !766
  %39 = zext i1 %38 to i8, !dbg !766
  br label %bb26, !dbg !766

bb24:                                             ; preds = %bb21
  %40 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr_in6*, !dbg !766
  %41 = getelementptr inbounds %struct.sockaddr_in6* %40, i64 0, i32 1, !dbg !766
  %42 = load i16* %41, align 2, !dbg !766
  %43 = icmp eq i16 %42, 0, !dbg !766
  %44 = zext i1 %43 to i8, !dbg !766
  br label %bb26, !dbg !766

bb25:                                             ; preds = %bb21
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 770, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7015, i64 0, i64 0)) noreturn nounwind, !dbg !766
  unreachable, !dbg !766

bb26:                                             ; preds = %bb24, %bb22
  %45 = phi i16 [ %37, %bb22 ], [ %42, %bb24 ]
  %iftmp.116.0 = phi i8 [ %39, %bb22 ], [ %44, %bb24 ]
  %toBool27 = icmp eq i8 %iftmp.116.0, 0, !dbg !766
  br i1 %toBool27, label %bb32, label %bb28, !dbg !766

bb28:                                             ; preds = %bb26
  %46 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !766
  %47 = load i8** %46, align 8, !dbg !766
  %48 = icmp eq i8* %47, null, !dbg !766
  br i1 %48, label %bb29, label %bb32, !dbg !766

bb29:                                             ; preds = %bb28
  %49 = tail call i32* @__errno_location() nounwind readnone, !dbg !767
  store i32 107, i32* %49, align 4, !dbg !767
  br label %bb46, !dbg !768

bb32:                                             ; preds = %bb28, %bb26
  switch i16 %34, label %bb36 [
    i16 2, label %bb33
    i16 10, label %bb35
  ]

bb33:                                             ; preds = %bb32
  %50 = icmp ne i16 %45, 0, !dbg !769
  %51 = zext i1 %50 to i8, !dbg !769
  br label %bb37, !dbg !769

bb35:                                             ; preds = %bb32
  %52 = icmp ne i16 %45, 0, !dbg !769
  %53 = zext i1 %52 to i8, !dbg !769
  br label %bb37, !dbg !769

bb36:                                             ; preds = %bb32
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 775, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.7015, i64 0, i64 0)) noreturn nounwind, !dbg !769
  unreachable, !dbg !769

bb37:                                             ; preds = %bb35, %bb33
  %iftmp.118.0 = phi i8 [ %51, %bb33 ], [ %53, %bb35 ]
  %toBool38 = icmp eq i8 %iftmp.118.0, 0, !dbg !769
  br i1 %toBool38, label %bb41, label %bb39, !dbg !769

bb39:                                             ; preds = %bb37
  %54 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !769
  %55 = load i8** %54, align 8, !dbg !769
  %56 = icmp eq i8* %55, null, !dbg !769
  br i1 %56, label %bb41, label %bb40, !dbg !769

bb40:                                             ; preds = %bb39
  %57 = tail call i32* @__errno_location() nounwind readnone, !dbg !770
  store i32 106, i32* %57, align 4, !dbg !770
  br label %bb46, !dbg !771

bb41:                                             ; preds = %bb37, %bb17, %bb39
  %58 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !772
  %59 = load i8** %58, align 8, !dbg !772
  %60 = icmp eq i8* %59, null, !dbg !772
  br i1 %60, label %bb43, label %bb42, !dbg !772

bb42:                                             ; preds = %bb41
  %61 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 1, !dbg !773
  %62 = load i32* %61, align 8, !dbg !773
  %63 = zext i32 %62 to i64, !dbg !773
  tail call void @klee_check_memory_access(i8* %59, i64 %63) nounwind, !dbg !773
  br label %bb43, !dbg !773

bb43:                                             ; preds = %bb41, %bb42
  %64 = icmp eq i32 %flags, 0, !dbg !774
  br i1 %64, label %bb45, label %bb44, !dbg !774

bb44:                                             ; preds = %bb43
  tail call void @klee_warning(i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !775
  br label %bb45, !dbg !775

bb45:                                             ; preds = %bb43, %bb44
  %65 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 3, !dbg !776
  %66 = load i64* %65, align 8, !dbg !776
  %67 = trunc i64 %66 to i32, !dbg !776
  %68 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 2, !dbg !776
  %69 = load %struct.iovec** %68, align 8, !dbg !776
  %70 = tail call i64 @__fd_gather_write(%struct.exe_file_t* %0, %struct.iovec* %69, i32 %67) nounwind, !dbg !776
  br label %bb46, !dbg !776

bb46:                                             ; preds = %bb45, %bb40, %bb29, %bb18, %bb4, %bb2, %bb
  %.0 = phi i64 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ -1, %bb18 ], [ %70, %bb45 ], [ -1, %bb29 ], [ -1, %bb40 ]
  ret i64 %.0, !dbg !752
}

declare i64 @__fd_gather_write(%struct.exe_file_t*, %struct.iovec*, i32)

define i64 @sendmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !429), !dbg !777
  tail call void @llvm.dbg.value(metadata !{%struct.msghdr* %msg}, i64 0, metadata !430), !dbg !777
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !431), !dbg !777
  %0 = tail call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind, !dbg !778
  ret i64 %0, !dbg !778
}

define i64 @__fd_sendto(i32 %fd, i8* %buf, i64 %len, i32 %flags, %struct.sockaddr* %to, i32 %tolen) nounwind {
entry:
  %iov = alloca %struct.iovec, align 8
  %msg = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !432), !dbg !780
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !433), !dbg !780
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !434), !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !435), !dbg !780
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %to}, i64 0, metadata !436), !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %tolen}, i64 0, metadata !437), !dbg !780
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov}, metadata !438), !dbg !781
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg}, metadata !440), !dbg !782
  %0 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 0, !dbg !783
  store i8* %buf, i8** %0, align 8, !dbg !783
  %1 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 1, !dbg !784
  store i64 %len, i64* %1, align 8, !dbg !784
  %2 = bitcast %struct.sockaddr* %to to i8*, !dbg !785
  %3 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 0, !dbg !785
  store i8* %2, i8** %3, align 8, !dbg !785
  %4 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 1, !dbg !786
  store i32 %tolen, i32* %4, align 8, !dbg !786
  %5 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 2, !dbg !787
  store %struct.iovec* %iov, %struct.iovec** %5, align 8, !dbg !787
  %6 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 3, !dbg !788
  store i64 1, i64* %6, align 8, !dbg !788
  %7 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 4, !dbg !789
  store i8* null, i8** %7, align 8, !dbg !789
  %8 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 5, !dbg !790
  store i64 0, i64* %8, align 8, !dbg !790
  %9 = getelementptr inbounds %struct.msghdr* %msg, i64 0, i32 6, !dbg !791
  store i32 %flags, i32* %9, align 8, !dbg !791
  %10 = call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg, i32 %flags) nounwind, !dbg !792
  ret i64 %10, !dbg !792
}

define i64 @sendto(i32 %fd, i8* %buf, i64 %len, i32 %flags, %struct.sockaddr* %to, i32 %tolen) nounwind {
entry:
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !441), !dbg !793
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !442), !dbg !793
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !443), !dbg !793
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !444), !dbg !793
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %to}, i64 0, metadata !445), !dbg !793
  call void @llvm.dbg.value(metadata !{i32 %tolen}, i64 0, metadata !446), !dbg !793
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !432) nounwind, !dbg !794
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !433) nounwind, !dbg !794
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !434) nounwind, !dbg !794
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !435) nounwind, !dbg !794
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %to}, i64 0, metadata !436) nounwind, !dbg !794
  call void @llvm.dbg.value(metadata !{i32 %tolen}, i64 0, metadata !437) nounwind, !dbg !794
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !438) nounwind, !dbg !797
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !440) nounwind, !dbg !798
  %0 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !799
  store i8* %buf, i8** %0, align 8, !dbg !799
  %1 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !800
  store i64 %len, i64* %1, align 8, !dbg !800
  %2 = bitcast %struct.sockaddr* %to to i8*, !dbg !801
  %3 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !801
  store i8* %2, i8** %3, align 8, !dbg !801
  %4 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !802
  store i32 %tolen, i32* %4, align 8, !dbg !802
  %5 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !803
  store %struct.iovec* %iov.i, %struct.iovec** %5, align 8, !dbg !803
  %6 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !804
  store i64 1, i64* %6, align 8, !dbg !804
  %7 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !805
  store i8* null, i8** %7, align 8, !dbg !805
  %8 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !806
  store i64 0, i64* %8, align 8, !dbg !806
  %9 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !807
  store i32 %flags, i32* %9, align 8, !dbg !807
  %10 = call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg.i, i32 %flags) nounwind, !dbg !808
  ret i64 %10, !dbg !795
}

define i64 @__fd_send(i32 %fd, i8* %buf, i64 %len, i32 %flags) nounwind {
entry:
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !447), !dbg !809
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !448), !dbg !809
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !449), !dbg !809
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !450), !dbg !809
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !432) nounwind, !dbg !810
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !433) nounwind, !dbg !810
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !434) nounwind, !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !435) nounwind, !dbg !810
  call void @llvm.dbg.value(metadata !716, i64 0, metadata !436) nounwind, !dbg !810
  call void @llvm.dbg.value(metadata !813, i64 0, metadata !437) nounwind, !dbg !810
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !438) nounwind, !dbg !814
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !440) nounwind, !dbg !815
  %0 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !816
  store i8* %buf, i8** %0, align 8, !dbg !816
  %1 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !817
  store i64 %len, i64* %1, align 8, !dbg !817
  %2 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !818
  store i8* null, i8** %2, align 8, !dbg !818
  %3 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !819
  store i32 0, i32* %3, align 8, !dbg !819
  %4 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !820
  store %struct.iovec* %iov.i, %struct.iovec** %4, align 8, !dbg !820
  %5 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !821
  store i64 1, i64* %5, align 8, !dbg !821
  %6 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !822
  store i8* null, i8** %6, align 8, !dbg !822
  %7 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !823
  store i64 0, i64* %7, align 8, !dbg !823
  %8 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !824
  store i32 %flags, i32* %8, align 8, !dbg !824
  %9 = call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg.i, i32 %flags) nounwind, !dbg !825
  ret i64 %9, !dbg !811
}

define i64 @send(i32 %fd, i8* %buf, i64 %len, i32 %flags) nounwind {
entry:
  %iov.i.i = alloca %struct.iovec, align 8
  %msg.i.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !451), !dbg !826
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !452), !dbg !826
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !453), !dbg !826
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !454), !dbg !826
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !447) nounwind, !dbg !827
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !448) nounwind, !dbg !827
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !449) nounwind, !dbg !827
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !450) nounwind, !dbg !827
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !432) nounwind, !dbg !830
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !433) nounwind, !dbg !830
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !434) nounwind, !dbg !830
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !435) nounwind, !dbg !830
  call void @llvm.dbg.value(metadata !716, i64 0, metadata !436) nounwind, !dbg !830
  call void @llvm.dbg.value(metadata !813, i64 0, metadata !437) nounwind, !dbg !830
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i.i}, metadata !438) nounwind, !dbg !832
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i.i}, metadata !440) nounwind, !dbg !833
  %0 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 0, !dbg !834
  store i8* %buf, i8** %0, align 8, !dbg !834
  %1 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 1, !dbg !835
  store i64 %len, i64* %1, align 8, !dbg !835
  %2 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 0, !dbg !836
  store i8* null, i8** %2, align 8, !dbg !836
  %3 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 1, !dbg !837
  store i32 0, i32* %3, align 8, !dbg !837
  %4 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 2, !dbg !838
  store %struct.iovec* %iov.i.i, %struct.iovec** %4, align 8, !dbg !838
  %5 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 3, !dbg !839
  store i64 1, i64* %5, align 8, !dbg !839
  %6 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 4, !dbg !840
  store i8* null, i8** %6, align 8, !dbg !840
  %7 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 5, !dbg !841
  store i64 0, i64* %7, align 8, !dbg !841
  %8 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 6, !dbg !842
  store i32 %flags, i32* %8, align 8, !dbg !842
  %9 = call i64 @__fd_sendmsg(i32 %fd, %struct.msghdr* %msg.i.i, i32 %flags) nounwind, !dbg !843
  ret i64 %9, !dbg !828
}

define i32 @shutdown(i32 %sockfd, i32 %how) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !455), !dbg !844
  tail call void @llvm.dbg.value(metadata !{i32 %how}, i64 0, metadata !456), !dbg !844
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !845
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !457), !dbg !845
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !846
  br i1 %1, label %bb, label %bb1, !dbg !846

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !847
  store i32 9, i32* %2, align 4, !dbg !847
  br label %bb12, !dbg !848

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !849
  %4 = load i32* %3, align 4, !dbg !849
  %5 = and i32 %4, 16, !dbg !849
  %6 = icmp eq i32 %5, 0, !dbg !849
  br i1 %6, label %bb2, label %bb3, !dbg !849

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !850
  store i32 88, i32* %7, align 4, !dbg !850
  br label %bb12, !dbg !851

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !852
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !852
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !852
  br i1 %10, label %bb9, label %bb4, !dbg !852

bb4:                                              ; preds = %bb3
  switch i32 %how, label %bb8 [
    i32 0, label %bb5
    i32 1, label %bb6
    i32 2, label %bb7
  ], !dbg !853

bb5:                                              ; preds = %bb4
  %11 = and i32 %4, -5, !dbg !854
  store i32 %11, i32* %3, align 4, !dbg !854
  br label %bb12, !dbg !854

bb6:                                              ; preds = %bb4
  %12 = and i32 %4, -9, !dbg !855
  store i32 %12, i32* %3, align 4, !dbg !855
  br label %bb12, !dbg !855

bb7:                                              ; preds = %bb4
  %13 = and i32 %4, -13, !dbg !856
  store i32 %13, i32* %3, align 4, !dbg !856
  br label %bb12, !dbg !856

bb8:                                              ; preds = %bb4
  %14 = tail call i32* @__errno_location() nounwind readnone, !dbg !857
  store i32 22, i32* %14, align 4, !dbg !857
  br label %bb12, !dbg !858

bb9:                                              ; preds = %bb3
  %15 = tail call i64 (i64, ...)* @syscall(i64 48, i32 %sockfd, i32 %how) nounwind, !dbg !859
  %16 = trunc i64 %15 to i32, !dbg !859
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !459), !dbg !859
  %17 = icmp eq i32 %16, -1, !dbg !860
  br i1 %17, label %bb10, label %bb12, !dbg !860

bb10:                                             ; preds = %bb9
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !861
  %19 = tail call i32 @klee_get_errno() nounwind, !dbg !861
  store i32 %19, i32* %18, align 4, !dbg !861
  br label %bb12, !dbg !862

bb12:                                             ; preds = %bb5, %bb6, %bb7, %bb9, %bb10, %bb8, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb8 ], [ -1, %bb10 ], [ 0, %bb9 ], [ 0, %bb7 ], [ 0, %bb6 ], [ 0, %bb5 ]
  ret i32 %.0, !dbg !848
}

declare i64 @syscall(i64, ...) nounwind

declare i32 @klee_get_errno()

define i32 @__fd_shutdown(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !461), !dbg !863
  %0 = load i64* %args, align 8, !dbg !864
  %1 = trunc i64 %0 to i32, !dbg !864
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !462), !dbg !864
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !865
  %3 = load i64* %2, align 8, !dbg !865
  %4 = trunc i64 %3 to i32, !dbg !865
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !464), !dbg !865
  %5 = tail call i32 @shutdown(i32 %1, i32 %4) nounwind, !dbg !866
  ret i32 %5, !dbg !866
}

define i32 @getpeername(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !465), !dbg !867
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !466), !dbg !867
  tail call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !467), !dbg !867
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !868
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !470), !dbg !868
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !869
  br i1 %1, label %bb, label %bb1, !dbg !869

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !870
  store i32 9, i32* %2, align 4, !dbg !870
  br label %bb12, !dbg !871

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !872
  %4 = load i32* %3, align 4, !dbg !872
  %5 = and i32 %4, 16, !dbg !872
  %6 = icmp eq i32 %5, 0, !dbg !872
  br i1 %6, label %bb2, label %bb3, !dbg !872

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !873
  store i32 88, i32* %7, align 4, !dbg !873
  br label %bb12, !dbg !874

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !875
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !875
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !875
  br i1 %10, label %bb9, label %bb4, !dbg !875

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 5, !dbg !876
  %12 = load %struct.exe_sockaddr_t** %11, align 8, !dbg !876
  %13 = getelementptr inbounds %struct.exe_sockaddr_t* %12, i64 0, i32 0, !dbg !876
  %14 = load %struct.sockaddr_storage** %13, align 8, !dbg !876
  %15 = icmp eq %struct.sockaddr_storage* %14, null, !dbg !876
  br i1 %15, label %bb5, label %bb6, !dbg !876

bb5:                                              ; preds = %bb4
  tail call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 587, i8* getelementptr inbounds ([12 x i8]* @__PRETTY_FUNCTION__.6855, i64 0, i64 0)) noreturn nounwind, !dbg !876
  unreachable, !dbg !876

bb6:                                              ; preds = %bb4
  %16 = load i32* %addrlen, align 4, !dbg !877
  %17 = getelementptr inbounds %struct.exe_sockaddr_t* %12, i64 0, i32 1, !dbg !877
  %18 = load i32* %17, align 8, !dbg !877
  %19 = icmp ult i32 %16, %18, !dbg !877
  br i1 %19, label %bb7, label %bb8, !dbg !877

bb7:                                              ; preds = %bb6
  %20 = tail call i32* @__errno_location() nounwind readnone, !dbg !878
  store i32 22, i32* %20, align 4, !dbg !878
  br label %bb12, !dbg !879

bb8:                                              ; preds = %bb6
  %21 = zext i32 %18 to i64, !dbg !880
  %22 = bitcast %struct.sockaddr* %addr to i8*, !dbg !880
  %23 = bitcast %struct.sockaddr_storage* %14 to i8*, !dbg !880
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %21, i32 2, i1 false), !dbg !880
  %24 = load %struct.exe_sockaddr_t** %11, align 8, !dbg !881
  %25 = getelementptr inbounds %struct.exe_sockaddr_t* %24, i64 0, i32 1, !dbg !881
  %26 = load i32* %25, align 8, !dbg !881
  store i32 %26, i32* %addrlen, align 4, !dbg !881
  br label %bb12, !dbg !881

bb9:                                              ; preds = %bb3
  %27 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !882
  %28 = load i32* %27, align 8, !dbg !882
  %29 = tail call i64 (i64, ...)* @syscall(i64 52, i32 %28, %struct.sockaddr* %addr, i32* %addrlen) nounwind, !dbg !882
  %30 = trunc i64 %29 to i32, !dbg !882
  tail call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !468), !dbg !882
  %31 = icmp slt i32 %30, 0, !dbg !883
  br i1 %31, label %bb10, label %bb12, !dbg !883

bb10:                                             ; preds = %bb9
  %32 = tail call i32* @__errno_location() nounwind readnone, !dbg !884
  %33 = tail call i32 @klee_get_errno() nounwind, !dbg !884
  store i32 %33, i32* %32, align 4, !dbg !884
  br label %bb12, !dbg !885

bb12:                                             ; preds = %bb8, %bb9, %bb10, %bb7, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb7 ], [ -1, %bb10 ], [ 0, %bb9 ], [ 0, %bb8 ]
  ret i32 %.0, !dbg !871
}

define i32 @__fd_getpeername(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !471), !dbg !886
  %0 = load i64* %args, align 8, !dbg !887
  %1 = trunc i64 %0 to i32, !dbg !887
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !472), !dbg !887
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !888
  %3 = load i64* %2, align 8, !dbg !888
  %4 = inttoptr i64 %3 to %struct.sockaddr*, !dbg !888
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %4}, i64 0, metadata !474), !dbg !888
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !889
  %6 = load i64* %5, align 8, !dbg !889
  %7 = inttoptr i64 %6 to i32*, !dbg !889
  tail call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !475), !dbg !889
  %8 = tail call i32 @getpeername(i32 %1, %struct.sockaddr* %4, i32* %7) nounwind, !dbg !890
  ret i32 %8, !dbg !890
}

define i32 @getsockname(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !476), !dbg !891
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !477), !dbg !891
  tail call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !478), !dbg !891
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !892
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !479), !dbg !892
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !893
  br i1 %1, label %bb, label %bb1, !dbg !893

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !894
  store i32 9, i32* %2, align 4, !dbg !894
  br label %bb12, !dbg !895

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !896
  %4 = load i32* %3, align 4, !dbg !896
  %5 = and i32 %4, 16, !dbg !896
  %6 = icmp eq i32 %5, 0, !dbg !896
  br i1 %6, label %bb2, label %bb3, !dbg !896

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !897
  store i32 88, i32* %7, align 4, !dbg !897
  br label %bb12, !dbg !898

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !899
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !899
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !899
  br i1 %10, label %bb9, label %bb4, !dbg !899

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 0, !dbg !900
  %12 = load %struct.sockaddr_storage** %11, align 8, !dbg !900
  %13 = icmp eq %struct.sockaddr_storage* %12, null, !dbg !900
  br i1 %13, label %bb5, label %bb6, !dbg !900

bb5:                                              ; preds = %bb4
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 543, i8* getelementptr inbounds ([12 x i8]* @__PRETTY_FUNCTION__.6817, i64 0, i64 0)) noreturn nounwind, !dbg !900
  unreachable, !dbg !900

bb6:                                              ; preds = %bb4
  %14 = load i32* %addrlen, align 4, !dbg !901
  %15 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 1, !dbg !901
  %16 = load i32* %15, align 8, !dbg !901
  %17 = icmp ult i32 %14, %16, !dbg !901
  br i1 %17, label %bb7, label %bb8, !dbg !901

bb7:                                              ; preds = %bb6
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !902
  store i32 22, i32* %18, align 4, !dbg !902
  br label %bb12, !dbg !903

bb8:                                              ; preds = %bb6
  %19 = zext i32 %16 to i64, !dbg !904
  %20 = bitcast %struct.sockaddr* %addr to i8*, !dbg !904
  %21 = bitcast %struct.sockaddr_storage* %12 to i8*, !dbg !904
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 %19, i32 2, i1 false), !dbg !904
  %22 = load i32* %15, align 8, !dbg !905
  store i32 %22, i32* %addrlen, align 4, !dbg !905
  br label %bb12, !dbg !905

bb9:                                              ; preds = %bb3
  %23 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !906
  %24 = load i32* %23, align 8, !dbg !906
  %25 = tail call i64 (i64, ...)* @syscall(i64 51, i32 %24, %struct.sockaddr* %addr, i32* %addrlen) nounwind, !dbg !906
  %26 = trunc i64 %25 to i32, !dbg !906
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !481), !dbg !906
  %27 = icmp slt i32 %26, 0, !dbg !907
  br i1 %27, label %bb10, label %bb12, !dbg !907

bb10:                                             ; preds = %bb9
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !908
  %29 = tail call i32 @klee_get_errno() nounwind, !dbg !908
  store i32 %29, i32* %28, align 4, !dbg !908
  br label %bb12, !dbg !909

bb12:                                             ; preds = %bb8, %bb9, %bb10, %bb7, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb7 ], [ -1, %bb10 ], [ 0, %bb9 ], [ 0, %bb8 ]
  ret i32 %.0, !dbg !895
}

define i32 @__fd_getsockname(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !482), !dbg !910
  %0 = load i64* %args, align 8, !dbg !911
  %1 = trunc i64 %0 to i32, !dbg !911
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !483), !dbg !911
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !912
  %3 = load i64* %2, align 8, !dbg !912
  %4 = inttoptr i64 %3 to %struct.sockaddr*, !dbg !912
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %4}, i64 0, metadata !485), !dbg !912
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !913
  %6 = load i64* %5, align 8, !dbg !913
  %7 = inttoptr i64 %6 to i32*, !dbg !913
  tail call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !486), !dbg !913
  %8 = tail call i32 @getsockname(i32 %1, %struct.sockaddr* %4, i32* %7) nounwind, !dbg !914
  ret i32 %8, !dbg !914
}

define i32 @listen(i32 %sockfd, i32 %backlog) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !487), !dbg !915
  tail call void @llvm.dbg.value(metadata !{i32 %backlog}, i64 0, metadata !488), !dbg !915
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !916
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !491), !dbg !916
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !917
  br i1 %1, label %bb, label %bb1, !dbg !917

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !918
  store i32 9, i32* %2, align 4, !dbg !918
  br label %bb10, !dbg !919

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !920
  %4 = load i32* %3, align 4, !dbg !920
  %5 = and i32 %4, 16, !dbg !920
  %6 = icmp eq i32 %5, 0, !dbg !920
  br i1 %6, label %bb2, label %bb3, !dbg !920

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !921
  store i32 88, i32* %7, align 4, !dbg !921
  br label %bb10, !dbg !922

bb3:                                              ; preds = %bb1
  %8 = and i32 %4, 32, !dbg !923
  %9 = icmp eq i32 %8, 0, !dbg !923
  br i1 %9, label %bb5, label %bb4, !dbg !923

bb4:                                              ; preds = %bb3
  %10 = tail call i32* @__errno_location() nounwind readnone, !dbg !924
  store i32 95, i32* %10, align 4, !dbg !924
  br label %bb10, !dbg !925

bb5:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !926
  %12 = load %struct.exe_disk_file_t** %11, align 8, !dbg !926
  %13 = icmp eq %struct.exe_disk_file_t* %12, null, !dbg !926
  br i1 %13, label %bb7, label %bb9, !dbg !926

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !927
  %15 = load i32* %14, align 8, !dbg !927
  %16 = tail call i64 (i64, ...)* @syscall(i64 50, i32 %15, i32 %backlog) nounwind, !dbg !927
  %17 = trunc i64 %16 to i32, !dbg !927
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !489), !dbg !927
  %18 = icmp slt i32 %17, 0, !dbg !928
  br i1 %18, label %bb8, label %bb9, !dbg !928

bb8:                                              ; preds = %bb7
  %19 = tail call i32* @__errno_location() nounwind readnone, !dbg !929
  %20 = tail call i32 @klee_get_errno() nounwind, !dbg !929
  store i32 %20, i32* %19, align 4, !dbg !929
  br label %bb9, !dbg !929

bb9:                                              ; preds = %bb7, %bb5, %bb8
  %os_r.0 = phi i32 [ %17, %bb8 ], [ 0, %bb5 ], [ %17, %bb7 ]
  %21 = load i32* %3, align 4, !dbg !930
  %22 = or i32 %21, 64, !dbg !930
  store i32 %22, i32* %3, align 4, !dbg !930
  br label %bb10, !dbg !931

bb10:                                             ; preds = %bb9, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %os_r.0, %bb9 ]
  ret i32 %.0, !dbg !919
}

define i32 @__fd_listen(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !492), !dbg !932
  %0 = load i64* %args, align 8, !dbg !933
  %1 = trunc i64 %0 to i32, !dbg !933
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !493), !dbg !933
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !934
  %3 = load i64* %2, align 8, !dbg !934
  %4 = trunc i64 %3 to i32, !dbg !934
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !495), !dbg !934
  %5 = tail call i32 @listen(i32 %1, i32 %4) nounwind, !dbg !935
  ret i32 %5, !dbg !935
}

define i32 @connect(i32 %sockfd, %struct.sockaddr* %addr, i32 %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !496), !dbg !936
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !497), !dbg !936
  tail call void @llvm.dbg.value(metadata !{i32 %addrlen}, i64 0, metadata !498), !dbg !936
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !937
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !501), !dbg !937
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !938
  br i1 %1, label %bb, label %bb1, !dbg !938

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !939
  store i32 9, i32* %2, align 4, !dbg !939
  br label %bb40, !dbg !940

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !941
  %4 = load i32* %3, align 4, !dbg !941
  %5 = and i32 %4, 16, !dbg !941
  %6 = icmp eq i32 %5, 0, !dbg !941
  br i1 %6, label %bb2, label %bb3, !dbg !941

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !942
  store i32 88, i32* %7, align 4, !dbg !942
  br label %bb40, !dbg !943

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !944
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !944
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !944
  br i1 %10, label %bb37, label %bb4, !dbg !944

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 5, !dbg !945
  %12 = load %struct.exe_sockaddr_t** %11, align 8, !dbg !945
  %13 = getelementptr inbounds %struct.exe_sockaddr_t* %12, i64 0, i32 0, !dbg !945
  %14 = load %struct.sockaddr_storage** %13, align 8, !dbg !945
  %15 = icmp eq %struct.sockaddr_storage* %14, null, !dbg !945
  br i1 %15, label %bb5, label %bb6, !dbg !945

bb5:                                              ; preds = %bb4
  tail call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6581, i64 0, i64 0)) noreturn nounwind, !dbg !945
  unreachable, !dbg !945

bb6:                                              ; preds = %bb4
  %16 = and i32 %4, 32, !dbg !946
  %17 = icmp eq i32 %16, 0, !dbg !946
  br i1 %17, label %bb9, label %bb20, !dbg !946

bb9:                                              ; preds = %bb6
  %18 = getelementptr inbounds %struct.sockaddr_storage* %14, i64 0, i32 0, !dbg !947
  %19 = load i16* %18, align 2, !dbg !947
  switch i16 %19, label %bb13 [
    i16 2, label %bb10
    i16 10, label %bb12
  ]

bb10:                                             ; preds = %bb9
  %20 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in*, !dbg !947
  %21 = getelementptr inbounds %struct.sockaddr_in* %20, i64 0, i32 1, !dbg !947
  %22 = load i16* %21, align 2, !dbg !947
  %23 = icmp ne i16 %22, 0, !dbg !947
  %24 = zext i1 %23 to i8, !dbg !947
  br label %bb14, !dbg !947

bb12:                                             ; preds = %bb9
  %25 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in6*, !dbg !947
  %26 = getelementptr inbounds %struct.sockaddr_in6* %25, i64 0, i32 1, !dbg !947
  %27 = load i16* %26, align 2, !dbg !947
  %28 = icmp ne i16 %27, 0, !dbg !947
  %29 = zext i1 %28 to i8, !dbg !947
  br label %bb14, !dbg !947

bb13:                                             ; preds = %bb9
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 337, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6581, i64 0, i64 0)) noreturn nounwind, !dbg !947
  unreachable, !dbg !947

bb14:                                             ; preds = %bb12, %bb10
  %iftmp.72.0 = phi i8 [ %24, %bb10 ], [ %29, %bb12 ]
  %toBool17 = icmp eq i8 %iftmp.72.0, 1, !dbg !947
  br i1 %toBool17, label %bb19, label %bb18, !dbg !947

bb18:                                             ; preds = %bb14
  tail call void @__assert_fail(i8* getelementptr inbounds ([505 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 337, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6581, i64 0, i64 0)) noreturn nounwind, !dbg !947
  unreachable, !dbg !947

bb19:                                             ; preds = %bb14
  %30 = tail call i32* @__errno_location() nounwind readnone, !dbg !948
  store i32 106, i32* %30, align 4, !dbg !948
  br label %bb40, !dbg !949

bb20:                                             ; preds = %bb6
  %31 = getelementptr inbounds %struct.exe_sockaddr_t* %12, i64 0, i32 1, !dbg !950
  %32 = load i32* %31, align 8, !dbg !950
  %33 = icmp eq i32 %32, %addrlen, !dbg !950
  br i1 %33, label %bb21, label %bb22, !dbg !950

bb21:                                             ; preds = %bb20
  %34 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 0, !dbg !950
  %35 = load i16* %34, align 2, !dbg !950
  %36 = getelementptr inbounds %struct.sockaddr_storage* %14, i64 0, i32 0, !dbg !950
  %37 = load i16* %36, align 8, !dbg !950
  %38 = icmp eq i16 %35, %37, !dbg !950
  br i1 %38, label %bb23, label %bb22, !dbg !950

bb22:                                             ; preds = %bb21, %bb20
  %39 = tail call i32* @__errno_location() nounwind readnone, !dbg !951
  store i32 22, i32* %39, align 4, !dbg !951
  br label %bb40, !dbg !952

bb23:                                             ; preds = %bb21
  switch i16 %35, label %bb27 [
    i16 2, label %bb24
    i16 10, label %bb26
  ]

bb24:                                             ; preds = %bb23
  %40 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 1
  %41 = bitcast [14 x i8]* %40 to i16*, !dbg !953
  %42 = load i16* %41, align 2, !dbg !953
  %43 = icmp eq i16 %42, 0, !dbg !953
  %44 = zext i1 %43 to i8, !dbg !953
  br label %bb28, !dbg !953

bb26:                                             ; preds = %bb23
  %45 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 1
  %46 = bitcast [14 x i8]* %45 to i16*, !dbg !953
  %47 = load i16* %46, align 2, !dbg !953
  %48 = icmp eq i16 %47, 0, !dbg !953
  %49 = zext i1 %48 to i8, !dbg !953
  br label %bb28, !dbg !953

bb27:                                             ; preds = %bb23
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 345, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6581, i64 0, i64 0)) noreturn nounwind, !dbg !953
  unreachable, !dbg !953

bb28:                                             ; preds = %bb26, %bb24
  %iftmp.74.0 = phi i8 [ %44, %bb24 ], [ %49, %bb26 ]
  %toBool29 = icmp eq i8 %iftmp.74.0, 0, !dbg !953
  br i1 %toBool29, label %bb31, label %bb30, !dbg !953

bb30:                                             ; preds = %bb28
  %50 = tail call i32* @__errno_location() nounwind readnone, !dbg !954
  store i32 99, i32* %50, align 4, !dbg !954
  br label %bb31, !dbg !954

bb31:                                             ; preds = %bb28, %bb30
  %51 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 0, !dbg !955
  %52 = load %struct.sockaddr_storage** %51, align 8, !dbg !955
  %53 = getelementptr inbounds %struct.sockaddr_storage* %52, i64 0, i32 0, !dbg !955
  %54 = load i16* %53, align 2, !dbg !955
  switch i16 %54, label %bb35 [
    i16 2, label %bb36
    i16 10, label %bb36
  ]

bb35:                                             ; preds = %bb31
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 348, i8* getelementptr inbounds ([8 x i8]* @__PRETTY_FUNCTION__.6581, i64 0, i64 0)) noreturn nounwind, !dbg !955
  unreachable, !dbg !955

bb36:                                             ; preds = %bb31, %bb31
  %55 = zext i32 %addrlen to i64, !dbg !956
  %56 = load %struct.exe_sockaddr_t** %11, align 8, !dbg !956
  %57 = getelementptr inbounds %struct.exe_sockaddr_t* %56, i64 0, i32 0, !dbg !956
  %58 = load %struct.sockaddr_storage** %57, align 8, !dbg !956
  %59 = bitcast %struct.sockaddr_storage* %58 to i8*, !dbg !956
  %60 = bitcast %struct.sockaddr* %addr to i8*, !dbg !956
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 %55, i32 2, i1 false), !dbg !956
  br label %bb40, !dbg !957

bb37:                                             ; preds = %bb3
  %61 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !958
  %62 = load i32* %61, align 8, !dbg !958
  %63 = tail call i64 (i64, ...)* @syscall(i64 42, i32 %62, %struct.sockaddr* %addr, i32 %addrlen) nounwind, !dbg !958
  %64 = trunc i64 %63 to i32, !dbg !958
  tail call void @llvm.dbg.value(metadata !{i32 %64}, i64 0, metadata !499), !dbg !958
  %65 = icmp slt i32 %64, 0, !dbg !959
  br i1 %65, label %bb38, label %bb40, !dbg !959

bb38:                                             ; preds = %bb37
  %66 = tail call i32* @__errno_location() nounwind readnone, !dbg !960
  %67 = tail call i32 @klee_get_errno() nounwind, !dbg !960
  store i32 %67, i32* %66, align 4, !dbg !960
  br label %bb40, !dbg !960

bb40:                                             ; preds = %bb37, %bb38, %bb36, %bb22, %bb19, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb19 ], [ -1, %bb22 ], [ 0, %bb36 ], [ %64, %bb38 ], [ %64, %bb37 ]
  ret i32 %.0, !dbg !940
}

define i32 @__fd_connect(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !502), !dbg !961
  %0 = load i64* %args, align 8, !dbg !962
  %1 = trunc i64 %0 to i32, !dbg !962
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !503), !dbg !962
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !963
  %3 = load i64* %2, align 8, !dbg !963
  %4 = inttoptr i64 %3 to %struct.sockaddr*, !dbg !963
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %4}, i64 0, metadata !505), !dbg !963
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !964
  %6 = load i64* %5, align 8, !dbg !964
  %7 = trunc i64 %6 to i32, !dbg !964
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !506), !dbg !964
  %8 = tail call i32 @connect(i32 %1, %struct.sockaddr* %4, i32 %7) nounwind, !dbg !965
  ret i32 %8, !dbg !965
}

define i32 @bind(i32 %sockfd, %struct.sockaddr* %addr, i32 %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !507), !dbg !966
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !508), !dbg !966
  tail call void @llvm.dbg.value(metadata !{i32 %addrlen}, i64 0, metadata !509), !dbg !966
  %0 = tail call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !967
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !512), !dbg !967
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !968
  br i1 %1, label %bb, label %bb1, !dbg !968

bb:                                               ; preds = %entry
  %2 = tail call i32* @__errno_location() nounwind readnone, !dbg !969
  store i32 9, i32* %2, align 4, !dbg !969
  br label %bb28, !dbg !970

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !971
  %4 = load i32* %3, align 4, !dbg !971
  %5 = and i32 %4, 16, !dbg !971
  %6 = icmp eq i32 %5, 0, !dbg !971
  br i1 %6, label %bb2, label %bb3, !dbg !971

bb2:                                              ; preds = %bb1
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !972
  store i32 88, i32* %7, align 4, !dbg !972
  br label %bb28, !dbg !973

bb3:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !974
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !974
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !974
  br i1 %10, label %bb24, label %bb4, !dbg !974

bb4:                                              ; preds = %bb3
  %11 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 0, !dbg !975
  %12 = load %struct.sockaddr_storage** %11, align 8, !dbg !975
  %13 = icmp eq %struct.sockaddr_storage* %12, null, !dbg !975
  br i1 %13, label %bb5, label %bb6, !dbg !975

bb5:                                              ; preds = %bb4
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.6509, i64 0, i64 0)) noreturn nounwind, !dbg !975
  unreachable, !dbg !975

bb6:                                              ; preds = %bb4
  %14 = and i32 %4, 32, !dbg !976
  %15 = icmp eq i32 %14, 0, !dbg !976
  br i1 %15, label %bb9, label %bb16, !dbg !976

bb9:                                              ; preds = %bb6
  %16 = getelementptr inbounds %struct.sockaddr_storage* %12, i64 0, i32 0, !dbg !976
  %17 = load i16* %16, align 2, !dbg !976
  switch i16 %17, label %bb13 [
    i16 2, label %bb10
    i16 10, label %bb12
  ]

bb10:                                             ; preds = %bb9
  %18 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in*, !dbg !976
  %19 = getelementptr inbounds %struct.sockaddr_in* %18, i64 0, i32 1, !dbg !976
  %20 = load i16* %19, align 2, !dbg !976
  %21 = icmp ne i16 %20, 0, !dbg !976
  %22 = zext i1 %21 to i8, !dbg !976
  br label %bb14, !dbg !976

bb12:                                             ; preds = %bb9
  %23 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in6*, !dbg !976
  %24 = getelementptr inbounds %struct.sockaddr_in6* %23, i64 0, i32 1, !dbg !976
  %25 = load i16* %24, align 2, !dbg !976
  %26 = icmp ne i16 %25, 0, !dbg !976
  %27 = zext i1 %26 to i8, !dbg !976
  br label %bb14, !dbg !976

bb13:                                             ; preds = %bb9
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 284, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.6509, i64 0, i64 0)) noreturn nounwind, !dbg !976
  unreachable, !dbg !976

bb14:                                             ; preds = %bb12, %bb10
  %iftmp.68.0 = phi i8 [ %22, %bb10 ], [ %27, %bb12 ]
  %toBool = icmp eq i8 %iftmp.68.0, 0, !dbg !976
  br i1 %toBool, label %bb16, label %bb15, !dbg !976

bb15:                                             ; preds = %bb14
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !977
  store i32 22, i32* %28, align 4, !dbg !977
  br label %bb28, !dbg !978

bb16:                                             ; preds = %bb14, %bb6
  %29 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 4, i32 1, !dbg !979
  %30 = load i32* %29, align 8, !dbg !979
  %31 = icmp eq i32 %30, %addrlen, !dbg !979
  br i1 %31, label %bb17, label %bb18, !dbg !979

bb17:                                             ; preds = %bb16
  %32 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 0, !dbg !979
  %33 = load i16* %32, align 2, !dbg !979
  %34 = getelementptr inbounds %struct.sockaddr_storage* %12, i64 0, i32 0, !dbg !979
  %35 = load i16* %34, align 8, !dbg !979
  %36 = icmp eq i16 %33, %35, !dbg !979
  br i1 %36, label %bb19, label %bb18, !dbg !979

bb18:                                             ; preds = %bb17, %bb16
  %37 = tail call i32* @__errno_location() nounwind readnone, !dbg !980
  store i32 22, i32* %37, align 4, !dbg !980
  br label %bb28, !dbg !981

bb19:                                             ; preds = %bb17
  %38 = zext i32 %addrlen to i64, !dbg !982
  %39 = bitcast %struct.sockaddr_storage* %12 to i8*, !dbg !982
  %40 = bitcast %struct.sockaddr* %addr to i8*, !dbg !982
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 %38, i32 2, i1 false), !dbg !982
  %41 = load %struct.sockaddr_storage** %11, align 8, !dbg !983
  %42 = getelementptr inbounds %struct.sockaddr_storage* %41, i64 0, i32 0, !dbg !983
  %43 = load i16* %42, align 2, !dbg !983
  switch i16 %43, label %bb23 [
    i16 2, label %bb28
    i16 10, label %bb28
  ]

bb23:                                             ; preds = %bb19
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 294, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.6509, i64 0, i64 0)) noreturn nounwind, !dbg !983
  unreachable, !dbg !983

bb24:                                             ; preds = %bb3
  %44 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !984
  %45 = load i32* %44, align 8, !dbg !984
  %46 = tail call i64 (i64, ...)* @syscall(i64 49, i32 %45, %struct.sockaddr* %addr, i32 %addrlen) nounwind, !dbg !984
  %47 = trunc i64 %46 to i32, !dbg !984
  tail call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !510), !dbg !984
  %48 = icmp slt i32 %47, 0, !dbg !985
  br i1 %48, label %bb25, label %bb28, !dbg !985

bb25:                                             ; preds = %bb24
  %49 = tail call i32* @__errno_location() nounwind readnone, !dbg !986
  %50 = tail call i32 @klee_get_errno() nounwind, !dbg !986
  store i32 %50, i32* %49, align 4, !dbg !986
  br label %bb28, !dbg !986

bb28:                                             ; preds = %bb19, %bb19, %bb24, %bb25, %bb18, %bb15, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb15 ], [ -1, %bb18 ], [ %47, %bb25 ], [ %47, %bb24 ], [ 0, %bb19 ], [ 0, %bb19 ]
  ret i32 %.0, !dbg !970
}

define i32 @__fd_bind(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !513), !dbg !987
  %0 = load i64* %args, align 8, !dbg !988
  %1 = trunc i64 %0 to i32, !dbg !988
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !514), !dbg !988
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !989
  %3 = load i64* %2, align 8, !dbg !989
  %4 = inttoptr i64 %3 to %struct.sockaddr*, !dbg !989
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %4}, i64 0, metadata !516), !dbg !989
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !990
  %6 = load i64* %5, align 8, !dbg !990
  %7 = trunc i64 %6 to i32, !dbg !990
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !517), !dbg !990
  %8 = tail call i32 @bind(i32 %1, %struct.sockaddr* %4, i32 %7) nounwind, !dbg !991
  ret i32 %8, !dbg !991
}

define internal fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %a) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %domain}, i64 0, metadata !522), !dbg !992
  tail call void @llvm.dbg.value(metadata !{%struct.exe_sockaddr_t* %a}, i64 0, metadata !523), !dbg !992
  %0 = icmp eq %struct.exe_sockaddr_t* %a, null, !dbg !993
  br i1 %0, label %bb, label %bb1, !dbg !993

bb:                                               ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 107, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.6357, i64 0, i64 0)) noreturn nounwind, !dbg !993
  unreachable, !dbg !993

bb1:                                              ; preds = %entry
  switch i32 %domain, label %bb11 [
    i32 2, label %bb2
    i32 10, label %bb5
    i32 17, label %bb8
  ], !dbg !995

bb2:                                              ; preds = %bb1
  %1 = tail call noalias i8* @calloc(i64 1, i64 16) nounwind, !dbg !996
  %2 = bitcast i8* %1 to %struct.sockaddr_storage*, !dbg !996
  %3 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 0, !dbg !996
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %3, align 8, !dbg !996
  %4 = icmp eq i8* %1, null, !dbg !996
  br i1 %4, label %bb12, label %bb4, !dbg !996

bb4:                                              ; preds = %bb2
  %5 = bitcast i8* %1 to i16*, !dbg !996
  store i16 2, i16* %5, align 8, !dbg !996
  %6 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 1, !dbg !996
  store i32 16, i32* %6, align 8, !dbg !996
  br label %bb12, !dbg !996

bb5:                                              ; preds = %bb1
  %7 = tail call noalias i8* @calloc(i64 1, i64 28) nounwind, !dbg !997
  %8 = bitcast i8* %7 to %struct.sockaddr_storage*, !dbg !997
  %9 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 0, !dbg !997
  store %struct.sockaddr_storage* %8, %struct.sockaddr_storage** %9, align 8, !dbg !997
  %10 = icmp eq i8* %7, null, !dbg !997
  br i1 %10, label %bb12, label %bb7, !dbg !997

bb7:                                              ; preds = %bb5
  %11 = bitcast i8* %7 to i16*, !dbg !997
  store i16 2, i16* %11, align 8, !dbg !997
  %12 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 1, !dbg !997
  store i32 28, i32* %12, align 8, !dbg !997
  br label %bb12, !dbg !997

bb8:                                              ; preds = %bb1
  %13 = tail call noalias i8* @calloc(i64 1, i64 20) nounwind, !dbg !998
  %14 = bitcast i8* %13 to %struct.sockaddr_storage*, !dbg !998
  %15 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 0, !dbg !998
  store %struct.sockaddr_storage* %14, %struct.sockaddr_storage** %15, align 8, !dbg !998
  %16 = icmp eq i8* %13, null, !dbg !998
  br i1 %16, label %bb12, label %bb10, !dbg !998

bb10:                                             ; preds = %bb8
  %17 = bitcast i8* %13 to i16*, !dbg !998
  store i16 2, i16* %17, align 8, !dbg !998
  %18 = getelementptr inbounds %struct.exe_sockaddr_t* %a, i64 0, i32 1, !dbg !998
  store i32 20, i32* %18, align 8, !dbg !998
  br label %bb12, !dbg !998

bb11:                                             ; preds = %bb1
  tail call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.6357, i64 0, i64 0)) noreturn nounwind, !dbg !999
  unreachable, !dbg !999

bb12:                                             ; preds = %bb8, %bb5, %bb2, %bb10, %bb7, %bb4
  %.0 = phi %struct.exe_sockaddr_t* [ %a, %bb10 ], [ %a, %bb7 ], [ %a, %bb4 ], [ null, %bb2 ], [ null, %bb5 ], [ null, %bb8 ]
  ret %struct.exe_sockaddr_t* %.0, !dbg !996
}

declare noalias i8* @calloc(i64, i64) nounwind

define i32 @__fd_accept(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  %connf = alloca %struct.exe_file_t*, align 8
  %fchild = alloca %struct.exe_file_t*, align 8
  call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !524), !dbg !1000
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !525), !dbg !1000
  call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !526), !dbg !1000
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %connf}, metadata !529), !dbg !1001
  %0 = call %struct.exe_file_t* @__get_file(i32 %sockfd) nounwind, !dbg !1002
  call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %0}, i64 0, metadata !530), !dbg !1002
  %1 = icmp eq %struct.exe_file_t* %0, null, !dbg !1003
  br i1 %1, label %bb, label %bb1, !dbg !1003

bb:                                               ; preds = %entry
  %2 = call i32* @__errno_location() nounwind readnone, !dbg !1004
  store i32 9, i32* %2, align 4, !dbg !1004
  br label %bb24, !dbg !1005

bb1:                                              ; preds = %entry
  %3 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 1, !dbg !1006
  %4 = load i32* %3, align 4, !dbg !1006
  %5 = and i32 %4, 16, !dbg !1006
  %6 = icmp eq i32 %5, 0, !dbg !1006
  br i1 %6, label %bb2, label %bb3, !dbg !1006

bb2:                                              ; preds = %bb1
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !1007
  store i32 88, i32* %7, align 4, !dbg !1007
  br label %bb24, !dbg !1008

bb3:                                              ; preds = %bb1
  %8 = and i32 %4, 32, !dbg !1009
  %9 = icmp eq i32 %8, 0, !dbg !1009
  br i1 %9, label %bb5, label %bb4, !dbg !1009

bb4:                                              ; preds = %bb3
  %10 = call i32* @__errno_location() nounwind readnone, !dbg !1010
  store i32 95, i32* %10, align 4, !dbg !1010
  br label %bb24, !dbg !1011

bb5:                                              ; preds = %bb3
  %11 = and i32 %4, 64, !dbg !1012
  %12 = icmp eq i32 %11, 0, !dbg !1012
  br i1 %12, label %bb6, label %bb7, !dbg !1012

bb6:                                              ; preds = %bb5
  %13 = call i32* @__errno_location() nounwind readnone, !dbg !1013
  store i32 22, i32* %13, align 4, !dbg !1013
  br label %bb24, !dbg !1014

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 3, !dbg !1015
  %15 = load %struct.exe_disk_file_t** %14, align 8, !dbg !1015
  %16 = icmp eq %struct.exe_disk_file_t* %15, null, !dbg !1015
  br i1 %16, label %bb19, label %bb8, !dbg !1015

bb8:                                              ; preds = %bb7
  %17 = call i32 @__get_new_fd(%struct.exe_file_t** %connf) nounwind, !dbg !1016
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !527), !dbg !1016
  %18 = icmp slt i32 %17, 0, !dbg !1017
  br i1 %18, label %bb24, label %bb10, !dbg !1017

bb10:                                             ; preds = %bb8
  %19 = load %struct.exe_file_t** %connf, align 8, !dbg !1018
  %20 = getelementptr inbounds %struct.exe_file_t* %19, i64 0, i32 1, !dbg !1018
  %21 = load i32* %20, align 4, !dbg !1018
  %22 = or i32 %21, 16, !dbg !1018
  store i32 %22, i32* %20, align 4, !dbg !1018
  %23 = load %struct.exe_file_t** %connf, align 8, !dbg !1019
  %24 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1020
  %25 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !1020
  %26 = icmp ult i32 %24, %25, !dbg !1020
  br i1 %26, label %bb1.i, label %__get_sym_stream.exit, !dbg !1020

bb1.i:                                            ; preds = %bb10
  %27 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !1022
  %28 = zext i32 %24 to i64, !dbg !1022
  %29 = getelementptr inbounds %struct.exe_disk_file_t* %27, i64 %28, !dbg !1022
  %30 = add i32 %24, 1, !dbg !1022
  store i32 %30, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1022
  br label %__get_sym_stream.exit, !dbg !1022

__get_sym_stream.exit:                            ; preds = %bb10, %bb1.i
  %.0.i = phi %struct.exe_disk_file_t* [ %29, %bb1.i ], [ null, %bb10 ]
  %31 = getelementptr inbounds %struct.exe_file_t* %23, i64 0, i32 3, !dbg !1019
  store %struct.exe_disk_file_t* %.0.i, %struct.exe_disk_file_t** %31, align 8, !dbg !1019
  %32 = load %struct.exe_file_t** %connf, align 8, !dbg !1023
  %33 = getelementptr inbounds %struct.exe_file_t* %32, i64 0, i32 3, !dbg !1023
  %34 = load %struct.exe_disk_file_t** %33, align 8, !dbg !1023
  %35 = icmp eq %struct.exe_disk_file_t* %34, null, !dbg !1023
  br i1 %35, label %bb11, label %bb12, !dbg !1023

bb11:                                             ; preds = %__get_sym_stream.exit
  call void @klee_warning(i8* getelementptr inbounds ([25 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !1024
  %36 = load %struct.exe_file_t** %connf, align 8, !dbg !1025
  call void @__undo_get_new_fd(%struct.exe_file_t* %36) nounwind, !dbg !1025
  %37 = call i32* @__errno_location() nounwind readnone, !dbg !1026
  store i32 23, i32* %37, align 4, !dbg !1026
  br label %bb24, !dbg !1027

bb12:                                             ; preds = %__get_sym_stream.exit
  %38 = getelementptr inbounds %struct.exe_file_t* %32, i64 0, i32 4, !dbg !1028
  %39 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 6, !dbg !1028
  %40 = load i32* %39, align 8, !dbg !1028
  %41 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %40, %struct.exe_sockaddr_t* %38) nounwind, !dbg !1028
  %42 = icmp eq %struct.exe_sockaddr_t* %41, null, !dbg !1028
  br i1 %42, label %bb13, label %bb14, !dbg !1028

bb13:                                             ; preds = %bb12
  %43 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1029
  %44 = add i32 %43, -1, !dbg !1029
  store i32 %44, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1029
  %45 = load %struct.exe_file_t** %connf, align 8, !dbg !1030
  call void @__undo_get_new_fd(%struct.exe_file_t* %45) nounwind, !dbg !1030
  %46 = call i32* @__errno_location() nounwind readnone, !dbg !1031
  store i32 12, i32* %46, align 4, !dbg !1031
  br label %bb24, !dbg !1032

bb14:                                             ; preds = %bb12
  %47 = load %struct.exe_file_t** %connf, align 8, !dbg !1033
  %48 = getelementptr inbounds %struct.exe_file_t* %47, i64 0, i32 3, !dbg !1033
  %49 = load %struct.exe_disk_file_t** %48, align 8, !dbg !1033
  %50 = getelementptr inbounds %struct.exe_disk_file_t* %49, i64 0, i32 4, !dbg !1033
  %51 = load %struct.exe_sockaddr_t** %50, align 8, !dbg !1033
  %52 = getelementptr inbounds %struct.exe_file_t* %47, i64 0, i32 4, i32 1, !dbg !1033
  %53 = load i32* %52, align 8, !dbg !1033
  %54 = getelementptr inbounds %struct.exe_sockaddr_t* %51, i64 0, i32 1, !dbg !1033
  store i32 %53, i32* %54, align 8, !dbg !1033
  %55 = load %struct.exe_file_t** %connf, align 8, !dbg !1034
  %56 = getelementptr inbounds %struct.exe_file_t* %55, i64 0, i32 3, !dbg !1034
  %57 = load %struct.exe_disk_file_t** %56, align 8, !dbg !1034
  %58 = getelementptr inbounds %struct.exe_disk_file_t* %57, i64 0, i32 4, !dbg !1034
  %59 = load %struct.exe_sockaddr_t** %58, align 8, !dbg !1034
  %60 = getelementptr inbounds %struct.exe_sockaddr_t* %59, i64 0, i32 0, !dbg !1034
  %61 = load %struct.sockaddr_storage** %60, align 8, !dbg !1034
  %62 = getelementptr inbounds %struct.exe_file_t* %55, i64 0, i32 4, i32 0, !dbg !1034
  %63 = load %struct.sockaddr_storage** %62, align 8, !dbg !1034
  %64 = getelementptr inbounds %struct.sockaddr_storage* %63, i64 0, i32 0, !dbg !1034
  %65 = load i16* %64, align 8, !dbg !1034
  %66 = getelementptr inbounds %struct.sockaddr_storage* %61, i64 0, i32 0, !dbg !1034
  store i16 %65, i16* %66, align 8, !dbg !1034
  %67 = load %struct.exe_file_t** %connf, align 8, !dbg !1035
  %68 = getelementptr inbounds %struct.exe_file_t* %67, i64 0, i32 3, !dbg !1035
  %69 = load %struct.exe_disk_file_t** %68, align 8, !dbg !1035
  %70 = getelementptr inbounds %struct.exe_disk_file_t* %69, i64 0, i32 4, !dbg !1035
  %71 = load %struct.exe_sockaddr_t** %70, align 8, !dbg !1035
  %72 = getelementptr inbounds %struct.exe_file_t* %67, i64 0, i32 5, !dbg !1035
  store %struct.exe_sockaddr_t* %71, %struct.exe_sockaddr_t** %72, align 8, !dbg !1035
  %73 = icmp eq %struct.sockaddr* %addr, null, !dbg !1036
  br i1 %73, label %bb14.bb18_crit_edge, label %bb15, !dbg !1036

bb14.bb18_crit_edge:                              ; preds = %bb14
  %.pre = load %struct.exe_file_t** %connf, align 8
  br label %bb18

bb15:                                             ; preds = %bb14
  %74 = load i32* %addrlen, align 4, !dbg !1037
  %75 = zext i32 %74 to i64, !dbg !1037
  %76 = bitcast %struct.sockaddr* %addr to i8*, !dbg !1037
  call void @klee_check_memory_access(i8* %76, i64 %75) nounwind, !dbg !1037
  %77 = load i32* %addrlen, align 4, !dbg !1038
  %78 = load %struct.exe_file_t** %connf, align 8, !dbg !1038
  %79 = getelementptr inbounds %struct.exe_file_t* %78, i64 0, i32 5, !dbg !1038
  %80 = load %struct.exe_sockaddr_t** %79, align 8, !dbg !1038
  %81 = getelementptr inbounds %struct.exe_sockaddr_t* %80, i64 0, i32 1, !dbg !1038
  %82 = load i32* %81, align 8, !dbg !1038
  %83 = icmp ult i32 %77, %82, !dbg !1038
  br i1 %83, label %bb16, label %bb17, !dbg !1038

bb16:                                             ; preds = %bb15
  %84 = getelementptr inbounds %struct.exe_sockaddr_t* %80, i64 0, i32 0, !dbg !1039
  %85 = load %struct.sockaddr_storage** %84, align 8, !dbg !1039
  %86 = bitcast %struct.sockaddr_storage* %85 to i8*, !dbg !1039
  call void @free(i8* %86) nounwind, !dbg !1039
  %87 = load %struct.exe_file_t** %connf, align 8, !dbg !1040
  %88 = getelementptr inbounds %struct.exe_file_t* %87, i64 0, i32 4, i32 0, !dbg !1040
  %89 = load %struct.sockaddr_storage** %88, align 8, !dbg !1040
  %90 = bitcast %struct.sockaddr_storage* %89 to i8*, !dbg !1040
  call void @free(i8* %90) nounwind, !dbg !1040
  %91 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1041
  %92 = add i32 %91, -1, !dbg !1041
  store i32 %92, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 4, !dbg !1041
  %93 = load %struct.exe_file_t** %connf, align 8, !dbg !1042
  call void @__undo_get_new_fd(%struct.exe_file_t* %93) nounwind, !dbg !1042
  %94 = call i32* @__errno_location() nounwind readnone, !dbg !1043
  store i32 22, i32* %94, align 4, !dbg !1043
  br label %bb24, !dbg !1044

bb17:                                             ; preds = %bb15
  %95 = zext i32 %82 to i64, !dbg !1045
  %96 = getelementptr inbounds %struct.exe_sockaddr_t* %80, i64 0, i32 0, !dbg !1045
  %97 = load %struct.sockaddr_storage** %96, align 8, !dbg !1045
  %98 = bitcast %struct.sockaddr_storage* %97 to i8*, !dbg !1045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %98, i64 %95, i32 2, i1 false), !dbg !1045
  %99 = load %struct.exe_sockaddr_t** %79, align 8, !dbg !1046
  %100 = getelementptr inbounds %struct.exe_sockaddr_t* %99, i64 0, i32 1, !dbg !1046
  %101 = load i32* %100, align 8, !dbg !1046
  store i32 %101, i32* %addrlen, align 4, !dbg !1046
  br label %bb18, !dbg !1046

bb18:                                             ; preds = %bb14.bb18_crit_edge, %bb17
  %102 = phi %struct.exe_file_t* [ %.pre, %bb14.bb18_crit_edge ], [ %78, %bb17 ]
  %103 = getelementptr inbounds %struct.exe_file_t* %102, i64 0, i32 1, !dbg !1047
  %104 = load i32* %103, align 4, !dbg !1047
  %105 = or i32 %104, 12, !dbg !1047
  store i32 %105, i32* %103, align 4, !dbg !1047
  br label %bb24, !dbg !1048

bb19:                                             ; preds = %bb7
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %fchild}, metadata !531), !dbg !1049
  %106 = call i32 @__get_new_fd(%struct.exe_file_t** %fchild) nounwind, !dbg !1050
  call void @llvm.dbg.value(metadata !{i32 %106}, i64 0, metadata !533), !dbg !1050
  %107 = icmp slt i32 %106, 0, !dbg !1051
  br i1 %107, label %bb20, label %bb21, !dbg !1051

bb20:                                             ; preds = %bb19
  %108 = call i32* @__errno_location() nounwind readnone, !dbg !1052
  store i32 12, i32* %108, align 4, !dbg !1052
  br label %bb24, !dbg !1053

bb21:                                             ; preds = %bb19
  %109 = getelementptr inbounds %struct.exe_file_t* %0, i64 0, i32 0, !dbg !1054
  %110 = load i32* %109, align 8, !dbg !1054
  %111 = call i64 (i64, ...)* @syscall(i64 43, i32 %110, %struct.sockaddr* %addr, i32* %addrlen) nounwind, !dbg !1054
  %112 = trunc i64 %111 to i32, !dbg !1054
  call void @llvm.dbg.value(metadata !{i32 %112}, i64 0, metadata !534), !dbg !1054
  %113 = icmp slt i32 %112, 0, !dbg !1055
  br i1 %113, label %bb22, label %bb23, !dbg !1055

bb22:                                             ; preds = %bb21
  %114 = call i32* @__errno_location() nounwind readnone, !dbg !1056
  %115 = call i32 @klee_get_errno() nounwind, !dbg !1056
  store i32 %115, i32* %114, align 4, !dbg !1056
  %116 = load %struct.exe_file_t** %fchild, align 8, !dbg !1057
  call void @__undo_get_new_fd(%struct.exe_file_t* %116) nounwind, !dbg !1057
  br label %bb24, !dbg !1058

bb23:                                             ; preds = %bb21
  %117 = load %struct.exe_file_t** %fchild, align 8, !dbg !1059
  %118 = getelementptr inbounds %struct.exe_file_t* %117, i64 0, i32 1, !dbg !1059
  %119 = load i32* %118, align 4, !dbg !1059
  %120 = or i32 %119, 16, !dbg !1059
  store i32 %120, i32* %118, align 4, !dbg !1059
  %121 = load %struct.exe_file_t** %fchild, align 8, !dbg !1060
  %122 = getelementptr inbounds %struct.exe_file_t* %121, i64 0, i32 1, !dbg !1060
  %123 = load i32* %122, align 4, !dbg !1060
  %124 = or i32 %123, 12, !dbg !1060
  store i32 %124, i32* %122, align 4, !dbg !1060
  %125 = load %struct.exe_file_t** %fchild, align 8, !dbg !1061
  %126 = getelementptr inbounds %struct.exe_file_t* %125, i64 0, i32 0, !dbg !1061
  store i32 %112, i32* %126, align 8, !dbg !1061
  br label %bb24, !dbg !1062

bb24:                                             ; preds = %bb8, %bb23, %bb22, %bb20, %bb18, %bb16, %bb13, %bb11, %bb6, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ -1, %bb6 ], [ -1, %bb11 ], [ -1, %bb13 ], [ -1, %bb16 ], [ %17, %bb18 ], [ -1, %bb20 ], [ %112, %bb22 ], [ %106, %bb23 ], [ %17, %bb8 ]
  ret i32 %.0, !dbg !1005
}

declare i32 @__get_new_fd(%struct.exe_file_t**)

declare void @__undo_get_new_fd(%struct.exe_file_t*)

declare void @free(i8* nocapture) nounwind

define i32 @accept(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !535), !dbg !1063
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !536), !dbg !1063
  tail call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !537), !dbg !1063
  %0 = tail call i32 @__fd_accept(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind, !dbg !1064
  ret i32 %0, !dbg !1064
}

define weak i32 @socket(i32 %domain, i32 %type, i32 %protocol) nounwind {
entry:
  %f = alloca %struct.exe_file_t*, align 8
  call void @llvm.dbg.value(metadata !{i32 %domain}, i64 0, metadata !538), !dbg !1066
  call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !539), !dbg !1066
  call void @llvm.dbg.value(metadata !{i32 %protocol}, i64 0, metadata !540), !dbg !1066
  call void @llvm.dbg.declare(metadata !{%struct.exe_file_t** %f}, metadata !543), !dbg !1067
  %0 = call i32 @klee_zest_enabled() nounwind, !dbg !1068
  %1 = icmp eq i32 %0, 0, !dbg !1068
  br i1 %1, label %bb5, label %bb, !dbg !1068

bb:                                               ; preds = %entry
  %2 = call i32 @__get_new_fd(%struct.exe_file_t** %f) nounwind, !dbg !1069
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !541), !dbg !1069
  %3 = icmp slt i32 %2, 0, !dbg !1070
  br i1 %3, label %bb1, label %bb2, !dbg !1070

bb1:                                              ; preds = %bb
  call void @klee_warning(i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !1071
  %4 = call i32* @__errno_location() nounwind readnone, !dbg !1072
  store i32 24, i32* %4, align 4, !dbg !1072
  br label %bb28, !dbg !1073

bb2:                                              ; preds = %bb
  %5 = call i64 (i64, ...)* @syscall(i64 41, i32 %domain, i32 %type, i32 %protocol) nounwind, !dbg !1074
  %6 = trunc i64 %5 to i32, !dbg !1074
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !544), !dbg !1074
  %7 = icmp slt i32 %6, 0, !dbg !1075
  %8 = load %struct.exe_file_t** %f, align 8, !dbg !1076
  br i1 %7, label %bb3, label %bb4, !dbg !1075

bb3:                                              ; preds = %bb2
  call void @__undo_get_new_fd(%struct.exe_file_t* %8) nounwind, !dbg !1076
  %9 = call i32* @__errno_location() nounwind readnone, !dbg !1077
  %10 = call i32 @klee_get_errno() nounwind, !dbg !1077
  store i32 %10, i32* %9, align 4, !dbg !1077
  br label %bb28, !dbg !1078

bb4:                                              ; preds = %bb2
  %11 = getelementptr inbounds %struct.exe_file_t* %8, i64 0, i32 1, !dbg !1079
  %12 = load i32* %11, align 4, !dbg !1079
  %13 = or i32 %12, 16, !dbg !1079
  store i32 %13, i32* %11, align 4, !dbg !1079
  %14 = load %struct.exe_file_t** %f, align 8, !dbg !1080
  %15 = getelementptr inbounds %struct.exe_file_t* %14, i64 0, i32 1, !dbg !1080
  %16 = load i32* %15, align 4, !dbg !1080
  %17 = or i32 %16, 12, !dbg !1080
  store i32 %17, i32* %15, align 4, !dbg !1080
  %18 = load %struct.exe_file_t** %f, align 8, !dbg !1081
  %19 = getelementptr inbounds %struct.exe_file_t* %18, i64 0, i32 0, !dbg !1081
  store i32 %6, i32* %19, align 8, !dbg !1081
  br label %bb28, !dbg !1082

bb5:                                              ; preds = %entry
  switch i32 %domain, label %bb26 [
    i32 2, label %bb6
    i32 10, label %bb6
    i32 17, label %bb6
  ], !dbg !1083

bb6:                                              ; preds = %bb5, %bb5, %bb5
  switch i32 %type, label %bb25 [
    i32 1, label %bb7
    i32 2, label %bb16
    i32 3, label %bb16
    i32 10, label %bb16
  ], !dbg !1084

bb7:                                              ; preds = %bb6
  %20 = call i32 @__get_new_fd(%struct.exe_file_t** %f) nounwind, !dbg !1085
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !541), !dbg !1085
  %21 = icmp slt i32 %20, 0, !dbg !1086
  br i1 %21, label %bb28, label %bb9, !dbg !1086

bb9:                                              ; preds = %bb7
  %22 = load %struct.exe_file_t** %f, align 8, !dbg !1087
  %23 = getelementptr inbounds %struct.exe_file_t* %22, i64 0, i32 1, !dbg !1087
  %24 = load i32* %23, align 4, !dbg !1087
  %25 = or i32 %24, 16, !dbg !1087
  store i32 %25, i32* %23, align 4, !dbg !1087
  %26 = load %struct.exe_file_t** %f, align 8, !dbg !1088
  %27 = getelementptr inbounds %struct.exe_file_t* %26, i64 0, i32 4, !dbg !1088
  %28 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %27) nounwind, !dbg !1088
  %29 = icmp eq %struct.exe_sockaddr_t* %28, null, !dbg !1088
  %30 = load %struct.exe_file_t** %f, align 8, !dbg !1089
  br i1 %29, label %bb10, label %bb11, !dbg !1088

bb10:                                             ; preds = %bb9
  call void @__undo_get_new_fd(%struct.exe_file_t* %30) nounwind, !dbg !1089
  %31 = call i32* @__errno_location() nounwind readnone, !dbg !1090
  store i32 12, i32* %31, align 4, !dbg !1090
  br label %bb28, !dbg !1091

bb11:                                             ; preds = %bb9
  %32 = call noalias i8* @malloc(i64 16) nounwind, !dbg !1092
  %33 = bitcast i8* %32 to %struct.exe_sockaddr_t*, !dbg !1092
  %34 = getelementptr inbounds %struct.exe_file_t* %30, i64 0, i32 5, !dbg !1092
  store %struct.exe_sockaddr_t* %33, %struct.exe_sockaddr_t** %34, align 8, !dbg !1092
  %35 = load %struct.exe_file_t** %f, align 8, !dbg !1093
  %36 = getelementptr inbounds %struct.exe_file_t* %35, i64 0, i32 5, !dbg !1093
  %37 = load %struct.exe_sockaddr_t** %36, align 8, !dbg !1093
  %38 = icmp eq %struct.exe_sockaddr_t* %37, null, !dbg !1093
  br i1 %38, label %bb12, label %bb13, !dbg !1093

bb12:                                             ; preds = %bb11
  %39 = getelementptr inbounds %struct.exe_file_t* %35, i64 0, i32 4, i32 0, !dbg !1094
  %40 = load %struct.sockaddr_storage** %39, align 8, !dbg !1094
  %41 = bitcast %struct.sockaddr_storage* %40 to i8*, !dbg !1094
  call void @free(i8* %41) nounwind, !dbg !1094
  %42 = load %struct.exe_file_t** %f, align 8, !dbg !1095
  call void @__undo_get_new_fd(%struct.exe_file_t* %42) nounwind, !dbg !1095
  %43 = call i32* @__errno_location() nounwind readnone, !dbg !1096
  store i32 12, i32* %43, align 4, !dbg !1096
  br label %bb28, !dbg !1097

bb13:                                             ; preds = %bb11
  %44 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %37) nounwind, !dbg !1098
  %45 = icmp eq %struct.exe_sockaddr_t* %44, null, !dbg !1098
  %46 = load %struct.exe_file_t** %f, align 8, !dbg !1099
  br i1 %45, label %bb14, label %bb15, !dbg !1098

bb14:                                             ; preds = %bb13
  %47 = getelementptr inbounds %struct.exe_file_t* %46, i64 0, i32 5, !dbg !1099
  %48 = load %struct.exe_sockaddr_t** %47, align 8, !dbg !1099
  %49 = bitcast %struct.exe_sockaddr_t* %48 to i8*, !dbg !1099
  call void @free(i8* %49) nounwind, !dbg !1099
  %50 = load %struct.exe_file_t** %f, align 8, !dbg !1100
  %51 = getelementptr inbounds %struct.exe_file_t* %50, i64 0, i32 4, i32 0, !dbg !1100
  %52 = load %struct.sockaddr_storage** %51, align 8, !dbg !1100
  %53 = bitcast %struct.sockaddr_storage* %52 to i8*, !dbg !1100
  call void @free(i8* %53) nounwind, !dbg !1100
  %54 = load %struct.exe_file_t** %f, align 8, !dbg !1101
  call void @__undo_get_new_fd(%struct.exe_file_t* %54) nounwind, !dbg !1101
  %55 = call i32* @__errno_location() nounwind readnone, !dbg !1102
  store i32 12, i32* %55, align 4, !dbg !1102
  br label %bb28, !dbg !1103

bb15:                                             ; preds = %bb13
  %56 = getelementptr inbounds %struct.exe_file_t* %46, i64 0, i32 3, !dbg !1104
  store %struct.exe_disk_file_t* @dummy_dfile, %struct.exe_disk_file_t** %56, align 8, !dbg !1104
  %57 = load %struct.exe_file_t** %f, align 8, !dbg !1105
  %58 = getelementptr inbounds %struct.exe_file_t* %57, i64 0, i32 1, !dbg !1105
  %59 = load i32* %58, align 4, !dbg !1105
  %60 = or i32 %59, 12, !dbg !1105
  store i32 %60, i32* %58, align 4, !dbg !1105
  %61 = load %struct.exe_file_t** %f, align 8, !dbg !1106
  %62 = getelementptr inbounds %struct.exe_file_t* %61, i64 0, i32 6, !dbg !1106
  store i32 %domain, i32* %62, align 8, !dbg !1106
  br label %bb28, !dbg !1106

bb16:                                             ; preds = %bb6, %bb6, %bb6
  %63 = call i32 @__get_new_fd(%struct.exe_file_t** %f) nounwind, !dbg !1107
  call void @llvm.dbg.value(metadata !{i32 %63}, i64 0, metadata !541), !dbg !1107
  %64 = icmp slt i32 %63, 0, !dbg !1108
  br i1 %64, label %bb28, label %bb18, !dbg !1108

bb18:                                             ; preds = %bb16
  %65 = load %struct.exe_file_t** %f, align 8, !dbg !1109
  %66 = getelementptr inbounds %struct.exe_file_t* %65, i64 0, i32 1, !dbg !1109
  %67 = load i32* %66, align 4, !dbg !1109
  %68 = or i32 %67, 48, !dbg !1109
  store i32 %68, i32* %66, align 4, !dbg !1109
  %69 = load %struct.exe_file_t** %f, align 8, !dbg !1110
  %70 = getelementptr inbounds %struct.exe_file_t* %69, i64 0, i32 4, !dbg !1110
  %71 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %70) nounwind, !dbg !1110
  %72 = icmp eq %struct.exe_sockaddr_t* %71, null, !dbg !1110
  %73 = load %struct.exe_file_t** %f, align 8, !dbg !1111
  br i1 %72, label %bb19, label %bb20, !dbg !1110

bb19:                                             ; preds = %bb18
  call void @__undo_get_new_fd(%struct.exe_file_t* %73) nounwind, !dbg !1111
  %74 = call i32* @__errno_location() nounwind readnone, !dbg !1112
  store i32 12, i32* %74, align 4, !dbg !1112
  br label %bb28, !dbg !1113

bb20:                                             ; preds = %bb18
  %75 = call noalias i8* @malloc(i64 16) nounwind, !dbg !1114
  %76 = bitcast i8* %75 to %struct.exe_sockaddr_t*, !dbg !1114
  %77 = getelementptr inbounds %struct.exe_file_t* %73, i64 0, i32 5, !dbg !1114
  store %struct.exe_sockaddr_t* %76, %struct.exe_sockaddr_t** %77, align 8, !dbg !1114
  %78 = load %struct.exe_file_t** %f, align 8, !dbg !1115
  %79 = getelementptr inbounds %struct.exe_file_t* %78, i64 0, i32 5, !dbg !1115
  %80 = load %struct.exe_sockaddr_t** %79, align 8, !dbg !1115
  %81 = icmp eq %struct.exe_sockaddr_t* %80, null, !dbg !1115
  br i1 %81, label %bb21, label %bb22, !dbg !1115

bb21:                                             ; preds = %bb20
  %82 = getelementptr inbounds %struct.exe_file_t* %78, i64 0, i32 4, i32 0, !dbg !1116
  %83 = load %struct.sockaddr_storage** %82, align 8, !dbg !1116
  %84 = bitcast %struct.sockaddr_storage* %83 to i8*, !dbg !1116
  call void @free(i8* %84) nounwind, !dbg !1116
  %85 = load %struct.exe_file_t** %f, align 8, !dbg !1117
  call void @__undo_get_new_fd(%struct.exe_file_t* %85) nounwind, !dbg !1117
  %86 = call i32* @__errno_location() nounwind readnone, !dbg !1118
  store i32 12, i32* %86, align 4, !dbg !1118
  br label %bb28, !dbg !1119

bb22:                                             ; preds = %bb20
  %87 = call fastcc %struct.exe_sockaddr_t* @__allocate_sockaddr(i32 %domain, %struct.exe_sockaddr_t* %80) nounwind, !dbg !1120
  %88 = icmp eq %struct.exe_sockaddr_t* %87, null, !dbg !1120
  %89 = load %struct.exe_file_t** %f, align 8, !dbg !1121
  br i1 %88, label %bb23, label %bb24, !dbg !1120

bb23:                                             ; preds = %bb22
  %90 = getelementptr inbounds %struct.exe_file_t* %89, i64 0, i32 5, !dbg !1121
  %91 = load %struct.exe_sockaddr_t** %90, align 8, !dbg !1121
  %92 = bitcast %struct.exe_sockaddr_t* %91 to i8*, !dbg !1121
  call void @free(i8* %92) nounwind, !dbg !1121
  %93 = load %struct.exe_file_t** %f, align 8, !dbg !1122
  %94 = getelementptr inbounds %struct.exe_file_t* %93, i64 0, i32 4, i32 0, !dbg !1122
  %95 = load %struct.sockaddr_storage** %94, align 8, !dbg !1122
  %96 = bitcast %struct.sockaddr_storage* %95 to i8*, !dbg !1122
  call void @free(i8* %96) nounwind, !dbg !1122
  %97 = load %struct.exe_file_t** %f, align 8, !dbg !1123
  call void @__undo_get_new_fd(%struct.exe_file_t* %97) nounwind, !dbg !1123
  %98 = call i32* @__errno_location() nounwind readnone, !dbg !1124
  store i32 12, i32* %98, align 4, !dbg !1124
  br label %bb28, !dbg !1125

bb24:                                             ; preds = %bb22
  %99 = getelementptr inbounds %struct.exe_file_t* %89, i64 0, i32 3, !dbg !1126
  store %struct.exe_disk_file_t* @dummy_dfile, %struct.exe_disk_file_t** %99, align 8, !dbg !1126
  %100 = load %struct.exe_file_t** %f, align 8, !dbg !1127
  %101 = getelementptr inbounds %struct.exe_file_t* %100, i64 0, i32 1, !dbg !1127
  %102 = load i32* %101, align 4, !dbg !1127
  %103 = or i32 %102, 12, !dbg !1127
  store i32 %103, i32* %101, align 4, !dbg !1127
  br label %bb28, !dbg !1127

bb25:                                             ; preds = %bb6
  call void @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !1128
  %104 = call i32* @__errno_location() nounwind readnone, !dbg !1129
  store i32 94, i32* %104, align 4, !dbg !1129
  br label %bb28, !dbg !1130

bb26:                                             ; preds = %bb5
  call void @klee_warning(i8* getelementptr inbounds ([28 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !1131
  %105 = call i32* @__errno_location() nounwind readnone, !dbg !1132
  store i32 93, i32* %105, align 4, !dbg !1132
  br label %bb28, !dbg !1133

bb28:                                             ; preds = %bb15, %bb24, %bb16, %bb7, %bb26, %bb25, %bb23, %bb21, %bb19, %bb14, %bb12, %bb10, %bb4, %bb3, %bb1
  %.0 = phi i32 [ %2, %bb1 ], [ %6, %bb3 ], [ %2, %bb4 ], [ -1, %bb26 ], [ -1, %bb25 ], [ -1, %bb19 ], [ -1, %bb21 ], [ -1, %bb23 ], [ -1, %bb10 ], [ -1, %bb12 ], [ -1, %bb14 ], [ %20, %bb7 ], [ %63, %bb16 ], [ %63, %bb24 ], [ %20, %bb15 ]
  ret i32 %.0, !dbg !1073
}

declare i32 @klee_zest_enabled()

declare noalias i8* @malloc(i64) nounwind

define i32 @__fd_socket(i64* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !546), !dbg !1134
  %0 = load i64* %args, align 8, !dbg !1135
  %1 = trunc i64 %0 to i32, !dbg !1135
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !547), !dbg !1135
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !1136
  %3 = load i64* %2, align 8, !dbg !1136
  %4 = trunc i64 %3 to i32, !dbg !1136
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !549), !dbg !1136
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !1137
  %6 = load i64* %5, align 8, !dbg !1137
  %7 = trunc i64 %6 to i32, !dbg !1137
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !550), !dbg !1137
  %8 = tail call i32 @socket(i32 %1, i32 %4, i32 %7) nounwind, !dbg !1138
  ret i32 %8, !dbg !1138
}

define weak i32 @__socketcall(i32 %type, i64* %args) nounwind {
entry:
  %iov.i21 = alloca %struct.iovec, align 8
  %msg.i22 = alloca %struct.msghdr, align 8
  %iov.i = alloca %struct.iovec, align 8
  %msg.i = alloca %struct.msghdr, align 8
  %iov.i.i19 = alloca %struct.iovec, align 8
  %msg.i.i20 = alloca %struct.msghdr, align 8
  %iov.i.i = alloca %struct.iovec, align 8
  %msg.i.i = alloca %struct.msghdr, align 8
  call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !551), !dbg !1139
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !552), !dbg !1139
  switch i32 %type, label %bb16 [
    i32 1, label %bb
    i32 2, label %bb1
    i32 3, label %bb2
    i32 4, label %bb3
    i32 5, label %bb4
    i32 6, label %bb5
    i32 7, label %bb6
    i32 17, label %bb15
    i32 9, label %bb7
    i32 10, label %bb8
    i32 11, label %bb9
    i32 12, label %bb10
    i32 13, label %bb11
    i32 14, label %bb12
    i32 15, label %bb13
    i32 16, label %bb14
  ], !dbg !1140

bb:                                               ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !546) nounwind, !dbg !1142
  %0 = load i64* %args, align 8, !dbg !1144
  %1 = trunc i64 %0 to i32, !dbg !1144
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !547) nounwind, !dbg !1144
  %2 = getelementptr inbounds i64* %args, i64 1, !dbg !1145
  %3 = load i64* %2, align 8, !dbg !1145
  %4 = trunc i64 %3 to i32, !dbg !1145
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !549) nounwind, !dbg !1145
  %5 = getelementptr inbounds i64* %args, i64 2, !dbg !1146
  %6 = load i64* %5, align 8, !dbg !1146
  %7 = trunc i64 %6 to i32, !dbg !1146
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !550) nounwind, !dbg !1146
  %8 = call i32 @socket(i32 %1, i32 %4, i32 %7) nounwind, !dbg !1147
  br label %bb17, !dbg !1143

bb1:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !513) nounwind, !dbg !1148
  %9 = load i64* %args, align 8, !dbg !1150
  %10 = trunc i64 %9 to i32, !dbg !1150
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !514) nounwind, !dbg !1150
  %11 = getelementptr inbounds i64* %args, i64 1, !dbg !1151
  %12 = load i64* %11, align 8, !dbg !1151
  %13 = inttoptr i64 %12 to %struct.sockaddr*, !dbg !1151
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %13}, i64 0, metadata !516) nounwind, !dbg !1151
  %14 = getelementptr inbounds i64* %args, i64 2, !dbg !1152
  %15 = load i64* %14, align 8, !dbg !1152
  %16 = trunc i64 %15 to i32, !dbg !1152
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !517) nounwind, !dbg !1152
  %17 = call i32 @bind(i32 %10, %struct.sockaddr* %13, i32 %16) nounwind, !dbg !1153
  br label %bb17, !dbg !1149

bb2:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !502) nounwind, !dbg !1154
  %18 = load i64* %args, align 8, !dbg !1156
  %19 = trunc i64 %18 to i32, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !503) nounwind, !dbg !1156
  %20 = getelementptr inbounds i64* %args, i64 1, !dbg !1157
  %21 = load i64* %20, align 8, !dbg !1157
  %22 = inttoptr i64 %21 to %struct.sockaddr*, !dbg !1157
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %22}, i64 0, metadata !505) nounwind, !dbg !1157
  %23 = getelementptr inbounds i64* %args, i64 2, !dbg !1158
  %24 = load i64* %23, align 8, !dbg !1158
  %25 = trunc i64 %24 to i32, !dbg !1158
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !506) nounwind, !dbg !1158
  %26 = call i32 @connect(i32 %19, %struct.sockaddr* %22, i32 %25) nounwind, !dbg !1159
  br label %bb17, !dbg !1155

bb3:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !492) nounwind, !dbg !1160
  %27 = load i64* %args, align 8, !dbg !1162
  %28 = trunc i64 %27 to i32, !dbg !1162
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !493) nounwind, !dbg !1162
  %29 = getelementptr inbounds i64* %args, i64 1, !dbg !1163
  %30 = load i64* %29, align 8, !dbg !1163
  %31 = trunc i64 %30 to i32, !dbg !1163
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !495) nounwind, !dbg !1163
  %32 = call i32 @listen(i32 %28, i32 %31) nounwind, !dbg !1164
  br label %bb17, !dbg !1161

bb4:                                              ; preds = %entry
  %33 = getelementptr inbounds i64* %args, i64 2, !dbg !1165
  %34 = load i64* %33, align 8, !dbg !1165
  %35 = inttoptr i64 %34 to i32*, !dbg !1165
  %36 = getelementptr inbounds i64* %args, i64 1, !dbg !1165
  %37 = load i64* %36, align 8, !dbg !1165
  %38 = inttoptr i64 %37 to %struct.sockaddr*, !dbg !1165
  %39 = load i64* %args, align 8, !dbg !1165
  %40 = trunc i64 %39 to i32, !dbg !1165
  %41 = call i32 @__fd_accept(i32 %40, %struct.sockaddr* %38, i32* %35) nounwind, !dbg !1165
  br label %bb17, !dbg !1165

bb5:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !482) nounwind, !dbg !1166
  %42 = load i64* %args, align 8, !dbg !1168
  %43 = trunc i64 %42 to i32, !dbg !1168
  call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !483) nounwind, !dbg !1168
  %44 = getelementptr inbounds i64* %args, i64 1, !dbg !1169
  %45 = load i64* %44, align 8, !dbg !1169
  %46 = inttoptr i64 %45 to %struct.sockaddr*, !dbg !1169
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %46}, i64 0, metadata !485) nounwind, !dbg !1169
  %47 = getelementptr inbounds i64* %args, i64 2, !dbg !1170
  %48 = load i64* %47, align 8, !dbg !1170
  %49 = inttoptr i64 %48 to i32*, !dbg !1170
  call void @llvm.dbg.value(metadata !{i32* %49}, i64 0, metadata !486) nounwind, !dbg !1170
  %50 = call i32 @getsockname(i32 %43, %struct.sockaddr* %46, i32* %49) nounwind, !dbg !1171
  br label %bb17, !dbg !1167

bb6:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !471) nounwind, !dbg !1172
  %51 = load i64* %args, align 8, !dbg !1174
  %52 = trunc i64 %51 to i32, !dbg !1174
  call void @llvm.dbg.value(metadata !{i32 %52}, i64 0, metadata !472) nounwind, !dbg !1174
  %53 = getelementptr inbounds i64* %args, i64 1, !dbg !1175
  %54 = load i64* %53, align 8, !dbg !1175
  %55 = inttoptr i64 %54 to %struct.sockaddr*, !dbg !1175
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %55}, i64 0, metadata !474) nounwind, !dbg !1175
  %56 = getelementptr inbounds i64* %args, i64 2, !dbg !1176
  %57 = load i64* %56, align 8, !dbg !1176
  %58 = inttoptr i64 %57 to i32*, !dbg !1176
  call void @llvm.dbg.value(metadata !{i32* %58}, i64 0, metadata !475) nounwind, !dbg !1176
  %59 = call i32 @getpeername(i32 %52, %struct.sockaddr* %55, i32* %58) nounwind, !dbg !1177
  br label %bb17, !dbg !1173

bb7:                                              ; preds = %entry
  %60 = getelementptr inbounds i64* %args, i64 3, !dbg !1178
  %61 = load i64* %60, align 8, !dbg !1178
  %62 = trunc i64 %61 to i32, !dbg !1178
  %63 = getelementptr inbounds i64* %args, i64 2, !dbg !1178
  %64 = load i64* %63, align 8, !dbg !1178
  %65 = getelementptr inbounds i64* %args, i64 1, !dbg !1178
  %66 = load i64* %65, align 8, !dbg !1178
  %67 = inttoptr i64 %66 to i8*, !dbg !1178
  %68 = load i64* %args, align 8, !dbg !1178
  %69 = trunc i64 %68 to i32, !dbg !1178
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !447) nounwind, !dbg !1179
  call void @llvm.dbg.value(metadata !{i8* %67}, i64 0, metadata !448) nounwind, !dbg !1179
  call void @llvm.dbg.value(metadata !{i64 %64}, i64 0, metadata !449) nounwind, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !450) nounwind, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !432) nounwind, !dbg !1180
  call void @llvm.dbg.value(metadata !{i8* %67}, i64 0, metadata !433) nounwind, !dbg !1180
  call void @llvm.dbg.value(metadata !{i64 %64}, i64 0, metadata !434) nounwind, !dbg !1180
  call void @llvm.dbg.value(metadata !{i32 %62}, i64 0, metadata !435) nounwind, !dbg !1180
  call void @llvm.dbg.value(metadata !716, i64 0, metadata !436) nounwind, !dbg !1180
  call void @llvm.dbg.value(metadata !813, i64 0, metadata !437) nounwind, !dbg !1180
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i.i}, metadata !438) nounwind, !dbg !1182
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i.i}, metadata !440) nounwind, !dbg !1183
  %70 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 0, !dbg !1184
  store i8* %67, i8** %70, align 8, !dbg !1184
  %71 = getelementptr inbounds %struct.iovec* %iov.i.i, i64 0, i32 1, !dbg !1185
  store i64 %64, i64* %71, align 8, !dbg !1185
  %72 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 0, !dbg !1186
  store i8* null, i8** %72, align 8, !dbg !1186
  %73 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 1, !dbg !1187
  store i32 0, i32* %73, align 8, !dbg !1187
  %74 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 2, !dbg !1188
  store %struct.iovec* %iov.i.i, %struct.iovec** %74, align 8, !dbg !1188
  %75 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 3, !dbg !1189
  store i64 1, i64* %75, align 8, !dbg !1189
  %76 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 4, !dbg !1190
  store i8* null, i8** %76, align 8, !dbg !1190
  %77 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 5, !dbg !1191
  store i64 0, i64* %77, align 8, !dbg !1191
  %78 = getelementptr inbounds %struct.msghdr* %msg.i.i, i64 0, i32 6, !dbg !1192
  store i32 %62, i32* %78, align 8, !dbg !1192
  %79 = call i64 @__fd_sendmsg(i32 %69, %struct.msghdr* %msg.i.i, i32 %62) nounwind, !dbg !1193
  %80 = trunc i64 %79 to i32, !dbg !1178
  br label %bb17, !dbg !1178

bb8:                                              ; preds = %entry
  %81 = getelementptr inbounds i64* %args, i64 3, !dbg !1194
  %82 = load i64* %81, align 8, !dbg !1194
  %83 = trunc i64 %82 to i32, !dbg !1194
  %84 = getelementptr inbounds i64* %args, i64 2, !dbg !1194
  %85 = load i64* %84, align 8, !dbg !1194
  %86 = getelementptr inbounds i64* %args, i64 1, !dbg !1194
  %87 = load i64* %86, align 8, !dbg !1194
  %88 = inttoptr i64 %87 to i8*, !dbg !1194
  %89 = load i64* %args, align 8, !dbg !1194
  %90 = trunc i64 %89 to i32, !dbg !1194
  call void @llvm.dbg.value(metadata !{i32 %90}, i64 0, metadata !416) nounwind, !dbg !1195
  call void @llvm.dbg.value(metadata !{i8* %88}, i64 0, metadata !417) nounwind, !dbg !1195
  call void @llvm.dbg.value(metadata !{i64 %85}, i64 0, metadata !418) nounwind, !dbg !1195
  call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !419) nounwind, !dbg !1195
  call void @llvm.dbg.value(metadata !{i32 %90}, i64 0, metadata !400) nounwind, !dbg !1196
  call void @llvm.dbg.value(metadata !{i8* %88}, i64 0, metadata !401) nounwind, !dbg !1196
  call void @llvm.dbg.value(metadata !{i64 %85}, i64 0, metadata !402) nounwind, !dbg !1196
  call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !403) nounwind, !dbg !1196
  call void @llvm.dbg.value(metadata !716, i64 0, metadata !404) nounwind, !dbg !1196
  call void @llvm.dbg.value(metadata !717, i64 0, metadata !405) nounwind, !dbg !1196
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i.i19}, metadata !406) nounwind, !dbg !1198
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i.i20}, metadata !408) nounwind, !dbg !1199
  %91 = getelementptr inbounds %struct.iovec* %iov.i.i19, i64 0, i32 0, !dbg !1200
  store i8* %88, i8** %91, align 8, !dbg !1200
  %92 = getelementptr inbounds %struct.iovec* %iov.i.i19, i64 0, i32 1, !dbg !1201
  store i64 %85, i64* %92, align 8, !dbg !1201
  %93 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 0, !dbg !1202
  store i8* null, i8** %93, align 8, !dbg !1202
  %94 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 1, !dbg !1203
  store i32 0, i32* %94, align 8, !dbg !1203
  %95 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 2, !dbg !1204
  store %struct.iovec* %iov.i.i19, %struct.iovec** %95, align 8, !dbg !1204
  %96 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 3, !dbg !1205
  store i64 1, i64* %96, align 8, !dbg !1205
  %97 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 4, !dbg !1206
  store i8* null, i8** %97, align 8, !dbg !1206
  %98 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 5, !dbg !1207
  store i64 0, i64* %98, align 8, !dbg !1207
  %99 = getelementptr inbounds %struct.msghdr* %msg.i.i20, i64 0, i32 6, !dbg !1208
  store i32 %83, i32* %99, align 8, !dbg !1208
  %100 = call i64 @__fd_recvmsg(i32 %90, %struct.msghdr* %msg.i.i20, i32 %83) nounwind, !dbg !1209
  call void @llvm.dbg.value(metadata !{i64 %100}, i64 0, metadata !409) nounwind, !dbg !1209
  %101 = trunc i64 %100 to i32, !dbg !1194
  br label %bb17, !dbg !1194

bb9:                                              ; preds = %entry
  %102 = getelementptr inbounds i64* %args, i64 5, !dbg !1210
  %103 = load i64* %102, align 8, !dbg !1210
  %104 = trunc i64 %103 to i32, !dbg !1210
  %105 = getelementptr inbounds i64* %args, i64 4, !dbg !1210
  %106 = load i64* %105, align 8, !dbg !1210
  %107 = getelementptr inbounds i64* %args, i64 3, !dbg !1210
  %108 = load i64* %107, align 8, !dbg !1210
  %109 = trunc i64 %108 to i32, !dbg !1210
  %110 = getelementptr inbounds i64* %args, i64 2, !dbg !1210
  %111 = load i64* %110, align 8, !dbg !1210
  %112 = getelementptr inbounds i64* %args, i64 1, !dbg !1210
  %113 = load i64* %112, align 8, !dbg !1210
  %114 = inttoptr i64 %113 to i8*, !dbg !1210
  %115 = load i64* %args, align 8, !dbg !1210
  %116 = trunc i64 %115 to i32, !dbg !1210
  call void @llvm.dbg.value(metadata !{i32 %116}, i64 0, metadata !432) nounwind, !dbg !1211
  call void @llvm.dbg.value(metadata !{i8* %114}, i64 0, metadata !433) nounwind, !dbg !1211
  call void @llvm.dbg.value(metadata !{i64 %111}, i64 0, metadata !434) nounwind, !dbg !1211
  call void @llvm.dbg.value(metadata !{i32 %109}, i64 0, metadata !435) nounwind, !dbg !1211
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !436) nounwind, !dbg !1211
  call void @llvm.dbg.value(metadata !{i32 %104}, i64 0, metadata !437) nounwind, !dbg !1211
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i}, metadata !438) nounwind, !dbg !1212
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i}, metadata !440) nounwind, !dbg !1213
  %117 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 0, !dbg !1214
  store i8* %114, i8** %117, align 8, !dbg !1214
  %118 = getelementptr inbounds %struct.iovec* %iov.i, i64 0, i32 1, !dbg !1215
  store i64 %111, i64* %118, align 8, !dbg !1215
  %119 = inttoptr i64 %106 to i8*, !dbg !1216
  %120 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 0, !dbg !1216
  store i8* %119, i8** %120, align 8, !dbg !1216
  %121 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 1, !dbg !1217
  store i32 %104, i32* %121, align 8, !dbg !1217
  %122 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 2, !dbg !1218
  store %struct.iovec* %iov.i, %struct.iovec** %122, align 8, !dbg !1218
  %123 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 3, !dbg !1219
  store i64 1, i64* %123, align 8, !dbg !1219
  %124 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 4, !dbg !1220
  store i8* null, i8** %124, align 8, !dbg !1220
  %125 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 5, !dbg !1221
  store i64 0, i64* %125, align 8, !dbg !1221
  %126 = getelementptr inbounds %struct.msghdr* %msg.i, i64 0, i32 6, !dbg !1222
  store i32 %109, i32* %126, align 8, !dbg !1222
  %127 = call i64 @__fd_sendmsg(i32 %116, %struct.msghdr* %msg.i, i32 %109) nounwind, !dbg !1223
  %128 = trunc i64 %127 to i32, !dbg !1210
  br label %bb17, !dbg !1210

bb10:                                             ; preds = %entry
  %129 = getelementptr inbounds i64* %args, i64 5, !dbg !1224
  %130 = load i64* %129, align 8, !dbg !1224
  %131 = inttoptr i64 %130 to i32*, !dbg !1224
  %132 = getelementptr inbounds i64* %args, i64 4, !dbg !1224
  %133 = load i64* %132, align 8, !dbg !1224
  %134 = getelementptr inbounds i64* %args, i64 3, !dbg !1224
  %135 = load i64* %134, align 8, !dbg !1224
  %136 = trunc i64 %135 to i32, !dbg !1224
  %137 = load i64* %args, align 8, !dbg !1224
  %138 = trunc i64 %137 to i32, !dbg !1224
  call void @llvm.dbg.value(metadata !{i32 %138}, i64 0, metadata !400) nounwind, !dbg !1225
  call void @llvm.dbg.value(metadata !{i8* %146}, i64 0, metadata !401) nounwind, !dbg !1225
  call void @llvm.dbg.value(metadata !{i64 %147}, i64 0, metadata !402) nounwind, !dbg !1225
  call void @llvm.dbg.value(metadata !{i32 %136}, i64 0, metadata !403) nounwind, !dbg !1225
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !404) nounwind, !dbg !1225
  call void @llvm.dbg.value(metadata !{i32* %131}, i64 0, metadata !405) nounwind, !dbg !1225
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov.i21}, metadata !406) nounwind, !dbg !1226
  call void @llvm.dbg.declare(metadata !{%struct.msghdr* %msg.i22}, metadata !408) nounwind, !dbg !1227
  %139 = icmp ne i64 %133, 0, !dbg !1228
  %140 = icmp eq i64 %130, 0, !dbg !1228
  %141 = and i1 %139, %140, !dbg !1228
  br i1 %141, label %bb.i, label %bb3.i, !dbg !1228

bb.i:                                             ; preds = %bb10
  %142 = call i32* @__errno_location() nounwind readnone, !dbg !1229
  store i32 14, i32* %142, align 4, !dbg !1229
  br label %__fd_recvfrom.exit, !dbg !1230

bb3.i:                                            ; preds = %bb10
  %143 = getelementptr inbounds i64* %args, i64 1, !dbg !1224
  %144 = load i64* %143, align 8, !dbg !1224
  %145 = getelementptr inbounds i64* %args, i64 2, !dbg !1224
  %146 = inttoptr i64 %144 to i8*, !dbg !1224
  %147 = load i64* %145, align 8, !dbg !1224
  %148 = getelementptr inbounds %struct.iovec* %iov.i21, i64 0, i32 0, !dbg !1231
  store i8* %146, i8** %148, align 8, !dbg !1231
  %149 = getelementptr inbounds %struct.iovec* %iov.i21, i64 0, i32 1, !dbg !1232
  store i64 %147, i64* %149, align 8, !dbg !1232
  %150 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 0, !dbg !1233
  %151 = inttoptr i64 %133 to i8*, !dbg !1233
  store i8* %151, i8** %150, align 8, !dbg !1233
  br i1 %140, label %bb6.i, label %bb4.i, !dbg !1234

bb4.i:                                            ; preds = %bb3.i
  %152 = load i32* %131, align 4, !dbg !1234
  br label %bb6.i, !dbg !1234

bb6.i:                                            ; preds = %bb4.i, %bb3.i
  %iftmp.112.0.i = phi i32 [ %152, %bb4.i ], [ 0, %bb3.i ]
  %153 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 1, !dbg !1234
  store i32 %iftmp.112.0.i, i32* %153, align 8, !dbg !1234
  %154 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 2, !dbg !1235
  store %struct.iovec* %iov.i21, %struct.iovec** %154, align 8, !dbg !1235
  %155 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 3, !dbg !1236
  store i64 1, i64* %155, align 8, !dbg !1236
  %156 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 4, !dbg !1237
  store i8* null, i8** %156, align 8, !dbg !1237
  %157 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 5, !dbg !1238
  store i64 0, i64* %157, align 8, !dbg !1238
  %158 = getelementptr inbounds %struct.msghdr* %msg.i22, i64 0, i32 6, !dbg !1239
  store i32 %136, i32* %158, align 8, !dbg !1239
  %159 = call i64 @__fd_recvmsg(i32 %138, %struct.msghdr* %msg.i22, i32 %136) nounwind, !dbg !1240
  call void @llvm.dbg.value(metadata !{i64 %159}, i64 0, metadata !409) nounwind, !dbg !1240
  br i1 %140, label %__fd_recvfrom.exit, label %bb7.i, !dbg !1241

bb7.i:                                            ; preds = %bb6.i
  %160 = load i32* %153, align 8, !dbg !1241
  store i32 %160, i32* %131, align 4, !dbg !1241
  br label %__fd_recvfrom.exit, !dbg !1241

__fd_recvfrom.exit:                               ; preds = %bb.i, %bb6.i, %bb7.i
  %.0.i = phi i64 [ -1, %bb.i ], [ %159, %bb6.i ], [ %159, %bb7.i ]
  %161 = trunc i64 %.0.i to i32, !dbg !1224
  br label %bb17, !dbg !1224

bb11:                                             ; preds = %entry
  call void @llvm.dbg.value(metadata !{i64* %args}, i64 0, metadata !461) nounwind, !dbg !1242
  %162 = load i64* %args, align 8, !dbg !1244
  %163 = trunc i64 %162 to i32, !dbg !1244
  call void @llvm.dbg.value(metadata !{i32 %163}, i64 0, metadata !462) nounwind, !dbg !1244
  %164 = getelementptr inbounds i64* %args, i64 1, !dbg !1245
  %165 = load i64* %164, align 8, !dbg !1245
  %166 = trunc i64 %165 to i32, !dbg !1245
  call void @llvm.dbg.value(metadata !{i32 %166}, i64 0, metadata !464) nounwind, !dbg !1245
  %167 = call i32 @shutdown(i32 %163, i32 %166) nounwind, !dbg !1246
  br label %bb17, !dbg !1243

bb12:                                             ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([20 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !1247
  br label %bb17, !dbg !1248

bb13:                                             ; preds = %entry
  call void @klee_warning(i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0)) nounwind, !dbg !1249
  br label %bb17, !dbg !1250

bb14:                                             ; preds = %entry
  %168 = getelementptr inbounds i64* %args, i64 2, !dbg !1251
  %169 = load i64* %168, align 8, !dbg !1251
  %170 = trunc i64 %169 to i32, !dbg !1251
  %171 = getelementptr inbounds i64* %args, i64 1, !dbg !1251
  %172 = load i64* %171, align 8, !dbg !1251
  %173 = inttoptr i64 %172 to %struct.msghdr*, !dbg !1251
  %174 = load i64* %args, align 8, !dbg !1251
  %175 = trunc i64 %174 to i32, !dbg !1251
  %176 = call i64 @__fd_sendmsg(i32 %175, %struct.msghdr* %173, i32 %170) nounwind, !dbg !1251
  %177 = trunc i64 %176 to i32, !dbg !1251
  br label %bb17, !dbg !1251

bb15:                                             ; preds = %entry
  %178 = getelementptr inbounds i64* %args, i64 2, !dbg !1252
  %179 = load i64* %178, align 8, !dbg !1252
  %180 = trunc i64 %179 to i32, !dbg !1252
  %181 = getelementptr inbounds i64* %args, i64 1, !dbg !1252
  %182 = load i64* %181, align 8, !dbg !1252
  %183 = inttoptr i64 %182 to %struct.msghdr*, !dbg !1252
  %184 = load i64* %args, align 8, !dbg !1252
  %185 = trunc i64 %184 to i32, !dbg !1252
  %186 = call i64 @__fd_recvmsg(i32 %185, %struct.msghdr* %183, i32 %180) nounwind, !dbg !1252
  %187 = trunc i64 %186 to i32, !dbg !1252
  br label %bb17, !dbg !1252

bb16:                                             ; preds = %entry
  %188 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([46 x i8]* @.str18, i64 0, i64 0), i32 %type) nounwind, !dbg !1253
  %189 = call i32* @__errno_location() nounwind readnone, !dbg !1254
  store i32 38, i32* %189, align 4, !dbg !1254
  br label %bb17, !dbg !1255

bb17:                                             ; preds = %bb16, %bb15, %bb14, %bb13, %bb12, %bb11, %__fd_recvfrom.exit, %bb9, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3, %bb2, %bb1, %bb
  %.0 = phi i32 [ -1, %bb16 ], [ %177, %bb14 ], [ 0, %bb13 ], [ 0, %bb12 ], [ %167, %bb11 ], [ %161, %__fd_recvfrom.exit ], [ %128, %bb9 ], [ %101, %bb8 ], [ %80, %bb7 ], [ %187, %bb15 ], [ %59, %bb6 ], [ %50, %bb5 ], [ %41, %bb4 ], [ %32, %bb3 ], [ %26, %bb2 ], [ %17, %bb1 ], [ %8, %bb ]
  ret i32 %.0, !dbg !1143
}

declare i32 @printf(i8* nocapture, ...) nounwind

define weak i8* @canonicalize_file_name(i8* %name) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !553), !dbg !1256
  %0 = tail call noalias i8* @malloc(i64 4096) nounwind, !dbg !1257
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !554), !dbg !1257
  %1 = tail call i8* @realpath(i8* noalias %name, i8* noalias %0) nounwind, !dbg !1258
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !556), !dbg !1258
  %2 = icmp eq i8* %1, null, !dbg !1259
  br i1 %2, label %bb, label %bb1, !dbg !1259

bb:                                               ; preds = %entry
  tail call void @free(i8* %0) nounwind, !dbg !1260
  br label %bb1, !dbg !1260

bb1:                                              ; preds = %bb, %entry
  ret i8* %1, !dbg !1261
}

declare i8* @realpath(i8* noalias nocapture, i8* noalias) nounwind

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i32 @gettimeofday(%struct.timespec* noalias, %struct.anon* noalias) nounwind

declare i32 @__fputc_unlocked(i32, %struct._IO_FILE*)

declare i32 @__fgetc_unlocked(%struct._IO_FILE*)

declare void @klee_warning_once(i8*)

!llvm.dbg.sp = !{!0, !7, !8, !11, !88, !89, !94, !97, !114, !119, !122, !128, !149, !150, !161, !162, !165, !166, !171, !172, !177, !178, !179, !180, !183, !187, !190, !191, !192, !193, !194, !195, !198, !199, !200, !201, !204, !207, !208, !209, !212, !213, !216, !217, !218, !222, !274, !277}
!llvm.dbg.lv.gnu_dev_major = !{!369}
!llvm.dbg.lv.gnu_dev_minor = !{!370}
!llvm.dbg.lv.gnu_dev_makedev = !{!371, !372}
!llvm.dbg.lv.getsockopt = !{!373, !374, !375, !376, !377}
!llvm.dbg.lv.setsockopt = !{!378, !379, !380, !381, !382}
!llvm.dbg.lv.__fd_attach_dgram = !{!383}
!llvm.dbg.gv = !{!384}
!llvm.dbg.lv.getenv = !{!385}
!llvm.dbg.lv.setlocale = !{!386, !387}
!llvm.dbg.lv.clock_settime = !{!388, !389}
!llvm.dbg.lv.__fd_recvmsg = !{!390, !391, !392, !393}
!llvm.dbg.lv.recvmsg = !{!397, !398, !399}
!llvm.dbg.lv.__fd_recvfrom = !{!400, !401, !402, !403, !404, !405, !406, !408, !409}
!llvm.dbg.lv.recvfrom = !{!410, !411, !412, !413, !414, !415}
!llvm.dbg.lv.__fd_recv = !{!416, !417, !418, !419}
!llvm.dbg.lv.recv = !{!420, !421, !422, !423}
!llvm.dbg.lv.__fd_sendmsg = !{!424, !425, !426, !427}
!llvm.dbg.lv.sendmsg = !{!429, !430, !431}
!llvm.dbg.lv.__fd_sendto = !{!432, !433, !434, !435, !436, !437, !438, !440}
!llvm.dbg.lv.sendto = !{!441, !442, !443, !444, !445, !446}
!llvm.dbg.lv.__fd_send = !{!447, !448, !449, !450}
!llvm.dbg.lv.send = !{!451, !452, !453, !454}
!llvm.dbg.lv.shutdown = !{!455, !456, !457, !459}
!llvm.dbg.lv.__fd_shutdown = !{!461, !462, !464}
!llvm.dbg.lv.getpeername = !{!465, !466, !467, !468, !470}
!llvm.dbg.lv.__fd_getpeername = !{!471, !472, !474, !475}
!llvm.dbg.lv.getsockname = !{!476, !477, !478, !479, !481}
!llvm.dbg.lv.__fd_getsockname = !{!482, !483, !485, !486}
!llvm.dbg.lv.listen = !{!487, !488, !489, !491}
!llvm.dbg.lv.__fd_listen = !{!492, !493, !495}
!llvm.dbg.lv.connect = !{!496, !497, !498, !499, !501}
!llvm.dbg.lv.__fd_connect = !{!502, !503, !505, !506}
!llvm.dbg.lv.bind = !{!507, !508, !509, !510, !512}
!llvm.dbg.lv.__fd_bind = !{!513, !514, !516, !517}
!llvm.dbg.lv.rename = !{!518, !519, !520}
!llvm.dbg.lv.__allocate_sockaddr = !{!522, !523}
!llvm.dbg.lv.__fd_accept = !{!524, !525, !526, !527, !529, !530, !531, !533, !534}
!llvm.dbg.lv.accept = !{!535, !536, !537}
!llvm.dbg.lv.socket = !{!538, !539, !540, !541, !543, !544}
!llvm.dbg.lv.__fd_socket = !{!546, !547, !549, !550}
!llvm.dbg.lv.__socketcall = !{!551, !552}
!llvm.dbg.lv.canonicalize_file_name = !{!553, !554, !556}
!llvm.dbg.lv.strverscmp = !{!557, !558, !559, !562}
!llvm.dbg.lv.clock_gettime = !{!563, !564, !565}
!llvm.dbg.lv._IO_putc = !{!573, !574}
!llvm.dbg.lv._IO_getc = !{!575}
!llvm.dbg.lv.__syscall_rt_sigaction = !{!576, !577, !578, !579}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"gnu_dev_major", metadata !"gnu_dev_major", metadata !"gnu_dev_major", metadata !1, i32 253, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64)* @gnu_dev_major} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"stubs.c", metadata !"/home/xqx/projects/zesti-test/zesti/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"stubs.c", metadata !"/home/xqx/projects/zesti-test/zesti/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589860, metadata !1, metadata !"long long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589870, i32 0, metadata !1, metadata !"gnu_dev_minor", metadata !"gnu_dev_minor", metadata !"gnu_dev_minor", metadata !1, i32 258, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64)* @gnu_dev_minor} ; [ DW_TAG_subprogram ]
!8 = metadata !{i32 589870, i32 0, metadata !1, metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !"gnu_dev_makedev", metadata !1, i32 263, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i32)* @gnu_dev_makedev} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{metadata !6, metadata !5, metadata !5}
!11 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_sym_stream", metadata !"__get_sym_stream", metadata !"", metadata !12, i32 88, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!12 = metadata !{i32 589865, metadata !"sockets.c.inc", metadata !"/home/xqx/projects/zesti-test/zesti/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 589846, metadata !17, metadata !"exe_disk_file_t", metadata !17, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/xqx/projects/zesti-test/zesti/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 589843, metadata !1, metadata !"", metadata !17, i32 26, i64 320, i64 64, i64 0, i32 0, null, metadata !19, i32 0, null} ; [ DW_TAG_structure_type ]
!19 = metadata !{metadata !20, metadata !21, metadata !24, metadata !25, metadata !67}
!20 = metadata !{i32 589837, metadata !18, metadata !"size", metadata !17, i32 27, i64 32, i64 32, i64 0, i32 0, metadata !5} ; [ DW_TAG_member ]
!21 = metadata !{i32 589837, metadata !18, metadata !"contents", metadata !17, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!23 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 589837, metadata !18, metadata !"path", metadata !17, i32 29, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ]
!25 = metadata !{i32 589837, metadata !18, metadata !"stat", metadata !17, i32 30, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !28, i32 120, i64 1152, i64 64, i64 0, i32 0, null, metadata !29, i32 0, null} ; [ DW_TAG_structure_type ]
!28 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!29 = metadata !{metadata !30, metadata !34, metadata !36, metadata !38, metadata !40, metadata !42, metadata !44, metadata !46, metadata !47, metadata !50, metadata !52, metadata !54, metadata !61, metadata !62, metadata !63}
!30 = metadata !{i32 589837, metadata !27, metadata !"st_dev", metadata !28, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ]
!31 = metadata !{i32 589846, metadata !32, metadata !"__dev_t", metadata !32, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!32 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 589837, metadata !27, metadata !"st_ino", metadata !28, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 589846, metadata !32, metadata !"__ino64_t", metadata !32, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!36 = metadata !{i32 589837, metadata !27, metadata !"st_nlink", metadata !28, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ]
!37 = metadata !{i32 589846, metadata !32, metadata !"__nlink_t", metadata !32, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!38 = metadata !{i32 589837, metadata !27, metadata !"st_mode", metadata !28, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ]
!39 = metadata !{i32 589846, metadata !32, metadata !"__mode_t", metadata !32, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 589837, metadata !27, metadata !"st_uid", metadata !28, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589846, metadata !32, metadata !"__uid_t", metadata !32, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 589837, metadata !27, metadata !"st_gid", metadata !28, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !43} ; [ DW_TAG_member ]
!43 = metadata !{i32 589846, metadata !32, metadata !"__gid_t", metadata !32, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 589837, metadata !27, metadata !"__pad0", metadata !28, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!46 = metadata !{i32 589837, metadata !27, metadata !"st_rdev", metadata !28, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ]
!47 = metadata !{i32 589837, metadata !27, metadata !"st_size", metadata !28, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !48} ; [ DW_TAG_member ]
!48 = metadata !{i32 589846, metadata !32, metadata !"__off_t", metadata !32, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!49 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 589837, metadata !27, metadata !"st_blksize", metadata !28, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !51} ; [ DW_TAG_member ]
!51 = metadata !{i32 589846, metadata !32, metadata !"__blksize_t", metadata !32, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 589837, metadata !27, metadata !"st_blocks", metadata !28, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !53} ; [ DW_TAG_member ]
!53 = metadata !{i32 589846, metadata !32, metadata !"__blkcnt64_t", metadata !32, i32 173, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!54 = metadata !{i32 589837, metadata !27, metadata !"st_atim", metadata !28, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !55} ; [ DW_TAG_member ]
!55 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !56, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !57, i32 0, null} ; [ DW_TAG_structure_type ]
!56 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!57 = metadata !{metadata !58, metadata !60}
!58 = metadata !{i32 589837, metadata !55, metadata !"tv_sec", metadata !56, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ]
!59 = metadata !{i32 589846, metadata !32, metadata !"__time_t", metadata !32, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!60 = metadata !{i32 589837, metadata !55, metadata !"tv_nsec", metadata !56, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ]
!61 = metadata !{i32 589837, metadata !27, metadata !"st_mtim", metadata !28, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !55} ; [ DW_TAG_member ]
!62 = metadata !{i32 589837, metadata !27, metadata !"st_ctim", metadata !28, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !55} ; [ DW_TAG_member ]
!63 = metadata !{i32 589837, metadata !27, metadata !"__unused", metadata !28, i32 167, i64 192, i64 64, i64 960, i32 0, metadata !64} ; [ DW_TAG_member ]
!64 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !49, metadata !65, i32 0, null} ; [ DW_TAG_array_type ]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!67 = metadata !{i32 589837, metadata !18, metadata !"src", metadata !17, i32 31, i64 64, i64 64, i64 256, i32 0, metadata !68} ; [ DW_TAG_member ]
!68 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 589846, metadata !17, metadata !"exe_sockaddr_t", metadata !17, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ]
!70 = metadata !{i32 589843, metadata !1, metadata !"", metadata !17, i32 21, i64 128, i64 64, i64 0, i32 0, null, metadata !71, i32 0, null} ; [ DW_TAG_structure_type ]
!71 = metadata !{metadata !72, metadata !85}
!72 = metadata !{i32 589837, metadata !70, metadata !"addr", metadata !17, i32 22, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ]
!73 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 589843, metadata !1, metadata !"sockaddr_storage", metadata !75, i32 194, i64 1024, i64 64, i64 0, i32 0, null, metadata !76, i32 0, null} ; [ DW_TAG_structure_type ]
!75 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!76 = metadata !{metadata !77, metadata !80, metadata !81}
!77 = metadata !{i32 589837, metadata !74, metadata !"ss_family", metadata !75, i32 195, i64 16, i64 16, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ]
!78 = metadata !{i32 589846, metadata !75, metadata !"sa_family_t", metadata !75, i32 181, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ]
!79 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 589837, metadata !74, metadata !"__ss_align", metadata !75, i32 196, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ]
!81 = metadata !{i32 589837, metadata !74, metadata !"__ss_padding", metadata !75, i32 197, i64 896, i64 8, i64 128, i32 0, metadata !82} ; [ DW_TAG_member ]
!82 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 896, i64 8, i64 0, i32 0, metadata !23, metadata !83, i32 0, null} ; [ DW_TAG_array_type ]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 589857, i64 0, i64 111}      ; [ DW_TAG_subrange_type ]
!85 = metadata !{i32 589837, metadata !70, metadata !"addrlen", metadata !17, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !86} ; [ DW_TAG_member ]
!86 = metadata !{i32 589846, metadata !87, metadata !"socklen_t", metadata !87, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!87 = metadata !{i32 589865, metadata !"confname.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!88 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_sym_dgram", metadata !"__get_sym_dgram", metadata !"", metadata !12, i32 99, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getsockopt", metadata !"getsockopt", metadata !"getsockopt", metadata !12, i32 861, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, i8*, i32*)* @getsockopt} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, null} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{metadata !45, metadata !45, metadata !45, metadata !45, metadata !92, metadata !93}
!92 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ]
!94 = metadata !{i32 589870, i32 0, metadata !1, metadata !"setsockopt", metadata !"setsockopt", metadata !"setsockopt", metadata !12, i32 867, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, i8*, i32)* @setsockopt} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, null} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{metadata !45, metadata !45, metadata !45, metadata !45, metadata !92, metadata !86}
!97 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_attach_dgram", metadata !"__fd_attach_dgram", metadata !"__fd_attach_dgram", metadata !12, i32 838, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.exe_file_t*)* @__fd_attach_dgram} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, null} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !100, metadata !102}
!100 = metadata !{i32 589846, metadata !101, metadata !"ssize_t", metadata !101, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!101 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!102 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ]
!103 = metadata !{i32 589843, metadata !1, metadata !"exe_file_t", metadata !104, i32 8, i64 448, i64 64, i64 0, i32 0, null, metadata !105, i32 0, null} ; [ DW_TAG_structure_type ]
!104 = metadata !{i32 589865, metadata !"sockets.h", metadata !"/home/xqx/projects/zesti-test/zesti/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !110, metadata !111, metadata !112, metadata !113}
!106 = metadata !{i32 589837, metadata !103, metadata !"fd", metadata !17, i32 45, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!107 = metadata !{i32 589837, metadata !103, metadata !"flags", metadata !17, i32 46, i64 32, i64 32, i64 32, i32 0, metadata !5} ; [ DW_TAG_member ]
!108 = metadata !{i32 589837, metadata !103, metadata !"off", metadata !17, i32 49, i64 64, i64 64, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ]
!109 = metadata !{i32 589846, metadata !101, metadata !"off64_t", metadata !101, i32 103, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!110 = metadata !{i32 589837, metadata !103, metadata !"dfile", metadata !17, i32 50, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ]
!111 = metadata !{i32 589837, metadata !103, metadata !"local", metadata !17, i32 51, i64 128, i64 64, i64 192, i32 0, metadata !69} ; [ DW_TAG_member ]
!112 = metadata !{i32 589837, metadata !103, metadata !"foreign", metadata !17, i32 52, i64 64, i64 64, i64 320, i32 0, metadata !68} ; [ DW_TAG_member ]
!113 = metadata !{i32 589837, metadata !103, metadata !"domain", metadata !17, i32 56, i64 32, i64 32, i64 384, i32 0, metadata !45} ; [ DW_TAG_member ]
!114 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getenv", metadata !"getenv", metadata !"getenv", metadata !1, i32 579, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @getenv} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, null} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{metadata !22, metadata !117}
!117 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ]
!118 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !23} ; [ DW_TAG_const_type ]
!119 = metadata !{i32 589870, i32 0, metadata !1, metadata !"setlocale", metadata !"setlocale", metadata !"setlocale", metadata !1, i32 573, metadata !120, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i8*)* @setlocale} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, null} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{metadata !22, metadata !45, metadata !22}
!122 = metadata !{i32 589870, i32 0, metadata !1, metadata !"clock_settime", metadata !"clock_settime", metadata !"clock_settime", metadata !1, i32 169, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.timespec*)* @clock_settime} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, null} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{metadata !45, metadata !125, metadata !126}
!125 = metadata !{i32 589846, metadata !56, metadata !"clockid_t", metadata !56, i32 104, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!126 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ]
!127 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ]
!128 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_recvmsg", metadata !"__fd_recvmsg", metadata !"__fd_recvmsg", metadata !12, i32 799, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.msghdr*, i32)* @__fd_recvmsg} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, null} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{metadata !100, metadata !45, metadata !131, metadata !45}
!131 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ]
!132 = metadata !{i32 589843, metadata !1, metadata !"msghdr", metadata !75, i32 254, i64 448, i64 64, i64 0, i32 0, null, metadata !133, i32 0, null} ; [ DW_TAG_structure_type ]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !145, metadata !146, metadata !147, metadata !148}
!134 = metadata !{i32 589837, metadata !132, metadata !"msg_name", metadata !75, i32 255, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ]
!135 = metadata !{i32 589837, metadata !132, metadata !"msg_namelen", metadata !75, i32 256, i64 32, i64 32, i64 64, i32 0, metadata !86} ; [ DW_TAG_member ]
!136 = metadata !{i32 589837, metadata !132, metadata !"msg_iov", metadata !75, i32 258, i64 64, i64 64, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ]
!137 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ]
!138 = metadata !{i32 589843, metadata !1, metadata !"iovec", metadata !139, i32 45, i64 128, i64 64, i64 0, i32 0, null, metadata !140, i32 0, null} ; [ DW_TAG_structure_type ]
!139 = metadata !{i32 589865, metadata !"uio.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!140 = metadata !{metadata !141, metadata !142}
!141 = metadata !{i32 589837, metadata !138, metadata !"iov_base", metadata !139, i32 46, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ]
!142 = metadata !{i32 589837, metadata !138, metadata !"iov_len", metadata !139, i32 47, i64 64, i64 64, i64 64, i32 0, metadata !143} ; [ DW_TAG_member ]
!143 = metadata !{i32 589846, metadata !144, metadata !"size_t", metadata !144, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!144 = metadata !{i32 589865, metadata !"xlocale.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!145 = metadata !{i32 589837, metadata !132, metadata !"msg_iovlen", metadata !75, i32 259, i64 64, i64 64, i64 192, i32 0, metadata !143} ; [ DW_TAG_member ]
!146 = metadata !{i32 589837, metadata !132, metadata !"msg_control", metadata !75, i32 261, i64 64, i64 64, i64 256, i32 0, metadata !92} ; [ DW_TAG_member ]
!147 = metadata !{i32 589837, metadata !132, metadata !"msg_controllen", metadata !75, i32 262, i64 64, i64 64, i64 320, i32 0, metadata !143} ; [ DW_TAG_member ]
!148 = metadata !{i32 589837, metadata !132, metadata !"msg_flags", metadata !75, i32 267, i64 32, i64 32, i64 384, i32 0, metadata !45} ; [ DW_TAG_member ]
!149 = metadata !{i32 589870, i32 0, metadata !1, metadata !"recvmsg", metadata !"recvmsg", metadata !"recvmsg", metadata !12, i32 794, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.msghdr*, i32)* @recvmsg} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_recvfrom", metadata !"__fd_recvfrom", metadata !"__fd_recvfrom", metadata !12, i32 706, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32, %struct.sockaddr*, i32*)* @__fd_recvfrom} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, null} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{metadata !100, metadata !45, metadata !92, metadata !143, metadata !45, metadata !153, metadata !93}
!153 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ]
!154 = metadata !{i32 589843, metadata !1, metadata !"sockaddr", metadata !75, i32 181, i64 128, i64 16, i64 0, i32 0, null, metadata !155, i32 0, null} ; [ DW_TAG_structure_type ]
!155 = metadata !{metadata !156, metadata !157}
!156 = metadata !{i32 589837, metadata !154, metadata !"sa_family", metadata !75, i32 182, i64 16, i64 16, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ]
!157 = metadata !{i32 589837, metadata !154, metadata !"sa_data", metadata !75, i32 183, i64 112, i64 8, i64 16, i32 0, metadata !158} ; [ DW_TAG_member ]
!158 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 112, i64 8, i64 0, i32 0, metadata !23, metadata !159, i32 0, null} ; [ DW_TAG_array_type ]
!159 = metadata !{metadata !160}
!160 = metadata !{i32 589857, i64 0, i64 13}      ; [ DW_TAG_subrange_type ]
!161 = metadata !{i32 589870, i32 0, metadata !1, metadata !"recvfrom", metadata !"recvfrom", metadata !"recvfrom", metadata !12, i32 701, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32, %struct.sockaddr*, i32*)* @recvfrom} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_recv", metadata !"__fd_recv", metadata !"__fd_recv", metadata !12, i32 672, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32)* @__fd_recv} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{metadata !100, metadata !45, metadata !92, metadata !143, metadata !45}
!165 = metadata !{i32 589870, i32 0, metadata !1, metadata !"recv", metadata !"recv", metadata !"recv", metadata !12, i32 667, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32)* @recv} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_sendmsg", metadata !"__fd_sendmsg", metadata !"__fd_sendmsg", metadata !12, i32 740, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.msghdr*, i32)* @__fd_sendmsg} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, null} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{metadata !100, metadata !45, metadata !169, metadata !45}
!169 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ]
!170 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 448, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_const_type ]
!171 = metadata !{i32 589870, i32 0, metadata !1, metadata !"sendmsg", metadata !"sendmsg", metadata !"sendmsg", metadata !12, i32 735, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.msghdr*, i32)* @sendmsg} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_sendto", metadata !"__fd_sendto", metadata !"__fd_sendto", metadata !12, i32 682, metadata !173, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32, %struct.sockaddr*, i32)* @__fd_sendto} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, null} ; [ DW_TAG_subroutine_type ]
!174 = metadata !{metadata !100, metadata !45, metadata !92, metadata !143, metadata !45, metadata !175, metadata !86}
!175 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ]
!176 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 16, i64 0, i32 0, metadata !154} ; [ DW_TAG_const_type ]
!177 = metadata !{i32 589870, i32 0, metadata !1, metadata !"sendto", metadata !"sendto", metadata !"sendto", metadata !12, i32 677, metadata !173, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32, %struct.sockaddr*, i32)* @sendto} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_send", metadata !"__fd_send", metadata !"__fd_send", metadata !12, i32 663, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32)* @__fd_send} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 589870, i32 0, metadata !1, metadata !"send", metadata !"send", metadata !"send", metadata !12, i32 658, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32)* @send} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 589870, i32 0, metadata !1, metadata !"shutdown", metadata !"shutdown", metadata !"shutdown", metadata !12, i32 615, metadata !181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @shutdown} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, null} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{metadata !45, metadata !45, metadata !45}
!183 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_shutdown", metadata !"__fd_shutdown", metadata !"__fd_shutdown", metadata !12, i32 609, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_shutdown} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, null} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{metadata !45, metadata !186}
!186 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!187 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getpeername", metadata !"getpeername", metadata !"getpeername", metadata !12, i32 571, metadata !188, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @getpeername} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, null} ; [ DW_TAG_subroutine_type ]
!189 = metadata !{metadata !45, metadata !45, metadata !153, metadata !93}
!190 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_getpeername", metadata !"__fd_getpeername", metadata !"__fd_getpeername", metadata !12, i32 564, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_getpeername} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getsockname", metadata !"getsockname", metadata !"getsockname", metadata !12, i32 527, metadata !188, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @getsockname} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_getsockname", metadata !"__fd_getsockname", metadata !"__fd_getsockname", metadata !12, i32 519, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_getsockname} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 589870, i32 0, metadata !1, metadata !"listen", metadata !"listen", metadata !"listen", metadata !12, i32 375, metadata !181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @listen} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_listen", metadata !"__fd_listen", metadata !"__fd_listen", metadata !12, i32 368, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_listen} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 589870, i32 0, metadata !1, metadata !"connect", metadata !"connect", metadata !"connect", metadata !12, i32 319, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32)* @connect} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, null} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !45, metadata !45, metadata !175, metadata !86}
!198 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_connect", metadata !"__fd_connect", metadata !"__fd_connect", metadata !12, i32 312, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_connect} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 589870, i32 0, metadata !1, metadata !"bind", metadata !"bind", metadata !"bind", metadata !12, i32 267, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32)* @bind} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_bind", metadata !"__fd_bind", metadata !"__fd_bind", metadata !12, i32 259, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_bind} ; [ DW_TAG_subprogram ]
!201 = metadata !{i32 589870, i32 0, metadata !1, metadata !"rename", metadata !"rename", metadata !"rename", metadata !1, i32 142, metadata !202, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @rename} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, null} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{metadata !45, metadata !117, metadata !117}
!204 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__allocate_sockaddr", metadata !"__allocate_sockaddr", metadata !"", metadata !12, i32 106, metadata !205, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.exe_sockaddr_t* (i32, %struct.exe_sockaddr_t*)* @__allocate_sockaddr} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, null} ; [ DW_TAG_subroutine_type ]
!206 = metadata !{metadata !68, metadata !45, metadata !68}
!207 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_accept", metadata !"__fd_accept", metadata !"__fd_accept", metadata !12, i32 413, metadata !188, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @__fd_accept} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 589870, i32 0, metadata !1, metadata !"accept", metadata !"accept", metadata !"accept", metadata !12, i32 409, metadata !188, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @accept} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 589870, i32 0, metadata !1, metadata !"socket", metadata !"socket", metadata !"socket", metadata !12, i32 141, metadata !210, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @socket} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, null} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{metadata !45, metadata !45, metadata !45, metadata !45}
!212 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_socket", metadata !"__fd_socket", metadata !"__fd_socket", metadata !12, i32 132, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64*)* @__fd_socket} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__socketcall", metadata !"__socketcall", metadata !"__socketcall", metadata !12, i32 25, metadata !214, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64*)* @__socketcall} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, null} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{metadata !45, metadata !45, metadata !186}
!216 = metadata !{i32 589870, i32 0, metadata !1, metadata !"canonicalize_file_name", metadata !"canonicalize_file_name", metadata !"canonicalize_file_name", metadata !1, i32 270, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @canonicalize_file_name} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 589870, i32 0, metadata !1, metadata !"strverscmp", metadata !"strverscmp", metadata !"strverscmp", metadata !1, i32 248, metadata !202, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @strverscmp} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 589870, i32 0, metadata !1, metadata !"clock_gettime", metadata !"clock_gettime", metadata !"clock_gettime", metadata !1, i32 160, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.timespec*)* @clock_gettime} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, null} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !45, metadata !125, metadata !221}
!221 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!222 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_IO_putc", metadata !"_IO_putc", metadata !"_IO_putc", metadata !1, i32 94, metadata !223, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct._IO_FILE*)* @_IO_putc} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, null} ; [ DW_TAG_subroutine_type ]
!224 = metadata !{metadata !45, metadata !45, metadata !225}
!225 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !226} ; [ DW_TAG_pointer_type ]
!226 = metadata !{i32 589846, metadata !101, metadata !"FILE", metadata !101, i32 65, i64 0, i64 0, i64 0, i32 0, metadata !227} ; [ DW_TAG_typedef ]
!227 = metadata !{i32 589843, metadata !1, metadata !"_IO_FILE", metadata !101, i32 45, i64 1728, i64 64, i64 0, i32 0, null, metadata !228, i32 0, null} ; [ DW_TAG_structure_type ]
!228 = metadata !{metadata !229, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !257, metadata !261, metadata !262, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270}
!229 = metadata !{i32 589837, metadata !227, metadata !"_flags", metadata !230, i32 274, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!230 = metadata !{i32 589865, metadata !"libio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!231 = metadata !{i32 589837, metadata !227, metadata !"_IO_read_ptr", metadata !230, i32 279, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ]
!232 = metadata !{i32 589837, metadata !227, metadata !"_IO_read_end", metadata !230, i32 280, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ]
!233 = metadata !{i32 589837, metadata !227, metadata !"_IO_read_base", metadata !230, i32 281, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ]
!234 = metadata !{i32 589837, metadata !227, metadata !"_IO_write_base", metadata !230, i32 282, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ]
!235 = metadata !{i32 589837, metadata !227, metadata !"_IO_write_ptr", metadata !230, i32 283, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ]
!236 = metadata !{i32 589837, metadata !227, metadata !"_IO_write_end", metadata !230, i32 284, i64 64, i64 64, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ]
!237 = metadata !{i32 589837, metadata !227, metadata !"_IO_buf_base", metadata !230, i32 285, i64 64, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ]
!238 = metadata !{i32 589837, metadata !227, metadata !"_IO_buf_end", metadata !230, i32 286, i64 64, i64 64, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ]
!239 = metadata !{i32 589837, metadata !227, metadata !"_IO_save_base", metadata !230, i32 288, i64 64, i64 64, i64 576, i32 0, metadata !22} ; [ DW_TAG_member ]
!240 = metadata !{i32 589837, metadata !227, metadata !"_IO_backup_base", metadata !230, i32 289, i64 64, i64 64, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ]
!241 = metadata !{i32 589837, metadata !227, metadata !"_IO_save_end", metadata !230, i32 290, i64 64, i64 64, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ]
!242 = metadata !{i32 589837, metadata !227, metadata !"_markers", metadata !230, i32 292, i64 64, i64 64, i64 768, i32 0, metadata !243} ; [ DW_TAG_member ]
!243 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_pointer_type ]
!244 = metadata !{i32 589843, metadata !1, metadata !"_IO_marker", metadata !230, i32 188, i64 192, i64 64, i64 0, i32 0, null, metadata !245, i32 0, null} ; [ DW_TAG_structure_type ]
!245 = metadata !{metadata !246, metadata !247, metadata !249}
!246 = metadata !{i32 589837, metadata !244, metadata !"_next", metadata !230, i32 189, i64 64, i64 64, i64 0, i32 0, metadata !243} ; [ DW_TAG_member ]
!247 = metadata !{i32 589837, metadata !244, metadata !"_sbuf", metadata !230, i32 190, i64 64, i64 64, i64 64, i32 0, metadata !248} ; [ DW_TAG_member ]
!248 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !227} ; [ DW_TAG_pointer_type ]
!249 = metadata !{i32 589837, metadata !244, metadata !"_pos", metadata !230, i32 194, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ]
!250 = metadata !{i32 589837, metadata !227, metadata !"_chain", metadata !230, i32 294, i64 64, i64 64, i64 832, i32 0, metadata !248} ; [ DW_TAG_member ]
!251 = metadata !{i32 589837, metadata !227, metadata !"_fileno", metadata !230, i32 296, i64 32, i64 32, i64 896, i32 0, metadata !45} ; [ DW_TAG_member ]
!252 = metadata !{i32 589837, metadata !227, metadata !"_flags2", metadata !230, i32 300, i64 32, i64 32, i64 928, i32 0, metadata !45} ; [ DW_TAG_member ]
!253 = metadata !{i32 589837, metadata !227, metadata !"_old_offset", metadata !230, i32 302, i64 64, i64 64, i64 960, i32 0, metadata !48} ; [ DW_TAG_member ]
!254 = metadata !{i32 589837, metadata !227, metadata !"_cur_column", metadata !230, i32 306, i64 16, i64 16, i64 1024, i32 0, metadata !79} ; [ DW_TAG_member ]
!255 = metadata !{i32 589837, metadata !227, metadata !"_vtable_offset", metadata !230, i32 307, i64 8, i64 8, i64 1040, i32 0, metadata !256} ; [ DW_TAG_member ]
!256 = metadata !{i32 589860, metadata !1, metadata !"signed char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!257 = metadata !{i32 589837, metadata !227, metadata !"_shortbuf", metadata !230, i32 308, i64 8, i64 8, i64 1048, i32 0, metadata !258} ; [ DW_TAG_member ]
!258 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !23, metadata !259, i32 0, null} ; [ DW_TAG_array_type ]
!259 = metadata !{metadata !260}
!260 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!261 = metadata !{i32 589837, metadata !227, metadata !"_lock", metadata !230, i32 312, i64 64, i64 64, i64 1088, i32 0, metadata !92} ; [ DW_TAG_member ]
!262 = metadata !{i32 589837, metadata !227, metadata !"_offset", metadata !230, i32 321, i64 64, i64 64, i64 1152, i32 0, metadata !263} ; [ DW_TAG_member ]
!263 = metadata !{i32 589846, metadata !32, metadata !"__off64_t", metadata !32, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!264 = metadata !{i32 589837, metadata !227, metadata !"__pad1", metadata !230, i32 330, i64 64, i64 64, i64 1216, i32 0, metadata !92} ; [ DW_TAG_member ]
!265 = metadata !{i32 589837, metadata !227, metadata !"__pad2", metadata !230, i32 331, i64 64, i64 64, i64 1280, i32 0, metadata !92} ; [ DW_TAG_member ]
!266 = metadata !{i32 589837, metadata !227, metadata !"__pad3", metadata !230, i32 332, i64 64, i64 64, i64 1344, i32 0, metadata !92} ; [ DW_TAG_member ]
!267 = metadata !{i32 589837, metadata !227, metadata !"__pad4", metadata !230, i32 333, i64 64, i64 64, i64 1408, i32 0, metadata !92} ; [ DW_TAG_member ]
!268 = metadata !{i32 589837, metadata !227, metadata !"__pad5", metadata !230, i32 334, i64 64, i64 64, i64 1472, i32 0, metadata !143} ; [ DW_TAG_member ]
!269 = metadata !{i32 589837, metadata !227, metadata !"_mode", metadata !230, i32 336, i64 32, i64 32, i64 1536, i32 0, metadata !45} ; [ DW_TAG_member ]
!270 = metadata !{i32 589837, metadata !227, metadata !"_unused2", metadata !230, i32 338, i64 160, i64 8, i64 1568, i32 0, metadata !271} ; [ DW_TAG_member ]
!271 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 160, i64 8, i64 0, i32 0, metadata !23, metadata !272, i32 0, null} ; [ DW_TAG_array_type ]
!272 = metadata !{metadata !273}
!273 = metadata !{i32 589857, i64 0, i64 19}      ; [ DW_TAG_subrange_type ]
!274 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_IO_getc", metadata !"_IO_getc", metadata !"_IO_getc", metadata !1, i32 89, metadata !275, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*)* @_IO_getc} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, null} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{metadata !45, metadata !225}
!277 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__syscall_rt_sigaction", metadata !"__syscall_rt_sigaction", metadata !"__syscall_rt_sigaction", metadata !1, i32 42, metadata !278, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sigaction*, %struct.sigaction*, i64)* @__syscall_rt_sigaction} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, null} ; [ DW_TAG_subroutine_type ]
!279 = metadata !{metadata !45, metadata !45, metadata !280, metadata !368, metadata !143}
!280 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ]
!281 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 1216, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_const_type ]
!282 = metadata !{i32 589843, metadata !1, metadata !"sigaction", metadata !283, i32 26, i64 1216, i64 64, i64 0, i32 0, null, metadata !284, i32 0, null} ; [ DW_TAG_structure_type ]
!283 = metadata !{i32 589865, metadata !"sigaction.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!284 = metadata !{metadata !285, metadata !354, metadata !363, metadata !364}
!285 = metadata !{i32 589837, metadata !282, metadata !"__sigaction_handler", metadata !283, i32 36, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_member ]
!286 = metadata !{i32 589847, metadata !1, metadata !"", metadata !283, i32 30, i64 64, i64 64, i64 0, i32 0, null, metadata !287, i32 0, null} ; [ DW_TAG_union_type ]
!287 = metadata !{metadata !288, metadata !294}
!288 = metadata !{i32 589837, metadata !286, metadata !"sa_handler", metadata !283, i32 32, i64 64, i64 64, i64 0, i32 0, metadata !289} ; [ DW_TAG_member ]
!289 = metadata !{i32 589846, metadata !290, metadata !"__sighandler_t", metadata !290, i32 211, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_typedef ]
!290 = metadata !{i32 589865, metadata !"signal.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!291 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !292} ; [ DW_TAG_pointer_type ]
!292 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, null} ; [ DW_TAG_subroutine_type ]
!293 = metadata !{null, metadata !45}
!294 = metadata !{i32 589837, metadata !286, metadata !"sa_sigaction", metadata !283, i32 34, i64 64, i64 64, i64 0, i32 0, metadata !295} ; [ DW_TAG_member ]
!295 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !296} ; [ DW_TAG_pointer_type ]
!296 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, null} ; [ DW_TAG_subroutine_type ]
!297 = metadata !{null, metadata !45, metadata !298, metadata !92}
!298 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !299} ; [ DW_TAG_pointer_type ]
!299 = metadata !{i32 589846, metadata !300, metadata !"siginfo_t", metadata !300, i32 130, i64 0, i64 0, i64 0, i32 0, metadata !301} ; [ DW_TAG_typedef ]
!300 = metadata !{i32 589865, metadata !"siginfo.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!301 = metadata !{i32 589843, metadata !1, metadata !"siginfo", metadata !300, i32 52, i64 1024, i64 64, i64 0, i32 0, null, metadata !302, i32 0, null} ; [ DW_TAG_structure_type ]
!302 = metadata !{metadata !303, metadata !304, metadata !305, metadata !306}
!303 = metadata !{i32 589837, metadata !301, metadata !"si_signo", metadata !300, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!304 = metadata !{i32 589837, metadata !301, metadata !"si_errno", metadata !300, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ]
!305 = metadata !{i32 589837, metadata !301, metadata !"si_code", metadata !300, i32 56, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ]
!306 = metadata !{i32 589837, metadata !301, metadata !"_sifields", metadata !300, i32 107, i64 896, i64 64, i64 128, i32 0, metadata !307} ; [ DW_TAG_member ]
!307 = metadata !{i32 589847, metadata !1, metadata !"", metadata !300, i32 59, i64 896, i64 64, i64 0, i32 0, null, metadata !308, i32 0, null} ; [ DW_TAG_union_type ]
!308 = metadata !{metadata !309, metadata !313, metadata !319, metadata !330, metadata !336, metadata !345, metadata !349}
!309 = metadata !{i32 589837, metadata !307, metadata !"_pad", metadata !300, i32 60, i64 896, i64 32, i64 0, i32 0, metadata !310} ; [ DW_TAG_member ]
!310 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 896, i64 32, i64 0, i32 0, metadata !45, metadata !311, i32 0, null} ; [ DW_TAG_array_type ]
!311 = metadata !{metadata !312}
!312 = metadata !{i32 589857, i64 0, i64 27}      ; [ DW_TAG_subrange_type ]
!313 = metadata !{i32 589837, metadata !307, metadata !"_kill", metadata !300, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !314} ; [ DW_TAG_member ]
!314 = metadata !{i32 589843, metadata !1, metadata !"", metadata !300, i32 64, i64 64, i64 32, i64 0, i32 0, null, metadata !315, i32 0, null} ; [ DW_TAG_structure_type ]
!315 = metadata !{metadata !316, metadata !318}
!316 = metadata !{i32 589837, metadata !314, metadata !"si_pid", metadata !300, i32 65, i64 32, i64 32, i64 0, i32 0, metadata !317} ; [ DW_TAG_member ]
!317 = metadata !{i32 589846, metadata !32, metadata !"__pid_t", metadata !32, i32 144, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ]
!318 = metadata !{i32 589837, metadata !314, metadata !"si_uid", metadata !300, i32 66, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ]
!319 = metadata !{i32 589837, metadata !307, metadata !"_timer", metadata !300, i32 75, i64 128, i64 64, i64 0, i32 0, metadata !320} ; [ DW_TAG_member ]
!320 = metadata !{i32 589843, metadata !1, metadata !"", metadata !300, i32 71, i64 128, i64 64, i64 0, i32 0, null, metadata !321, i32 0, null} ; [ DW_TAG_structure_type ]
!321 = metadata !{metadata !322, metadata !323, metadata !324}
!322 = metadata !{i32 589837, metadata !320, metadata !"si_tid", metadata !300, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!323 = metadata !{i32 589837, metadata !320, metadata !"si_overrun", metadata !300, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ]
!324 = metadata !{i32 589837, metadata !320, metadata !"si_sigval", metadata !300, i32 74, i64 64, i64 64, i64 64, i32 0, metadata !325} ; [ DW_TAG_member ]
!325 = metadata !{i32 589846, metadata !300, metadata !"sigval_t", metadata !300, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !326} ; [ DW_TAG_typedef ]
!326 = metadata !{i32 589847, metadata !1, metadata !"sigval", metadata !300, i32 34, i64 64, i64 64, i64 0, i32 0, null, metadata !327, i32 0, null} ; [ DW_TAG_union_type ]
!327 = metadata !{metadata !328, metadata !329}
!328 = metadata !{i32 589837, metadata !326, metadata !"sival_int", metadata !300, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!329 = metadata !{i32 589837, metadata !326, metadata !"sival_ptr", metadata !300, i32 36, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ]
!330 = metadata !{i32 589837, metadata !307, metadata !"_rt", metadata !300, i32 83, i64 128, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_member ]
!331 = metadata !{i32 589843, metadata !1, metadata !"", metadata !300, i32 79, i64 128, i64 64, i64 0, i32 0, null, metadata !332, i32 0, null} ; [ DW_TAG_structure_type ]
!332 = metadata !{metadata !333, metadata !334, metadata !335}
!333 = metadata !{i32 589837, metadata !331, metadata !"si_pid", metadata !300, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !317} ; [ DW_TAG_member ]
!334 = metadata !{i32 589837, metadata !331, metadata !"si_uid", metadata !300, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ]
!335 = metadata !{i32 589837, metadata !331, metadata !"si_sigval", metadata !300, i32 82, i64 64, i64 64, i64 64, i32 0, metadata !325} ; [ DW_TAG_member ]
!336 = metadata !{i32 589837, metadata !307, metadata !"_sigchld", metadata !300, i32 93, i64 256, i64 64, i64 0, i32 0, metadata !337} ; [ DW_TAG_member ]
!337 = metadata !{i32 589843, metadata !1, metadata !"", metadata !300, i32 87, i64 256, i64 64, i64 0, i32 0, null, metadata !338, i32 0, null} ; [ DW_TAG_structure_type ]
!338 = metadata !{metadata !339, metadata !340, metadata !341, metadata !342, metadata !344}
!339 = metadata !{i32 589837, metadata !337, metadata !"si_pid", metadata !300, i32 88, i64 32, i64 32, i64 0, i32 0, metadata !317} ; [ DW_TAG_member ]
!340 = metadata !{i32 589837, metadata !337, metadata !"si_uid", metadata !300, i32 89, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ]
!341 = metadata !{i32 589837, metadata !337, metadata !"si_status", metadata !300, i32 90, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ]
!342 = metadata !{i32 589837, metadata !337, metadata !"si_utime", metadata !300, i32 91, i64 64, i64 64, i64 128, i32 0, metadata !343} ; [ DW_TAG_member ]
!343 = metadata !{i32 589846, metadata !32, metadata !"__clock_t", metadata !32, i32 146, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!344 = metadata !{i32 589837, metadata !337, metadata !"si_stime", metadata !300, i32 92, i64 64, i64 64, i64 192, i32 0, metadata !343} ; [ DW_TAG_member ]
!345 = metadata !{i32 589837, metadata !307, metadata !"_sigfault", metadata !300, i32 99, i64 64, i64 64, i64 0, i32 0, metadata !346} ; [ DW_TAG_member ]
!346 = metadata !{i32 589843, metadata !1, metadata !"", metadata !300, i32 97, i64 64, i64 64, i64 0, i32 0, null, metadata !347, i32 0, null} ; [ DW_TAG_structure_type ]
!347 = metadata !{metadata !348}
!348 = metadata !{i32 589837, metadata !346, metadata !"si_addr", metadata !300, i32 98, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ]
!349 = metadata !{i32 589837, metadata !307, metadata !"_sigpoll", metadata !300, i32 106, i64 128, i64 64, i64 0, i32 0, metadata !350} ; [ DW_TAG_member ]
!350 = metadata !{i32 589843, metadata !1, metadata !"", metadata !300, i32 103, i64 128, i64 64, i64 0, i32 0, null, metadata !351, i32 0, null} ; [ DW_TAG_structure_type ]
!351 = metadata !{metadata !352, metadata !353}
!352 = metadata !{i32 589837, metadata !350, metadata !"si_band", metadata !300, i32 104, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!353 = metadata !{i32 589837, metadata !350, metadata !"si_fd", metadata !300, i32 105, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ]
!354 = metadata !{i32 589837, metadata !282, metadata !"sa_mask", metadata !283, i32 44, i64 1024, i64 64, i64 64, i32 0, metadata !355} ; [ DW_TAG_member ]
!355 = metadata !{i32 589846, metadata !290, metadata !"__sigset_t", metadata !290, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !356} ; [ DW_TAG_typedef ]
!356 = metadata !{i32 589843, metadata !1, metadata !"", metadata !357, i32 30, i64 1024, i64 64, i64 0, i32 0, null, metadata !358, i32 0, null} ; [ DW_TAG_structure_type ]
!357 = metadata !{i32 589865, metadata !"sigset.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!358 = metadata !{metadata !359}
!359 = metadata !{i32 589837, metadata !356, metadata !"__val", metadata !357, i32 31, i64 1024, i64 64, i64 0, i32 0, metadata !360} ; [ DW_TAG_member ]
!360 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 1024, i64 64, i64 0, i32 0, metadata !33, metadata !361, i32 0, null} ; [ DW_TAG_array_type ]
!361 = metadata !{metadata !362}
!362 = metadata !{i32 589857, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!363 = metadata !{i32 589837, metadata !282, metadata !"sa_flags", metadata !283, i32 47, i64 32, i64 32, i64 1088, i32 0, metadata !45} ; [ DW_TAG_member ]
!364 = metadata !{i32 589837, metadata !282, metadata !"sa_restorer", metadata !283, i32 50, i64 64, i64 64, i64 1152, i32 0, metadata !365} ; [ DW_TAG_member ]
!365 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !366} ; [ DW_TAG_pointer_type ]
!366 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, null} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{null}
!368 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_pointer_type ]
!369 = metadata !{i32 590081, metadata !0, metadata !"__dev", metadata !1, i32 253, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!370 = metadata !{i32 590081, metadata !7, metadata !"__dev", metadata !1, i32 258, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!371 = metadata !{i32 590081, metadata !8, metadata !"__major", metadata !1, i32 263, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!372 = metadata !{i32 590081, metadata !8, metadata !"__minor", metadata !1, i32 263, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!373 = metadata !{i32 590081, metadata !89, metadata !"sockfd", metadata !12, i32 859, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!374 = metadata !{i32 590081, metadata !89, metadata !"level", metadata !12, i32 859, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!375 = metadata !{i32 590081, metadata !89, metadata !"optname", metadata !12, i32 859, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!376 = metadata !{i32 590081, metadata !89, metadata !"optval", metadata !12, i32 860, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!377 = metadata !{i32 590081, metadata !89, metadata !"optlen", metadata !12, i32 860, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!378 = metadata !{i32 590081, metadata !94, metadata !"sockfd", metadata !12, i32 865, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!379 = metadata !{i32 590081, metadata !94, metadata !"level", metadata !12, i32 865, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!380 = metadata !{i32 590081, metadata !94, metadata !"optname", metadata !12, i32 865, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!381 = metadata !{i32 590081, metadata !94, metadata !"optval", metadata !12, i32 866, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!382 = metadata !{i32 590081, metadata !94, metadata !"optlen", metadata !12, i32 866, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!383 = metadata !{i32 590081, metadata !97, metadata !"f", metadata !12, i32 837, metadata !102, i32 0} ; [ DW_TAG_arg_variable ]
!384 = metadata !{i32 589876, i32 0, metadata !12, metadata !"dummy_dfile", metadata !"dummy_dfile", metadata !"", metadata !12, i32 85, metadata !16, i1 true, i1 true, %struct.exe_disk_file_t* @dummy_dfile} ; [ DW_TAG_variable ]
!385 = metadata !{i32 590081, metadata !114, metadata !"b", metadata !1, i32 579, metadata !117, i32 0} ; [ DW_TAG_arg_variable ]
!386 = metadata !{i32 590081, metadata !119, metadata !"a", metadata !1, i32 573, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!387 = metadata !{i32 590081, metadata !119, metadata !"b", metadata !1, i32 573, metadata !22, i32 0} ; [ DW_TAG_arg_variable ]
!388 = metadata !{i32 590081, metadata !122, metadata !"clk_id", metadata !1, i32 169, metadata !125, i32 0} ; [ DW_TAG_arg_variable ]
!389 = metadata !{i32 590081, metadata !122, metadata !"res", metadata !1, i32 169, metadata !126, i32 0} ; [ DW_TAG_arg_variable ]
!390 = metadata !{i32 590081, metadata !128, metadata !"fd", metadata !12, i32 798, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!391 = metadata !{i32 590081, metadata !128, metadata !"msg", metadata !12, i32 798, metadata !131, i32 0} ; [ DW_TAG_arg_variable ]
!392 = metadata !{i32 590081, metadata !128, metadata !"flags", metadata !12, i32 798, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!393 = metadata !{i32 590080, metadata !394, metadata !"f", metadata !12, i32 800, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!394 = metadata !{i32 589835, metadata !128, i32 799, i32 0, metadata !12, i32 11} ; [ DW_TAG_lexical_block ]
!395 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !396} ; [ DW_TAG_pointer_type ]
!396 = metadata !{i32 589846, metadata !17, metadata !"exe_file_t", metadata !17, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ]
!397 = metadata !{i32 590081, metadata !149, metadata !"fd", metadata !12, i32 793, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!398 = metadata !{i32 590081, metadata !149, metadata !"msg", metadata !12, i32 793, metadata !131, i32 0} ; [ DW_TAG_arg_variable ]
!399 = metadata !{i32 590081, metadata !149, metadata !"flags", metadata !12, i32 793, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!400 = metadata !{i32 590081, metadata !150, metadata !"fd", metadata !12, i32 705, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!401 = metadata !{i32 590081, metadata !150, metadata !"buf", metadata !12, i32 705, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!402 = metadata !{i32 590081, metadata !150, metadata !"len", metadata !12, i32 705, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!403 = metadata !{i32 590081, metadata !150, metadata !"flags", metadata !12, i32 705, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!404 = metadata !{i32 590081, metadata !150, metadata !"from", metadata !12, i32 705, metadata !153, i32 0} ; [ DW_TAG_arg_variable ]
!405 = metadata !{i32 590081, metadata !150, metadata !"fromlen", metadata !12, i32 705, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!406 = metadata !{i32 590080, metadata !407, metadata !"iov", metadata !12, i32 707, metadata !138, i32 0} ; [ DW_TAG_auto_variable ]
!407 = metadata !{i32 589835, metadata !150, i32 706, i32 0, metadata !12, i32 13} ; [ DW_TAG_lexical_block ]
!408 = metadata !{i32 590080, metadata !407, metadata !"msg", metadata !12, i32 708, metadata !132, i32 0} ; [ DW_TAG_auto_variable ]
!409 = metadata !{i32 590080, metadata !407, metadata !"s", metadata !12, i32 709, metadata !100, i32 0} ; [ DW_TAG_auto_variable ]
!410 = metadata !{i32 590081, metadata !161, metadata !"fd", metadata !12, i32 700, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!411 = metadata !{i32 590081, metadata !161, metadata !"buf", metadata !12, i32 700, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!412 = metadata !{i32 590081, metadata !161, metadata !"len", metadata !12, i32 700, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!413 = metadata !{i32 590081, metadata !161, metadata !"flags", metadata !12, i32 700, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!414 = metadata !{i32 590081, metadata !161, metadata !"from", metadata !12, i32 700, metadata !153, i32 0} ; [ DW_TAG_arg_variable ]
!415 = metadata !{i32 590081, metadata !161, metadata !"fromlen", metadata !12, i32 700, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!416 = metadata !{i32 590081, metadata !162, metadata !"fd", metadata !12, i32 671, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!417 = metadata !{i32 590081, metadata !162, metadata !"buf", metadata !12, i32 671, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!418 = metadata !{i32 590081, metadata !162, metadata !"len", metadata !12, i32 671, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!419 = metadata !{i32 590081, metadata !162, metadata !"flags", metadata !12, i32 671, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!420 = metadata !{i32 590081, metadata !165, metadata !"fd", metadata !12, i32 667, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!421 = metadata !{i32 590081, metadata !165, metadata !"buf", metadata !12, i32 667, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!422 = metadata !{i32 590081, metadata !165, metadata !"len", metadata !12, i32 667, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!423 = metadata !{i32 590081, metadata !165, metadata !"flags", metadata !12, i32 667, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!424 = metadata !{i32 590081, metadata !166, metadata !"fd", metadata !12, i32 739, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!425 = metadata !{i32 590081, metadata !166, metadata !"msg", metadata !12, i32 739, metadata !169, i32 0} ; [ DW_TAG_arg_variable ]
!426 = metadata !{i32 590081, metadata !166, metadata !"flags", metadata !12, i32 739, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!427 = metadata !{i32 590080, metadata !428, metadata !"f", metadata !12, i32 741, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!428 = metadata !{i32 589835, metadata !166, i32 740, i32 0, metadata !12, i32 17} ; [ DW_TAG_lexical_block ]
!429 = metadata !{i32 590081, metadata !171, metadata !"fd", metadata !12, i32 734, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!430 = metadata !{i32 590081, metadata !171, metadata !"msg", metadata !12, i32 734, metadata !169, i32 0} ; [ DW_TAG_arg_variable ]
!431 = metadata !{i32 590081, metadata !171, metadata !"flags", metadata !12, i32 734, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!432 = metadata !{i32 590081, metadata !172, metadata !"fd", metadata !12, i32 681, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!433 = metadata !{i32 590081, metadata !172, metadata !"buf", metadata !12, i32 681, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!434 = metadata !{i32 590081, metadata !172, metadata !"len", metadata !12, i32 681, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!435 = metadata !{i32 590081, metadata !172, metadata !"flags", metadata !12, i32 681, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!436 = metadata !{i32 590081, metadata !172, metadata !"to", metadata !12, i32 681, metadata !175, i32 0} ; [ DW_TAG_arg_variable ]
!437 = metadata !{i32 590081, metadata !172, metadata !"tolen", metadata !12, i32 681, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!438 = metadata !{i32 590080, metadata !439, metadata !"iov", metadata !12, i32 683, metadata !138, i32 0} ; [ DW_TAG_auto_variable ]
!439 = metadata !{i32 589835, metadata !172, i32 682, i32 0, metadata !12, i32 19} ; [ DW_TAG_lexical_block ]
!440 = metadata !{i32 590080, metadata !439, metadata !"msg", metadata !12, i32 684, metadata !132, i32 0} ; [ DW_TAG_auto_variable ]
!441 = metadata !{i32 590081, metadata !177, metadata !"fd", metadata !12, i32 676, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!442 = metadata !{i32 590081, metadata !177, metadata !"buf", metadata !12, i32 676, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!443 = metadata !{i32 590081, metadata !177, metadata !"len", metadata !12, i32 676, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!444 = metadata !{i32 590081, metadata !177, metadata !"flags", metadata !12, i32 676, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!445 = metadata !{i32 590081, metadata !177, metadata !"to", metadata !12, i32 676, metadata !175, i32 0} ; [ DW_TAG_arg_variable ]
!446 = metadata !{i32 590081, metadata !177, metadata !"tolen", metadata !12, i32 676, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!447 = metadata !{i32 590081, metadata !178, metadata !"fd", metadata !12, i32 662, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!448 = metadata !{i32 590081, metadata !178, metadata !"buf", metadata !12, i32 662, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!449 = metadata !{i32 590081, metadata !178, metadata !"len", metadata !12, i32 662, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!450 = metadata !{i32 590081, metadata !178, metadata !"flags", metadata !12, i32 662, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!451 = metadata !{i32 590081, metadata !179, metadata !"fd", metadata !12, i32 658, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!452 = metadata !{i32 590081, metadata !179, metadata !"buf", metadata !12, i32 658, metadata !92, i32 0} ; [ DW_TAG_arg_variable ]
!453 = metadata !{i32 590081, metadata !179, metadata !"len", metadata !12, i32 658, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!454 = metadata !{i32 590081, metadata !179, metadata !"flags", metadata !12, i32 658, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!455 = metadata !{i32 590081, metadata !180, metadata !"sockfd", metadata !12, i32 615, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!456 = metadata !{i32 590081, metadata !180, metadata !"how", metadata !12, i32 615, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!457 = metadata !{i32 590080, metadata !458, metadata !"f", metadata !12, i32 616, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!458 = metadata !{i32 589835, metadata !180, i32 615, i32 0, metadata !12, i32 23} ; [ DW_TAG_lexical_block ]
!459 = metadata !{i32 590080, metadata !460, metadata !"os_r", metadata !12, i32 645, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!460 = metadata !{i32 589835, metadata !458, i32 647, i32 0, metadata !12, i32 24} ; [ DW_TAG_lexical_block ]
!461 = metadata !{i32 590081, metadata !183, metadata !"args", metadata !12, i32 609, metadata !186, i32 0} ; [ DW_TAG_arg_variable ]
!462 = metadata !{i32 590080, metadata !463, metadata !"sockfd", metadata !12, i32 610, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!463 = metadata !{i32 589835, metadata !183, i32 609, i32 0, metadata !12, i32 25} ; [ DW_TAG_lexical_block ]
!464 = metadata !{i32 590080, metadata !463, metadata !"how", metadata !12, i32 611, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!465 = metadata !{i32 590081, metadata !187, metadata !"sockfd", metadata !12, i32 571, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!466 = metadata !{i32 590081, metadata !187, metadata !"addr", metadata !12, i32 571, metadata !153, i32 0} ; [ DW_TAG_arg_variable ]
!467 = metadata !{i32 590081, metadata !187, metadata !"addrlen", metadata !12, i32 571, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!468 = metadata !{i32 590080, metadata !469, metadata !"os_r", metadata !12, i32 572, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 589835, metadata !187, i32 571, i32 0, metadata !12, i32 26} ; [ DW_TAG_lexical_block ]
!470 = metadata !{i32 590080, metadata !469, metadata !"f", metadata !12, i32 573, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!471 = metadata !{i32 590081, metadata !190, metadata !"args", metadata !12, i32 563, metadata !186, i32 0} ; [ DW_TAG_arg_variable ]
!472 = metadata !{i32 590080, metadata !473, metadata !"sockfd", metadata !12, i32 565, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!473 = metadata !{i32 589835, metadata !190, i32 564, i32 0, metadata !12, i32 27} ; [ DW_TAG_lexical_block ]
!474 = metadata !{i32 590080, metadata !473, metadata !"addr", metadata !12, i32 566, metadata !153, i32 0} ; [ DW_TAG_auto_variable ]
!475 = metadata !{i32 590080, metadata !473, metadata !"addrlen", metadata !12, i32 567, metadata !93, i32 0} ; [ DW_TAG_auto_variable ]
!476 = metadata !{i32 590081, metadata !191, metadata !"sockfd", metadata !12, i32 527, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!477 = metadata !{i32 590081, metadata !191, metadata !"addr", metadata !12, i32 527, metadata !153, i32 0} ; [ DW_TAG_arg_variable ]
!478 = metadata !{i32 590081, metadata !191, metadata !"addrlen", metadata !12, i32 527, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!479 = metadata !{i32 590080, metadata !480, metadata !"f", metadata !12, i32 528, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!480 = metadata !{i32 589835, metadata !191, i32 527, i32 0, metadata !12, i32 28} ; [ DW_TAG_lexical_block ]
!481 = metadata !{i32 590080, metadata !480, metadata !"os_r", metadata !12, i32 529, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!482 = metadata !{i32 590081, metadata !192, metadata !"args", metadata !12, i32 518, metadata !186, i32 0} ; [ DW_TAG_arg_variable ]
!483 = metadata !{i32 590080, metadata !484, metadata !"sockfd", metadata !12, i32 520, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!484 = metadata !{i32 589835, metadata !192, i32 519, i32 0, metadata !12, i32 29} ; [ DW_TAG_lexical_block ]
!485 = metadata !{i32 590080, metadata !484, metadata !"addr", metadata !12, i32 521, metadata !153, i32 0} ; [ DW_TAG_auto_variable ]
!486 = metadata !{i32 590080, metadata !484, metadata !"addrlen", metadata !12, i32 522, metadata !93, i32 0} ; [ DW_TAG_auto_variable ]
!487 = metadata !{i32 590081, metadata !193, metadata !"sockfd", metadata !12, i32 375, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!488 = metadata !{i32 590081, metadata !193, metadata !"backlog", metadata !12, i32 375, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!489 = metadata !{i32 590080, metadata !490, metadata !"os_r", metadata !12, i32 376, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!490 = metadata !{i32 589835, metadata !193, i32 375, i32 0, metadata !12, i32 30} ; [ DW_TAG_lexical_block ]
!491 = metadata !{i32 590080, metadata !490, metadata !"f", metadata !12, i32 377, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!492 = metadata !{i32 590081, metadata !194, metadata !"args", metadata !12, i32 368, metadata !186, i32 0} ; [ DW_TAG_arg_variable ]
!493 = metadata !{i32 590080, metadata !494, metadata !"sockfd", metadata !12, i32 369, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!494 = metadata !{i32 589835, metadata !194, i32 368, i32 0, metadata !12, i32 31} ; [ DW_TAG_lexical_block ]
!495 = metadata !{i32 590080, metadata !494, metadata !"backlog", metadata !12, i32 370, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!496 = metadata !{i32 590081, metadata !195, metadata !"sockfd", metadata !12, i32 319, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!497 = metadata !{i32 590081, metadata !195, metadata !"addr", metadata !12, i32 319, metadata !175, i32 0} ; [ DW_TAG_arg_variable ]
!498 = metadata !{i32 590081, metadata !195, metadata !"addrlen", metadata !12, i32 319, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!499 = metadata !{i32 590080, metadata !500, metadata !"os_r", metadata !12, i32 320, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!500 = metadata !{i32 589835, metadata !195, i32 319, i32 0, metadata !12, i32 32} ; [ DW_TAG_lexical_block ]
!501 = metadata !{i32 590080, metadata !500, metadata !"f", metadata !12, i32 321, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!502 = metadata !{i32 590081, metadata !198, metadata !"args", metadata !12, i32 312, metadata !186, i32 0} ; [ DW_TAG_arg_variable ]
!503 = metadata !{i32 590080, metadata !504, metadata !"sockfd", metadata !12, i32 313, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!504 = metadata !{i32 589835, metadata !198, i32 312, i32 0, metadata !12, i32 33} ; [ DW_TAG_lexical_block ]
!505 = metadata !{i32 590080, metadata !504, metadata !"addr", metadata !12, i32 314, metadata !175, i32 0} ; [ DW_TAG_auto_variable ]
!506 = metadata !{i32 590080, metadata !504, metadata !"addrlen", metadata !12, i32 315, metadata !86, i32 0} ; [ DW_TAG_auto_variable ]
!507 = metadata !{i32 590081, metadata !199, metadata !"sockfd", metadata !12, i32 267, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!508 = metadata !{i32 590081, metadata !199, metadata !"addr", metadata !12, i32 267, metadata !175, i32 0} ; [ DW_TAG_arg_variable ]
!509 = metadata !{i32 590081, metadata !199, metadata !"addrlen", metadata !12, i32 267, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!510 = metadata !{i32 590080, metadata !511, metadata !"os_r", metadata !12, i32 268, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!511 = metadata !{i32 589835, metadata !199, i32 267, i32 0, metadata !12, i32 34} ; [ DW_TAG_lexical_block ]
!512 = metadata !{i32 590080, metadata !511, metadata !"f", metadata !12, i32 269, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!513 = metadata !{i32 590081, metadata !200, metadata !"args", metadata !12, i32 259, metadata !186, i32 0} ; [ DW_TAG_arg_variable ]
!514 = metadata !{i32 590080, metadata !515, metadata !"sockfd", metadata !12, i32 260, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!515 = metadata !{i32 589835, metadata !200, i32 259, i32 0, metadata !12, i32 35} ; [ DW_TAG_lexical_block ]
!516 = metadata !{i32 590080, metadata !515, metadata !"addr", metadata !12, i32 261, metadata !175, i32 0} ; [ DW_TAG_auto_variable ]
!517 = metadata !{i32 590080, metadata !515, metadata !"addrlen", metadata !12, i32 262, metadata !86, i32 0} ; [ DW_TAG_auto_variable ]
!518 = metadata !{i32 590081, metadata !201, metadata !"oldpath", metadata !1, i32 142, metadata !117, i32 0} ; [ DW_TAG_arg_variable ]
!519 = metadata !{i32 590081, metadata !201, metadata !"newpath", metadata !1, i32 142, metadata !117, i32 0} ; [ DW_TAG_arg_variable ]
!520 = metadata !{i32 590080, metadata !521, metadata !"r", metadata !1, i32 145, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!521 = metadata !{i32 589835, metadata !201, i32 142, i32 0, metadata !1, i32 36} ; [ DW_TAG_lexical_block ]
!522 = metadata !{i32 590081, metadata !204, metadata !"domain", metadata !12, i32 106, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!523 = metadata !{i32 590081, metadata !204, metadata !"a", metadata !12, i32 106, metadata !68, i32 0} ; [ DW_TAG_arg_variable ]
!524 = metadata !{i32 590081, metadata !207, metadata !"sockfd", metadata !12, i32 413, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!525 = metadata !{i32 590081, metadata !207, metadata !"addr", metadata !12, i32 413, metadata !153, i32 0} ; [ DW_TAG_arg_variable ]
!526 = metadata !{i32 590081, metadata !207, metadata !"addrlen", metadata !12, i32 413, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!527 = metadata !{i32 590080, metadata !528, metadata !"connfd", metadata !12, i32 414, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!528 = metadata !{i32 589835, metadata !207, i32 413, i32 0, metadata !12, i32 38} ; [ DW_TAG_lexical_block ]
!529 = metadata !{i32 590080, metadata !528, metadata !"connf", metadata !12, i32 415, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!530 = metadata !{i32 590080, metadata !528, metadata !"f", metadata !12, i32 416, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!531 = metadata !{i32 590080, metadata !532, metadata !"fchild", metadata !12, i32 498, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!532 = metadata !{i32 589835, metadata !528, i32 499, i32 0, metadata !12, i32 39} ; [ DW_TAG_lexical_block ]
!533 = metadata !{i32 590080, metadata !532, metadata !"fd", metadata !12, i32 499, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!534 = metadata !{i32 590080, metadata !532, metadata !"os_r", metadata !12, i32 504, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!535 = metadata !{i32 590081, metadata !208, metadata !"sockfd", metadata !12, i32 409, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!536 = metadata !{i32 590081, metadata !208, metadata !"addr", metadata !12, i32 409, metadata !153, i32 0} ; [ DW_TAG_arg_variable ]
!537 = metadata !{i32 590081, metadata !208, metadata !"addrlen", metadata !12, i32 409, metadata !93, i32 0} ; [ DW_TAG_arg_variable ]
!538 = metadata !{i32 590081, metadata !209, metadata !"domain", metadata !12, i32 141, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!539 = metadata !{i32 590081, metadata !209, metadata !"type", metadata !12, i32 141, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!540 = metadata !{i32 590081, metadata !209, metadata !"protocol", metadata !12, i32 141, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!541 = metadata !{i32 590080, metadata !542, metadata !"fd", metadata !12, i32 142, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!542 = metadata !{i32 589835, metadata !209, i32 141, i32 0, metadata !12, i32 41} ; [ DW_TAG_lexical_block ]
!543 = metadata !{i32 590080, metadata !542, metadata !"f", metadata !12, i32 143, metadata !395, i32 0} ; [ DW_TAG_auto_variable ]
!544 = metadata !{i32 590080, metadata !545, metadata !"os_r", metadata !12, i32 153, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!545 = metadata !{i32 589835, metadata !542, i32 146, i32 0, metadata !12, i32 42} ; [ DW_TAG_lexical_block ]
!546 = metadata !{i32 590081, metadata !212, metadata !"args", metadata !12, i32 132, metadata !186, i32 0} ; [ DW_TAG_arg_variable ]
!547 = metadata !{i32 590080, metadata !548, metadata !"domain", metadata !12, i32 134, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!548 = metadata !{i32 589835, metadata !212, i32 132, i32 0, metadata !12, i32 43} ; [ DW_TAG_lexical_block ]
!549 = metadata !{i32 590080, metadata !548, metadata !"type", metadata !12, i32 135, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!550 = metadata !{i32 590080, metadata !548, metadata !"protocol", metadata !12, i32 136, metadata !45, i32 0} ; [ DW_TAG_auto_variable ]
!551 = metadata !{i32 590081, metadata !213, metadata !"type", metadata !12, i32 25, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!552 = metadata !{i32 590081, metadata !213, metadata !"args", metadata !12, i32 25, metadata !186, i32 0} ; [ DW_TAG_arg_variable ]
!553 = metadata !{i32 590081, metadata !216, metadata !"name", metadata !1, i32 270, metadata !117, i32 0} ; [ DW_TAG_arg_variable ]
!554 = metadata !{i32 590080, metadata !555, metadata !"res", metadata !1, i32 271, metadata !22, i32 0} ; [ DW_TAG_auto_variable ]
!555 = metadata !{i32 589835, metadata !216, i32 270, i32 0, metadata !1, i32 45} ; [ DW_TAG_lexical_block ]
!556 = metadata !{i32 590080, metadata !555, metadata !"rp_res", metadata !1, i32 272, metadata !22, i32 0} ; [ DW_TAG_auto_variable ]
!557 = metadata !{i32 590081, metadata !217, metadata !"__s1", metadata !1, i32 248, metadata !117, i32 0} ; [ DW_TAG_arg_variable ]
!558 = metadata !{i32 590081, metadata !217, metadata !"__s2", metadata !1, i32 248, metadata !117, i32 0} ; [ DW_TAG_arg_variable ]
!559 = metadata !{i32 590080, metadata !560, metadata !"__s1_len", metadata !1, i32 249, metadata !143, i32 0} ; [ DW_TAG_auto_variable ]
!560 = metadata !{i32 589835, metadata !561, i32 248, i32 0, metadata !1, i32 47} ; [ DW_TAG_lexical_block ]
!561 = metadata !{i32 589835, metadata !217, i32 248, i32 0, metadata !1, i32 46} ; [ DW_TAG_lexical_block ]
!562 = metadata !{i32 590080, metadata !560, metadata !"__s2_len", metadata !1, i32 249, metadata !143, i32 0} ; [ DW_TAG_auto_variable ]
!563 = metadata !{i32 590081, metadata !218, metadata !"clk_id", metadata !1, i32 160, metadata !125, i32 0} ; [ DW_TAG_arg_variable ]
!564 = metadata !{i32 590081, metadata !218, metadata !"res", metadata !1, i32 160, metadata !221, i32 0} ; [ DW_TAG_arg_variable ]
!565 = metadata !{i32 590080, metadata !566, metadata !"tv", metadata !1, i32 161, metadata !567, i32 0} ; [ DW_TAG_auto_variable ]
!566 = metadata !{i32 589835, metadata !218, i32 160, i32 0, metadata !1, i32 48} ; [ DW_TAG_lexical_block ]
!567 = metadata !{i32 589843, metadata !1, metadata !"timeval", metadata !568, i32 32, i64 128, i64 64, i64 0, i32 0, null, metadata !569, i32 0, null} ; [ DW_TAG_structure_type ]
!568 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!569 = metadata !{metadata !570, metadata !571}
!570 = metadata !{i32 589837, metadata !567, metadata !"tv_sec", metadata !568, i32 33, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ]
!571 = metadata !{i32 589837, metadata !567, metadata !"tv_usec", metadata !568, i32 34, i64 64, i64 64, i64 64, i32 0, metadata !572} ; [ DW_TAG_member ]
!572 = metadata !{i32 589846, metadata !32, metadata !"__suseconds_t", metadata !32, i32 153, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!573 = metadata !{i32 590081, metadata !222, metadata !"c", metadata !1, i32 94, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!574 = metadata !{i32 590081, metadata !222, metadata !"f", metadata !1, i32 94, metadata !225, i32 0} ; [ DW_TAG_arg_variable ]
!575 = metadata !{i32 590081, metadata !274, metadata !"f", metadata !1, i32 89, metadata !225, i32 0} ; [ DW_TAG_arg_variable ]
!576 = metadata !{i32 590081, metadata !277, metadata !"signum", metadata !1, i32 41, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!577 = metadata !{i32 590081, metadata !277, metadata !"act", metadata !1, i32 41, metadata !280, i32 0} ; [ DW_TAG_arg_variable ]
!578 = metadata !{i32 590081, metadata !277, metadata !"oldact", metadata !1, i32 42, metadata !368, i32 0} ; [ DW_TAG_arg_variable ]
!579 = metadata !{i32 590081, metadata !277, metadata !"_something", metadata !1, i32 42, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!580 = metadata !{i32 41, i32 0, metadata !277, null}
!581 = metadata !{i32 42, i32 0, metadata !277, null}
!582 = metadata !{i32 43, i32 0, metadata !583, null}
!583 = metadata !{i32 589835, metadata !277, i32 42, i32 0, metadata !1, i32 51} ; [ DW_TAG_lexical_block ]
!584 = metadata !{i32 44, i32 0, metadata !583, null}
!585 = metadata !{i32 89, i32 0, metadata !274, null}
!586 = metadata !{i32 90, i32 0, metadata !587, null}
!587 = metadata !{i32 589835, metadata !274, i32 89, i32 0, metadata !1, i32 50} ; [ DW_TAG_lexical_block ]
!588 = metadata !{i32 94, i32 0, metadata !222, null}
!589 = metadata !{i32 95, i32 0, metadata !590, null}
!590 = metadata !{i32 589835, metadata !222, i32 94, i32 0, metadata !1, i32 49} ; [ DW_TAG_lexical_block ]
!591 = metadata !{i32 142, i32 0, metadata !201, null}
!592 = metadata !{i32 143, i32 0, metadata !521, null}
!593 = metadata !{i32 145, i32 0, metadata !521, null}
!594 = metadata !{i32 146, i32 0, metadata !521, null}
!595 = metadata !{i32 147, i32 0, metadata !521, null}
!596 = metadata !{i32 149, i32 0, metadata !521, null}
!597 = metadata !{i32 160, i32 0, metadata !218, null}
!598 = metadata !{i32 161, i32 0, metadata !566, null}
!599 = metadata !{i32 162, i32 0, metadata !566, null}
!600 = metadata !{i32 163, i32 0, metadata !566, null}
!601 = metadata !{i32 164, i32 0, metadata !566, null}
!602 = metadata !{i32 165, i32 0, metadata !566, null}
!603 = metadata !{i32 169, i32 0, metadata !122, null}
!604 = metadata !{i32 170, i32 0, metadata !605, null}
!605 = metadata !{i32 589835, metadata !122, i32 169, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!606 = metadata !{i32 171, i32 0, metadata !605, null}
!607 = metadata !{i32 172, i32 0, metadata !605, null}
!608 = metadata !{i32 248, i32 0, metadata !217, null}
!609 = metadata !{i32 249, i32 0, metadata !560, null}
!610 = metadata !{i32 249, i32 0, metadata !561, null}
!611 = metadata !{i32 253, i32 0, metadata !0, null}
!612 = metadata !{i32 254, i32 0, metadata !613, null}
!613 = metadata !{i32 589835, metadata !0, i32 253, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!614 = metadata !{i32 258, i32 0, metadata !7, null}
!615 = metadata !{i32 259, i32 0, metadata !616, null}
!616 = metadata !{i32 589835, metadata !7, i32 258, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!617 = metadata !{i32 263, i32 0, metadata !8, null}
!618 = metadata !{i32 264, i32 0, metadata !619, null}
!619 = metadata !{i32 589835, metadata !8, i32 263, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!620 = metadata !{i32 859, i32 0, metadata !89, null}
!621 = metadata !{i32 860, i32 0, metadata !89, null}
!622 = metadata !{i32 862, i32 0, metadata !623, null}
!623 = metadata !{i32 589835, metadata !89, i32 861, i32 0, metadata !12, i32 5} ; [ DW_TAG_lexical_block ]
!624 = metadata !{i32 865, i32 0, metadata !94, null}
!625 = metadata !{i32 866, i32 0, metadata !94, null}
!626 = metadata !{i32 868, i32 0, metadata !627, null}
!627 = metadata !{i32 589835, metadata !94, i32 867, i32 0, metadata !12, i32 6} ; [ DW_TAG_lexical_block ]
!628 = metadata !{i32 837, i32 0, metadata !97, null}
!629 = metadata !{i32 839, i32 0, metadata !630, null}
!630 = metadata !{i32 589835, metadata !97, i32 838, i32 0, metadata !12, i32 7} ; [ DW_TAG_lexical_block ]
!631 = metadata !{i32 840, i32 0, metadata !630, null}
!632 = metadata !{i32 841, i32 0, metadata !630, null}
!633 = metadata !{i32 842, i32 0, metadata !630, null}
!634 = metadata !{i32 847, i32 0, metadata !630, null}
!635 = metadata !{i32 100, i32 0, metadata !636, metadata !637}
!636 = metadata !{i32 589835, metadata !88, i32 99, i32 0, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!637 = metadata !{i32 848, i32 0, metadata !630, null}
!638 = metadata !{i32 102, i32 0, metadata !636, metadata !637}
!639 = metadata !{i32 849, i32 0, metadata !630, null}
!640 = metadata !{i32 851, i32 0, metadata !630, null}
!641 = metadata !{i32 852, i32 0, metadata !630, null}
!642 = metadata !{i32 853, i32 0, metadata !630, null}
!643 = metadata !{i32 579, i32 0, metadata !114, null}
!644 = metadata !{i32 580, i32 0, metadata !645, null}
!645 = metadata !{i32 589835, metadata !114, i32 579, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!646 = metadata !{i32 581, i32 0, metadata !645, null}
!647 = metadata !{i32 573, i32 0, metadata !119, null}
!648 = metadata !{i32 574, i32 0, metadata !649, null}
!649 = metadata !{i32 589835, metadata !119, i32 573, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!650 = metadata !{i32 575, i32 0, metadata !649, null}
!651 = metadata !{i32 798, i32 0, metadata !128, null}
!652 = metadata !{i32 800, i32 0, metadata !394, null}
!653 = metadata !{i32 801, i32 0, metadata !394, null}
!654 = metadata !{i32 802, i32 0, metadata !394, null}
!655 = metadata !{i32 803, i32 0, metadata !394, null}
!656 = metadata !{i32 806, i32 0, metadata !394, null}
!657 = metadata !{i32 807, i32 0, metadata !394, null}
!658 = metadata !{i32 808, i32 0, metadata !394, null}
!659 = metadata !{i32 811, i32 0, metadata !394, null}
!660 = metadata !{i32 812, i32 0, metadata !394, null}
!661 = metadata !{i32 813, i32 0, metadata !394, null}
!662 = metadata !{i32 816, i32 0, metadata !394, null}
!663 = metadata !{i32 818, i32 0, metadata !394, null}
!664 = metadata !{i32 821, i32 0, metadata !394, null}
!665 = metadata !{i32 824, i32 0, metadata !394, null}
!666 = metadata !{i32 828, i32 0, metadata !394, null}
!667 = metadata !{i32 825, i32 0, metadata !394, null}
!668 = metadata !{i32 826, i32 0, metadata !394, null}
!669 = metadata !{i32 830, i32 0, metadata !394, null}
!670 = metadata !{i32 831, i32 0, metadata !394, null}
!671 = metadata !{i32 833, i32 0, metadata !394, null}
!672 = metadata !{i32 793, i32 0, metadata !149, null}
!673 = metadata !{i32 795, i32 0, metadata !674, null}
!674 = metadata !{i32 589835, metadata !149, i32 794, i32 0, metadata !12, i32 12} ; [ DW_TAG_lexical_block ]
!675 = metadata !{i32 705, i32 0, metadata !150, null}
!676 = metadata !{i32 707, i32 0, metadata !407, null}
!677 = metadata !{i32 708, i32 0, metadata !407, null}
!678 = metadata !{i32 711, i32 0, metadata !407, null}
!679 = metadata !{i32 712, i32 0, metadata !407, null}
!680 = metadata !{i32 713, i32 0, metadata !407, null}
!681 = metadata !{i32 716, i32 0, metadata !407, null}
!682 = metadata !{i32 717, i32 0, metadata !407, null}
!683 = metadata !{i32 719, i32 0, metadata !407, null}
!684 = metadata !{i32 720, i32 0, metadata !407, null}
!685 = metadata !{i32 721, i32 0, metadata !407, null}
!686 = metadata !{i32 722, i32 0, metadata !407, null}
!687 = metadata !{i32 723, i32 0, metadata !407, null}
!688 = metadata !{i32 724, i32 0, metadata !407, null}
!689 = metadata !{i32 725, i32 0, metadata !407, null}
!690 = metadata !{i32 727, i32 0, metadata !407, null}
!691 = metadata !{i32 729, i32 0, metadata !407, null}
!692 = metadata !{i32 700, i32 0, metadata !161, null}
!693 = metadata !{i32 705, i32 0, metadata !150, metadata !694}
!694 = metadata !{i32 702, i32 0, metadata !695, null}
!695 = metadata !{i32 589835, metadata !161, i32 701, i32 0, metadata !12, i32 14} ; [ DW_TAG_lexical_block ]
!696 = metadata !{i32 707, i32 0, metadata !407, metadata !694}
!697 = metadata !{i32 708, i32 0, metadata !407, metadata !694}
!698 = metadata !{i32 711, i32 0, metadata !407, metadata !694}
!699 = metadata !{i32 712, i32 0, metadata !407, metadata !694}
!700 = metadata !{i32 713, i32 0, metadata !407, metadata !694}
!701 = metadata !{i32 716, i32 0, metadata !407, metadata !694}
!702 = metadata !{i32 717, i32 0, metadata !407, metadata !694}
!703 = metadata !{i32 719, i32 0, metadata !407, metadata !694}
!704 = metadata !{i32 720, i32 0, metadata !407, metadata !694}
!705 = metadata !{i32 721, i32 0, metadata !407, metadata !694}
!706 = metadata !{i32 722, i32 0, metadata !407, metadata !694}
!707 = metadata !{i32 723, i32 0, metadata !407, metadata !694}
!708 = metadata !{i32 724, i32 0, metadata !407, metadata !694}
!709 = metadata !{i32 725, i32 0, metadata !407, metadata !694}
!710 = metadata !{i32 727, i32 0, metadata !407, metadata !694}
!711 = metadata !{i32 729, i32 0, metadata !407, metadata !694}
!712 = metadata !{i32 671, i32 0, metadata !162, null}
!713 = metadata !{i32 705, i32 0, metadata !150, metadata !714}
!714 = metadata !{i32 673, i32 0, metadata !715, null}
!715 = metadata !{i32 589835, metadata !162, i32 672, i32 0, metadata !12, i32 15} ; [ DW_TAG_lexical_block ]
!716 = metadata !{%struct.sockaddr* null}
!717 = metadata !{i32* null}
!718 = metadata !{i32 707, i32 0, metadata !407, metadata !714}
!719 = metadata !{i32 708, i32 0, metadata !407, metadata !714}
!720 = metadata !{i32 716, i32 0, metadata !407, metadata !714}
!721 = metadata !{i32 717, i32 0, metadata !407, metadata !714}
!722 = metadata !{i32 719, i32 0, metadata !407, metadata !714}
!723 = metadata !{i32 720, i32 0, metadata !407, metadata !714}
!724 = metadata !{i32 721, i32 0, metadata !407, metadata !714}
!725 = metadata !{i32 722, i32 0, metadata !407, metadata !714}
!726 = metadata !{i32 723, i32 0, metadata !407, metadata !714}
!727 = metadata !{i32 724, i32 0, metadata !407, metadata !714}
!728 = metadata !{i32 725, i32 0, metadata !407, metadata !714}
!729 = metadata !{i32 727, i32 0, metadata !407, metadata !714}
!730 = metadata !{i32 667, i32 0, metadata !165, null}
!731 = metadata !{i32 671, i32 0, metadata !162, metadata !732}
!732 = metadata !{i32 668, i32 0, metadata !733, null}
!733 = metadata !{i32 589835, metadata !165, i32 667, i32 0, metadata !12, i32 16} ; [ DW_TAG_lexical_block ]
!734 = metadata !{i32 705, i32 0, metadata !150, metadata !735}
!735 = metadata !{i32 673, i32 0, metadata !715, metadata !732}
!736 = metadata !{i32 707, i32 0, metadata !407, metadata !735}
!737 = metadata !{i32 708, i32 0, metadata !407, metadata !735}
!738 = metadata !{i32 716, i32 0, metadata !407, metadata !735}
!739 = metadata !{i32 717, i32 0, metadata !407, metadata !735}
!740 = metadata !{i32 719, i32 0, metadata !407, metadata !735}
!741 = metadata !{i32 720, i32 0, metadata !407, metadata !735}
!742 = metadata !{i32 721, i32 0, metadata !407, metadata !735}
!743 = metadata !{i32 722, i32 0, metadata !407, metadata !735}
!744 = metadata !{i32 723, i32 0, metadata !407, metadata !735}
!745 = metadata !{i32 724, i32 0, metadata !407, metadata !735}
!746 = metadata !{i32 725, i32 0, metadata !407, metadata !735}
!747 = metadata !{i32 727, i32 0, metadata !407, metadata !735}
!748 = metadata !{i32 739, i32 0, metadata !166, null}
!749 = metadata !{i32 741, i32 0, metadata !428, null}
!750 = metadata !{i32 742, i32 0, metadata !428, null}
!751 = metadata !{i32 743, i32 0, metadata !428, null}
!752 = metadata !{i32 744, i32 0, metadata !428, null}
!753 = metadata !{i32 747, i32 0, metadata !428, null}
!754 = metadata !{i32 748, i32 0, metadata !428, null}
!755 = metadata !{i32 749, i32 0, metadata !428, null}
!756 = metadata !{i32 752, i32 0, metadata !428, null}
!757 = metadata !{i32 753, i32 0, metadata !428, null}
!758 = metadata !{i32 754, i32 0, metadata !428, null}
!759 = metadata !{i32 757, i32 0, metadata !428, null}
!760 = metadata !{i32 759, i32 0, metadata !428, null}
!761 = metadata !{i32 762, i32 0, metadata !428, null}
!762 = metadata !{i32 763, i32 0, metadata !428, null}
!763 = metadata !{i32 764, i32 0, metadata !428, null}
!764 = metadata !{i32 765, i32 0, metadata !428, null}
!765 = metadata !{i32 766, i32 0, metadata !428, null}
!766 = metadata !{i32 770, i32 0, metadata !428, null}
!767 = metadata !{i32 771, i32 0, metadata !428, null}
!768 = metadata !{i32 772, i32 0, metadata !428, null}
!769 = metadata !{i32 775, i32 0, metadata !428, null}
!770 = metadata !{i32 776, i32 0, metadata !428, null}
!771 = metadata !{i32 777, i32 0, metadata !428, null}
!772 = metadata !{i32 781, i32 0, metadata !428, null}
!773 = metadata !{i32 782, i32 0, metadata !428, null}
!774 = metadata !{i32 786, i32 0, metadata !428, null}
!775 = metadata !{i32 787, i32 0, metadata !428, null}
!776 = metadata !{i32 789, i32 0, metadata !428, null}
!777 = metadata !{i32 734, i32 0, metadata !171, null}
!778 = metadata !{i32 736, i32 0, metadata !779, null}
!779 = metadata !{i32 589835, metadata !171, i32 735, i32 0, metadata !12, i32 18} ; [ DW_TAG_lexical_block ]
!780 = metadata !{i32 681, i32 0, metadata !172, null}
!781 = metadata !{i32 683, i32 0, metadata !439, null}
!782 = metadata !{i32 684, i32 0, metadata !439, null}
!783 = metadata !{i32 686, i32 0, metadata !439, null}
!784 = metadata !{i32 687, i32 0, metadata !439, null}
!785 = metadata !{i32 689, i32 0, metadata !439, null}
!786 = metadata !{i32 690, i32 0, metadata !439, null}
!787 = metadata !{i32 691, i32 0, metadata !439, null}
!788 = metadata !{i32 692, i32 0, metadata !439, null}
!789 = metadata !{i32 693, i32 0, metadata !439, null}
!790 = metadata !{i32 694, i32 0, metadata !439, null}
!791 = metadata !{i32 695, i32 0, metadata !439, null}
!792 = metadata !{i32 697, i32 0, metadata !439, null}
!793 = metadata !{i32 676, i32 0, metadata !177, null}
!794 = metadata !{i32 681, i32 0, metadata !172, metadata !795}
!795 = metadata !{i32 678, i32 0, metadata !796, null}
!796 = metadata !{i32 589835, metadata !177, i32 677, i32 0, metadata !12, i32 20} ; [ DW_TAG_lexical_block ]
!797 = metadata !{i32 683, i32 0, metadata !439, metadata !795}
!798 = metadata !{i32 684, i32 0, metadata !439, metadata !795}
!799 = metadata !{i32 686, i32 0, metadata !439, metadata !795}
!800 = metadata !{i32 687, i32 0, metadata !439, metadata !795}
!801 = metadata !{i32 689, i32 0, metadata !439, metadata !795}
!802 = metadata !{i32 690, i32 0, metadata !439, metadata !795}
!803 = metadata !{i32 691, i32 0, metadata !439, metadata !795}
!804 = metadata !{i32 692, i32 0, metadata !439, metadata !795}
!805 = metadata !{i32 693, i32 0, metadata !439, metadata !795}
!806 = metadata !{i32 694, i32 0, metadata !439, metadata !795}
!807 = metadata !{i32 695, i32 0, metadata !439, metadata !795}
!808 = metadata !{i32 697, i32 0, metadata !439, metadata !795}
!809 = metadata !{i32 662, i32 0, metadata !178, null}
!810 = metadata !{i32 681, i32 0, metadata !172, metadata !811}
!811 = metadata !{i32 664, i32 0, metadata !812, null}
!812 = metadata !{i32 589835, metadata !178, i32 663, i32 0, metadata !12, i32 21} ; [ DW_TAG_lexical_block ]
!813 = metadata !{i32 0}
!814 = metadata !{i32 683, i32 0, metadata !439, metadata !811}
!815 = metadata !{i32 684, i32 0, metadata !439, metadata !811}
!816 = metadata !{i32 686, i32 0, metadata !439, metadata !811}
!817 = metadata !{i32 687, i32 0, metadata !439, metadata !811}
!818 = metadata !{i32 689, i32 0, metadata !439, metadata !811}
!819 = metadata !{i32 690, i32 0, metadata !439, metadata !811}
!820 = metadata !{i32 691, i32 0, metadata !439, metadata !811}
!821 = metadata !{i32 692, i32 0, metadata !439, metadata !811}
!822 = metadata !{i32 693, i32 0, metadata !439, metadata !811}
!823 = metadata !{i32 694, i32 0, metadata !439, metadata !811}
!824 = metadata !{i32 695, i32 0, metadata !439, metadata !811}
!825 = metadata !{i32 697, i32 0, metadata !439, metadata !811}
!826 = metadata !{i32 658, i32 0, metadata !179, null}
!827 = metadata !{i32 662, i32 0, metadata !178, metadata !828}
!828 = metadata !{i32 659, i32 0, metadata !829, null}
!829 = metadata !{i32 589835, metadata !179, i32 658, i32 0, metadata !12, i32 22} ; [ DW_TAG_lexical_block ]
!830 = metadata !{i32 681, i32 0, metadata !172, metadata !831}
!831 = metadata !{i32 664, i32 0, metadata !812, metadata !828}
!832 = metadata !{i32 683, i32 0, metadata !439, metadata !831}
!833 = metadata !{i32 684, i32 0, metadata !439, metadata !831}
!834 = metadata !{i32 686, i32 0, metadata !439, metadata !831}
!835 = metadata !{i32 687, i32 0, metadata !439, metadata !831}
!836 = metadata !{i32 689, i32 0, metadata !439, metadata !831}
!837 = metadata !{i32 690, i32 0, metadata !439, metadata !831}
!838 = metadata !{i32 691, i32 0, metadata !439, metadata !831}
!839 = metadata !{i32 692, i32 0, metadata !439, metadata !831}
!840 = metadata !{i32 693, i32 0, metadata !439, metadata !831}
!841 = metadata !{i32 694, i32 0, metadata !439, metadata !831}
!842 = metadata !{i32 695, i32 0, metadata !439, metadata !831}
!843 = metadata !{i32 697, i32 0, metadata !439, metadata !831}
!844 = metadata !{i32 615, i32 0, metadata !180, null}
!845 = metadata !{i32 616, i32 0, metadata !458, null}
!846 = metadata !{i32 618, i32 0, metadata !458, null}
!847 = metadata !{i32 619, i32 0, metadata !458, null}
!848 = metadata !{i32 620, i32 0, metadata !458, null}
!849 = metadata !{i32 623, i32 0, metadata !458, null}
!850 = metadata !{i32 624, i32 0, metadata !458, null}
!851 = metadata !{i32 625, i32 0, metadata !458, null}
!852 = metadata !{i32 628, i32 0, metadata !458, null}
!853 = metadata !{i32 631, i32 0, metadata !458, null}
!854 = metadata !{i32 633, i32 0, metadata !458, null}
!855 = metadata !{i32 635, i32 0, metadata !458, null}
!856 = metadata !{i32 637, i32 0, metadata !458, null}
!857 = metadata !{i32 639, i32 0, metadata !458, null}
!858 = metadata !{i32 640, i32 0, metadata !458, null}
!859 = metadata !{i32 647, i32 0, metadata !460, null}
!860 = metadata !{i32 648, i32 0, metadata !460, null}
!861 = metadata !{i32 649, i32 0, metadata !460, null}
!862 = metadata !{i32 650, i32 0, metadata !460, null}
!863 = metadata !{i32 609, i32 0, metadata !183, null}
!864 = metadata !{i32 610, i32 0, metadata !463, null}
!865 = metadata !{i32 611, i32 0, metadata !463, null}
!866 = metadata !{i32 612, i32 0, metadata !463, null}
!867 = metadata !{i32 571, i32 0, metadata !187, null}
!868 = metadata !{i32 573, i32 0, metadata !469, null}
!869 = metadata !{i32 575, i32 0, metadata !469, null}
!870 = metadata !{i32 576, i32 0, metadata !469, null}
!871 = metadata !{i32 577, i32 0, metadata !469, null}
!872 = metadata !{i32 580, i32 0, metadata !469, null}
!873 = metadata !{i32 581, i32 0, metadata !469, null}
!874 = metadata !{i32 582, i32 0, metadata !469, null}
!875 = metadata !{i32 585, i32 0, metadata !469, null}
!876 = metadata !{i32 587, i32 0, metadata !469, null}
!877 = metadata !{i32 588, i32 0, metadata !469, null}
!878 = metadata !{i32 589, i32 0, metadata !469, null}
!879 = metadata !{i32 590, i32 0, metadata !469, null}
!880 = metadata !{i32 592, i32 0, metadata !469, null}
!881 = metadata !{i32 593, i32 0, metadata !469, null}
!882 = metadata !{i32 598, i32 0, metadata !469, null}
!883 = metadata !{i32 599, i32 0, metadata !469, null}
!884 = metadata !{i32 600, i32 0, metadata !469, null}
!885 = metadata !{i32 601, i32 0, metadata !469, null}
!886 = metadata !{i32 563, i32 0, metadata !190, null}
!887 = metadata !{i32 565, i32 0, metadata !473, null}
!888 = metadata !{i32 566, i32 0, metadata !473, null}
!889 = metadata !{i32 567, i32 0, metadata !473, null}
!890 = metadata !{i32 568, i32 0, metadata !473, null}
!891 = metadata !{i32 527, i32 0, metadata !191, null}
!892 = metadata !{i32 528, i32 0, metadata !480, null}
!893 = metadata !{i32 531, i32 0, metadata !480, null}
!894 = metadata !{i32 532, i32 0, metadata !480, null}
!895 = metadata !{i32 533, i32 0, metadata !480, null}
!896 = metadata !{i32 536, i32 0, metadata !480, null}
!897 = metadata !{i32 537, i32 0, metadata !480, null}
!898 = metadata !{i32 538, i32 0, metadata !480, null}
!899 = metadata !{i32 541, i32 0, metadata !480, null}
!900 = metadata !{i32 543, i32 0, metadata !480, null}
!901 = metadata !{i32 544, i32 0, metadata !480, null}
!902 = metadata !{i32 545, i32 0, metadata !480, null}
!903 = metadata !{i32 546, i32 0, metadata !480, null}
!904 = metadata !{i32 548, i32 0, metadata !480, null}
!905 = metadata !{i32 549, i32 0, metadata !480, null}
!906 = metadata !{i32 552, i32 0, metadata !480, null}
!907 = metadata !{i32 553, i32 0, metadata !480, null}
!908 = metadata !{i32 554, i32 0, metadata !480, null}
!909 = metadata !{i32 555, i32 0, metadata !480, null}
!910 = metadata !{i32 518, i32 0, metadata !192, null}
!911 = metadata !{i32 520, i32 0, metadata !484, null}
!912 = metadata !{i32 521, i32 0, metadata !484, null}
!913 = metadata !{i32 522, i32 0, metadata !484, null}
!914 = metadata !{i32 524, i32 0, metadata !484, null}
!915 = metadata !{i32 375, i32 0, metadata !193, null}
!916 = metadata !{i32 377, i32 0, metadata !490, null}
!917 = metadata !{i32 379, i32 0, metadata !490, null}
!918 = metadata !{i32 380, i32 0, metadata !490, null}
!919 = metadata !{i32 381, i32 0, metadata !490, null}
!920 = metadata !{i32 384, i32 0, metadata !490, null}
!921 = metadata !{i32 385, i32 0, metadata !490, null}
!922 = metadata !{i32 386, i32 0, metadata !490, null}
!923 = metadata !{i32 389, i32 0, metadata !490, null}
!924 = metadata !{i32 390, i32 0, metadata !490, null}
!925 = metadata !{i32 391, i32 0, metadata !490, null}
!926 = metadata !{i32 394, i32 0, metadata !490, null}
!927 = metadata !{i32 398, i32 0, metadata !490, null}
!928 = metadata !{i32 399, i32 0, metadata !490, null}
!929 = metadata !{i32 400, i32 0, metadata !490, null}
!930 = metadata !{i32 404, i32 0, metadata !490, null}
!931 = metadata !{i32 406, i32 0, metadata !490, null}
!932 = metadata !{i32 368, i32 0, metadata !194, null}
!933 = metadata !{i32 369, i32 0, metadata !494, null}
!934 = metadata !{i32 370, i32 0, metadata !494, null}
!935 = metadata !{i32 372, i32 0, metadata !494, null}
!936 = metadata !{i32 319, i32 0, metadata !195, null}
!937 = metadata !{i32 321, i32 0, metadata !500, null}
!938 = metadata !{i32 323, i32 0, metadata !500, null}
!939 = metadata !{i32 324, i32 0, metadata !500, null}
!940 = metadata !{i32 325, i32 0, metadata !500, null}
!941 = metadata !{i32 328, i32 0, metadata !500, null}
!942 = metadata !{i32 329, i32 0, metadata !500, null}
!943 = metadata !{i32 330, i32 0, metadata !500, null}
!944 = metadata !{i32 333, i32 0, metadata !500, null}
!945 = metadata !{i32 335, i32 0, metadata !500, null}
!946 = metadata !{i32 336, i32 0, metadata !500, null}
!947 = metadata !{i32 337, i32 0, metadata !500, null}
!948 = metadata !{i32 338, i32 0, metadata !500, null}
!949 = metadata !{i32 339, i32 0, metadata !500, null}
!950 = metadata !{i32 341, i32 0, metadata !500, null}
!951 = metadata !{i32 342, i32 0, metadata !500, null}
!952 = metadata !{i32 343, i32 0, metadata !500, null}
!953 = metadata !{i32 345, i32 0, metadata !500, null}
!954 = metadata !{i32 346, i32 0, metadata !500, null}
!955 = metadata !{i32 348, i32 0, metadata !500, null}
!956 = metadata !{i32 352, i32 0, metadata !500, null}
!957 = metadata !{i32 364, i32 0, metadata !500, null}
!958 = metadata !{i32 357, i32 0, metadata !500, null}
!959 = metadata !{i32 358, i32 0, metadata !500, null}
!960 = metadata !{i32 359, i32 0, metadata !500, null}
!961 = metadata !{i32 312, i32 0, metadata !198, null}
!962 = metadata !{i32 313, i32 0, metadata !504, null}
!963 = metadata !{i32 314, i32 0, metadata !504, null}
!964 = metadata !{i32 315, i32 0, metadata !504, null}
!965 = metadata !{i32 316, i32 0, metadata !504, null}
!966 = metadata !{i32 267, i32 0, metadata !199, null}
!967 = metadata !{i32 269, i32 0, metadata !511, null}
!968 = metadata !{i32 271, i32 0, metadata !511, null}
!969 = metadata !{i32 272, i32 0, metadata !511, null}
!970 = metadata !{i32 273, i32 0, metadata !511, null}
!971 = metadata !{i32 276, i32 0, metadata !511, null}
!972 = metadata !{i32 277, i32 0, metadata !511, null}
!973 = metadata !{i32 278, i32 0, metadata !511, null}
!974 = metadata !{i32 281, i32 0, metadata !511, null}
!975 = metadata !{i32 283, i32 0, metadata !511, null}
!976 = metadata !{i32 284, i32 0, metadata !511, null}
!977 = metadata !{i32 285, i32 0, metadata !511, null}
!978 = metadata !{i32 286, i32 0, metadata !511, null}
!979 = metadata !{i32 288, i32 0, metadata !511, null}
!980 = metadata !{i32 289, i32 0, metadata !511, null}
!981 = metadata !{i32 290, i32 0, metadata !511, null}
!982 = metadata !{i32 293, i32 0, metadata !511, null}
!983 = metadata !{i32 294, i32 0, metadata !511, null}
!984 = metadata !{i32 302, i32 0, metadata !511, null}
!985 = metadata !{i32 303, i32 0, metadata !511, null}
!986 = metadata !{i32 304, i32 0, metadata !511, null}
!987 = metadata !{i32 259, i32 0, metadata !200, null}
!988 = metadata !{i32 260, i32 0, metadata !515, null}
!989 = metadata !{i32 261, i32 0, metadata !515, null}
!990 = metadata !{i32 262, i32 0, metadata !515, null}
!991 = metadata !{i32 264, i32 0, metadata !515, null}
!992 = metadata !{i32 106, i32 0, metadata !204, null}
!993 = metadata !{i32 107, i32 0, metadata !994, null}
!994 = metadata !{i32 589835, metadata !204, i32 106, i32 0, metadata !12, i32 37} ; [ DW_TAG_lexical_block ]
!995 = metadata !{i32 108, i32 0, metadata !994, null}
!996 = metadata !{i32 117, i32 0, metadata !994, null}
!997 = metadata !{i32 120, i32 0, metadata !994, null}
!998 = metadata !{i32 123, i32 0, metadata !994, null}
!999 = metadata !{i32 127, i32 0, metadata !994, null}
!1000 = metadata !{i32 413, i32 0, metadata !207, null}
!1001 = metadata !{i32 415, i32 0, metadata !528, null}
!1002 = metadata !{i32 416, i32 0, metadata !528, null}
!1003 = metadata !{i32 418, i32 0, metadata !528, null}
!1004 = metadata !{i32 419, i32 0, metadata !528, null}
!1005 = metadata !{i32 420, i32 0, metadata !528, null}
!1006 = metadata !{i32 423, i32 0, metadata !528, null}
!1007 = metadata !{i32 424, i32 0, metadata !528, null}
!1008 = metadata !{i32 425, i32 0, metadata !528, null}
!1009 = metadata !{i32 428, i32 0, metadata !528, null}
!1010 = metadata !{i32 429, i32 0, metadata !528, null}
!1011 = metadata !{i32 430, i32 0, metadata !528, null}
!1012 = metadata !{i32 433, i32 0, metadata !528, null}
!1013 = metadata !{i32 434, i32 0, metadata !528, null}
!1014 = metadata !{i32 435, i32 0, metadata !528, null}
!1015 = metadata !{i32 446, i32 0, metadata !528, null}
!1016 = metadata !{i32 448, i32 0, metadata !528, null}
!1017 = metadata !{i32 449, i32 0, metadata !528, null}
!1018 = metadata !{i32 450, i32 0, metadata !528, null}
!1019 = metadata !{i32 452, i32 0, metadata !528, null}
!1020 = metadata !{i32 93, i32 0, metadata !1021, metadata !1019}
!1021 = metadata !{i32 589835, metadata !11, i32 88, i32 0, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!1022 = metadata !{i32 95, i32 0, metadata !1021, metadata !1019}
!1023 = metadata !{i32 453, i32 0, metadata !528, null}
!1024 = metadata !{i32 454, i32 0, metadata !528, null}
!1025 = metadata !{i32 455, i32 0, metadata !528, null}
!1026 = metadata !{i32 456, i32 0, metadata !528, null}
!1027 = metadata !{i32 457, i32 0, metadata !528, null}
!1028 = metadata !{i32 461, i32 0, metadata !528, null}
!1029 = metadata !{i32 462, i32 0, metadata !528, null}
!1030 = metadata !{i32 463, i32 0, metadata !528, null}
!1031 = metadata !{i32 464, i32 0, metadata !528, null}
!1032 = metadata !{i32 465, i32 0, metadata !528, null}
!1033 = metadata !{i32 470, i32 0, metadata !528, null}
!1034 = metadata !{i32 471, i32 0, metadata !528, null}
!1035 = metadata !{i32 474, i32 0, metadata !528, null}
!1036 = metadata !{i32 477, i32 0, metadata !528, null}
!1037 = metadata !{i32 478, i32 0, metadata !528, null}
!1038 = metadata !{i32 479, i32 0, metadata !528, null}
!1039 = metadata !{i32 480, i32 0, metadata !528, null}
!1040 = metadata !{i32 481, i32 0, metadata !528, null}
!1041 = metadata !{i32 482, i32 0, metadata !528, null}
!1042 = metadata !{i32 483, i32 0, metadata !528, null}
!1043 = metadata !{i32 484, i32 0, metadata !528, null}
!1044 = metadata !{i32 485, i32 0, metadata !528, null}
!1045 = metadata !{i32 487, i32 0, metadata !528, null}
!1046 = metadata !{i32 488, i32 0, metadata !528, null}
!1047 = metadata !{i32 491, i32 0, metadata !528, null}
!1048 = metadata !{i32 496, i32 0, metadata !528, null}
!1049 = metadata !{i32 498, i32 0, metadata !532, null}
!1050 = metadata !{i32 499, i32 0, metadata !532, null}
!1051 = metadata !{i32 500, i32 0, metadata !532, null}
!1052 = metadata !{i32 501, i32 0, metadata !532, null}
!1053 = metadata !{i32 502, i32 0, metadata !532, null}
!1054 = metadata !{i32 504, i32 0, metadata !532, null}
!1055 = metadata !{i32 505, i32 0, metadata !532, null}
!1056 = metadata !{i32 506, i32 0, metadata !532, null}
!1057 = metadata !{i32 507, i32 0, metadata !532, null}
!1058 = metadata !{i32 508, i32 0, metadata !532, null}
!1059 = metadata !{i32 510, i32 0, metadata !532, null}
!1060 = metadata !{i32 511, i32 0, metadata !532, null}
!1061 = metadata !{i32 512, i32 0, metadata !532, null}
!1062 = metadata !{i32 513, i32 0, metadata !532, null}
!1063 = metadata !{i32 409, i32 0, metadata !208, null}
!1064 = metadata !{i32 410, i32 0, metadata !1065, null}
!1065 = metadata !{i32 589835, metadata !208, i32 409, i32 0, metadata !12, i32 40} ; [ DW_TAG_lexical_block ]
!1066 = metadata !{i32 141, i32 0, metadata !209, null}
!1067 = metadata !{i32 143, i32 0, metadata !542, null}
!1068 = metadata !{i32 145, i32 0, metadata !542, null}
!1069 = metadata !{i32 146, i32 0, metadata !545, null}
!1070 = metadata !{i32 147, i32 0, metadata !545, null}
!1071 = metadata !{i32 148, i32 0, metadata !545, null}
!1072 = metadata !{i32 149, i32 0, metadata !545, null}
!1073 = metadata !{i32 150, i32 0, metadata !545, null}
!1074 = metadata !{i32 153, i32 0, metadata !545, null}
!1075 = metadata !{i32 154, i32 0, metadata !545, null}
!1076 = metadata !{i32 155, i32 0, metadata !545, null}
!1077 = metadata !{i32 156, i32 0, metadata !545, null}
!1078 = metadata !{i32 157, i32 0, metadata !545, null}
!1079 = metadata !{i32 159, i32 0, metadata !545, null}
!1080 = metadata !{i32 160, i32 0, metadata !545, null}
!1081 = metadata !{i32 161, i32 0, metadata !545, null}
!1082 = metadata !{i32 163, i32 0, metadata !545, null}
!1083 = metadata !{i32 166, i32 0, metadata !542, null}
!1084 = metadata !{i32 171, i32 0, metadata !542, null}
!1085 = metadata !{i32 174, i32 0, metadata !542, null}
!1086 = metadata !{i32 175, i32 0, metadata !542, null}
!1087 = metadata !{i32 176, i32 0, metadata !542, null}
!1088 = metadata !{i32 178, i32 0, metadata !542, null}
!1089 = metadata !{i32 179, i32 0, metadata !542, null}
!1090 = metadata !{i32 180, i32 0, metadata !542, null}
!1091 = metadata !{i32 181, i32 0, metadata !542, null}
!1092 = metadata !{i32 184, i32 0, metadata !542, null}
!1093 = metadata !{i32 185, i32 0, metadata !542, null}
!1094 = metadata !{i32 186, i32 0, metadata !542, null}
!1095 = metadata !{i32 187, i32 0, metadata !542, null}
!1096 = metadata !{i32 188, i32 0, metadata !542, null}
!1097 = metadata !{i32 189, i32 0, metadata !542, null}
!1098 = metadata !{i32 192, i32 0, metadata !542, null}
!1099 = metadata !{i32 193, i32 0, metadata !542, null}
!1100 = metadata !{i32 194, i32 0, metadata !542, null}
!1101 = metadata !{i32 195, i32 0, metadata !542, null}
!1102 = metadata !{i32 196, i32 0, metadata !542, null}
!1103 = metadata !{i32 197, i32 0, metadata !542, null}
!1104 = metadata !{i32 200, i32 0, metadata !542, null}
!1105 = metadata !{i32 201, i32 0, metadata !542, null}
!1106 = metadata !{i32 204, i32 0, metadata !542, null}
!1107 = metadata !{i32 211, i32 0, metadata !542, null}
!1108 = metadata !{i32 212, i32 0, metadata !542, null}
!1109 = metadata !{i32 213, i32 0, metadata !542, null}
!1110 = metadata !{i32 215, i32 0, metadata !542, null}
!1111 = metadata !{i32 216, i32 0, metadata !542, null}
!1112 = metadata !{i32 217, i32 0, metadata !542, null}
!1113 = metadata !{i32 218, i32 0, metadata !542, null}
!1114 = metadata !{i32 221, i32 0, metadata !542, null}
!1115 = metadata !{i32 222, i32 0, metadata !542, null}
!1116 = metadata !{i32 223, i32 0, metadata !542, null}
!1117 = metadata !{i32 224, i32 0, metadata !542, null}
!1118 = metadata !{i32 225, i32 0, metadata !542, null}
!1119 = metadata !{i32 226, i32 0, metadata !542, null}
!1120 = metadata !{i32 229, i32 0, metadata !542, null}
!1121 = metadata !{i32 230, i32 0, metadata !542, null}
!1122 = metadata !{i32 231, i32 0, metadata !542, null}
!1123 = metadata !{i32 232, i32 0, metadata !542, null}
!1124 = metadata !{i32 233, i32 0, metadata !542, null}
!1125 = metadata !{i32 234, i32 0, metadata !542, null}
!1126 = metadata !{i32 237, i32 0, metadata !542, null}
!1127 = metadata !{i32 238, i32 0, metadata !542, null}
!1128 = metadata !{i32 243, i32 0, metadata !542, null}
!1129 = metadata !{i32 244, i32 0, metadata !542, null}
!1130 = metadata !{i32 245, i32 0, metadata !542, null}
!1131 = metadata !{i32 251, i32 0, metadata !542, null}
!1132 = metadata !{i32 252, i32 0, metadata !542, null}
!1133 = metadata !{i32 253, i32 0, metadata !542, null}
!1134 = metadata !{i32 132, i32 0, metadata !212, null}
!1135 = metadata !{i32 134, i32 0, metadata !548, null}
!1136 = metadata !{i32 135, i32 0, metadata !548, null}
!1137 = metadata !{i32 136, i32 0, metadata !548, null}
!1138 = metadata !{i32 138, i32 0, metadata !548, null}
!1139 = metadata !{i32 25, i32 0, metadata !213, null}
!1140 = metadata !{i32 26, i32 0, metadata !1141, null}
!1141 = metadata !{i32 589835, metadata !213, i32 25, i32 0, metadata !12, i32 44} ; [ DW_TAG_lexical_block ]
!1142 = metadata !{i32 132, i32 0, metadata !212, metadata !1143}
!1143 = metadata !{i32 28, i32 0, metadata !1141, null}
!1144 = metadata !{i32 134, i32 0, metadata !548, metadata !1143}
!1145 = metadata !{i32 135, i32 0, metadata !548, metadata !1143}
!1146 = metadata !{i32 136, i32 0, metadata !548, metadata !1143}
!1147 = metadata !{i32 138, i32 0, metadata !548, metadata !1143}
!1148 = metadata !{i32 259, i32 0, metadata !200, metadata !1149}
!1149 = metadata !{i32 30, i32 0, metadata !1141, null}
!1150 = metadata !{i32 260, i32 0, metadata !515, metadata !1149}
!1151 = metadata !{i32 261, i32 0, metadata !515, metadata !1149}
!1152 = metadata !{i32 262, i32 0, metadata !515, metadata !1149}
!1153 = metadata !{i32 264, i32 0, metadata !515, metadata !1149}
!1154 = metadata !{i32 312, i32 0, metadata !198, metadata !1155}
!1155 = metadata !{i32 32, i32 0, metadata !1141, null}
!1156 = metadata !{i32 313, i32 0, metadata !504, metadata !1155}
!1157 = metadata !{i32 314, i32 0, metadata !504, metadata !1155}
!1158 = metadata !{i32 315, i32 0, metadata !504, metadata !1155}
!1159 = metadata !{i32 316, i32 0, metadata !504, metadata !1155}
!1160 = metadata !{i32 368, i32 0, metadata !194, metadata !1161}
!1161 = metadata !{i32 34, i32 0, metadata !1141, null}
!1162 = metadata !{i32 369, i32 0, metadata !494, metadata !1161}
!1163 = metadata !{i32 370, i32 0, metadata !494, metadata !1161}
!1164 = metadata !{i32 372, i32 0, metadata !494, metadata !1161}
!1165 = metadata !{i32 36, i32 0, metadata !1141, null}
!1166 = metadata !{i32 518, i32 0, metadata !192, metadata !1167}
!1167 = metadata !{i32 38, i32 0, metadata !1141, null}
!1168 = metadata !{i32 520, i32 0, metadata !484, metadata !1167}
!1169 = metadata !{i32 521, i32 0, metadata !484, metadata !1167}
!1170 = metadata !{i32 522, i32 0, metadata !484, metadata !1167}
!1171 = metadata !{i32 524, i32 0, metadata !484, metadata !1167}
!1172 = metadata !{i32 563, i32 0, metadata !190, metadata !1173}
!1173 = metadata !{i32 40, i32 0, metadata !1141, null}
!1174 = metadata !{i32 565, i32 0, metadata !473, metadata !1173}
!1175 = metadata !{i32 566, i32 0, metadata !473, metadata !1173}
!1176 = metadata !{i32 567, i32 0, metadata !473, metadata !1173}
!1177 = metadata !{i32 568, i32 0, metadata !473, metadata !1173}
!1178 = metadata !{i32 44, i32 0, metadata !1141, null}
!1179 = metadata !{i32 662, i32 0, metadata !178, metadata !1178}
!1180 = metadata !{i32 681, i32 0, metadata !172, metadata !1181}
!1181 = metadata !{i32 664, i32 0, metadata !812, metadata !1178}
!1182 = metadata !{i32 683, i32 0, metadata !439, metadata !1181}
!1183 = metadata !{i32 684, i32 0, metadata !439, metadata !1181}
!1184 = metadata !{i32 686, i32 0, metadata !439, metadata !1181}
!1185 = metadata !{i32 687, i32 0, metadata !439, metadata !1181}
!1186 = metadata !{i32 689, i32 0, metadata !439, metadata !1181}
!1187 = metadata !{i32 690, i32 0, metadata !439, metadata !1181}
!1188 = metadata !{i32 691, i32 0, metadata !439, metadata !1181}
!1189 = metadata !{i32 692, i32 0, metadata !439, metadata !1181}
!1190 = metadata !{i32 693, i32 0, metadata !439, metadata !1181}
!1191 = metadata !{i32 694, i32 0, metadata !439, metadata !1181}
!1192 = metadata !{i32 695, i32 0, metadata !439, metadata !1181}
!1193 = metadata !{i32 697, i32 0, metadata !439, metadata !1181}
!1194 = metadata !{i32 46, i32 0, metadata !1141, null}
!1195 = metadata !{i32 671, i32 0, metadata !162, metadata !1194}
!1196 = metadata !{i32 705, i32 0, metadata !150, metadata !1197}
!1197 = metadata !{i32 673, i32 0, metadata !715, metadata !1194}
!1198 = metadata !{i32 707, i32 0, metadata !407, metadata !1197}
!1199 = metadata !{i32 708, i32 0, metadata !407, metadata !1197}
!1200 = metadata !{i32 716, i32 0, metadata !407, metadata !1197}
!1201 = metadata !{i32 717, i32 0, metadata !407, metadata !1197}
!1202 = metadata !{i32 719, i32 0, metadata !407, metadata !1197}
!1203 = metadata !{i32 720, i32 0, metadata !407, metadata !1197}
!1204 = metadata !{i32 721, i32 0, metadata !407, metadata !1197}
!1205 = metadata !{i32 722, i32 0, metadata !407, metadata !1197}
!1206 = metadata !{i32 723, i32 0, metadata !407, metadata !1197}
!1207 = metadata !{i32 724, i32 0, metadata !407, metadata !1197}
!1208 = metadata !{i32 725, i32 0, metadata !407, metadata !1197}
!1209 = metadata !{i32 727, i32 0, metadata !407, metadata !1197}
!1210 = metadata !{i32 48, i32 0, metadata !1141, null}
!1211 = metadata !{i32 681, i32 0, metadata !172, metadata !1210}
!1212 = metadata !{i32 683, i32 0, metadata !439, metadata !1210}
!1213 = metadata !{i32 684, i32 0, metadata !439, metadata !1210}
!1214 = metadata !{i32 686, i32 0, metadata !439, metadata !1210}
!1215 = metadata !{i32 687, i32 0, metadata !439, metadata !1210}
!1216 = metadata !{i32 689, i32 0, metadata !439, metadata !1210}
!1217 = metadata !{i32 690, i32 0, metadata !439, metadata !1210}
!1218 = metadata !{i32 691, i32 0, metadata !439, metadata !1210}
!1219 = metadata !{i32 692, i32 0, metadata !439, metadata !1210}
!1220 = metadata !{i32 693, i32 0, metadata !439, metadata !1210}
!1221 = metadata !{i32 694, i32 0, metadata !439, metadata !1210}
!1222 = metadata !{i32 695, i32 0, metadata !439, metadata !1210}
!1223 = metadata !{i32 697, i32 0, metadata !439, metadata !1210}
!1224 = metadata !{i32 51, i32 0, metadata !1141, null}
!1225 = metadata !{i32 705, i32 0, metadata !150, metadata !1224}
!1226 = metadata !{i32 707, i32 0, metadata !407, metadata !1224}
!1227 = metadata !{i32 708, i32 0, metadata !407, metadata !1224}
!1228 = metadata !{i32 711, i32 0, metadata !407, metadata !1224}
!1229 = metadata !{i32 712, i32 0, metadata !407, metadata !1224}
!1230 = metadata !{i32 713, i32 0, metadata !407, metadata !1224}
!1231 = metadata !{i32 716, i32 0, metadata !407, metadata !1224}
!1232 = metadata !{i32 717, i32 0, metadata !407, metadata !1224}
!1233 = metadata !{i32 719, i32 0, metadata !407, metadata !1224}
!1234 = metadata !{i32 720, i32 0, metadata !407, metadata !1224}
!1235 = metadata !{i32 721, i32 0, metadata !407, metadata !1224}
!1236 = metadata !{i32 722, i32 0, metadata !407, metadata !1224}
!1237 = metadata !{i32 723, i32 0, metadata !407, metadata !1224}
!1238 = metadata !{i32 724, i32 0, metadata !407, metadata !1224}
!1239 = metadata !{i32 725, i32 0, metadata !407, metadata !1224}
!1240 = metadata !{i32 727, i32 0, metadata !407, metadata !1224}
!1241 = metadata !{i32 729, i32 0, metadata !407, metadata !1224}
!1242 = metadata !{i32 609, i32 0, metadata !183, metadata !1243}
!1243 = metadata !{i32 54, i32 0, metadata !1141, null}
!1244 = metadata !{i32 610, i32 0, metadata !463, metadata !1243}
!1245 = metadata !{i32 611, i32 0, metadata !463, metadata !1243}
!1246 = metadata !{i32 612, i32 0, metadata !463, metadata !1243}
!1247 = metadata !{i32 56, i32 0, metadata !1141, null}
!1248 = metadata !{i32 57, i32 0, metadata !1141, null}
!1249 = metadata !{i32 59, i32 0, metadata !1141, null}
!1250 = metadata !{i32 60, i32 0, metadata !1141, null}
!1251 = metadata !{i32 62, i32 0, metadata !1141, null}
!1252 = metadata !{i32 64, i32 0, metadata !1141, null}
!1253 = metadata !{i32 66, i32 0, metadata !1141, null}
!1254 = metadata !{i32 67, i32 0, metadata !1141, null}
!1255 = metadata !{i32 68, i32 0, metadata !1141, null}
!1256 = metadata !{i32 270, i32 0, metadata !216, null}
!1257 = metadata !{i32 271, i32 0, metadata !555, null}
!1258 = metadata !{i32 272, i32 0, metadata !555, null}
!1259 = metadata !{i32 273, i32 0, metadata !555, null}
!1260 = metadata !{i32 274, i32 0, metadata !555, null}
!1261 = metadata !{i32 275, i32 0, metadata !555, null}
