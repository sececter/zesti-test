; ModuleID = 'fd_32.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.__fsid_t = type { [2 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.timespec = type { i64, i64 }

@__getdents = alias i64 (i32, %struct.dirent*, i64)* @getdents

define i32 @open(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !225), !dbg !255
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !226), !dbg !255
  call void @llvm.dbg.value(metadata !256, i64 0, metadata !227), !dbg !257
  %0 = and i32 %flags, 64, !dbg !258
  %1 = icmp eq i32 %0, 0, !dbg !258
  br i1 %1, label %bb8, label %bb, !dbg !258

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !229), !dbg !259
  %ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !260
  call void @llvm.va_start(i8* %ap12), !dbg !260
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !261
  %3 = load i32* %2, align 8, !dbg !261
  %4 = icmp ugt i32 %3, 47, !dbg !261
  br i1 %4, label %bb4, label %bb3, !dbg !261

bb3:                                              ; preds = %bb
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !261
  %6 = load i8** %5, align 8, !dbg !261
  %tmp = zext i32 %3 to i64
  %7 = ptrtoint i8* %6 to i64, !dbg !261
  %8 = add i64 %7, %tmp, !dbg !261
  %9 = inttoptr i64 %8 to i8*, !dbg !261
  %10 = add i32 %3, 8, !dbg !261
  store i32 %10, i32* %2, align 8, !dbg !261
  br label %bb5, !dbg !261

bb4:                                              ; preds = %bb
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !261
  %12 = load i8** %11, align 8, !dbg !261
  %13 = getelementptr inbounds i8* %12, i64 8, !dbg !261
  store i8* %13, i8** %11, align 8, !dbg !261
  br label %bb5, !dbg !261

bb5:                                              ; preds = %bb4, %bb3
  %addr.26.0 = phi i8* [ %12, %bb4 ], [ %9, %bb3 ]
  %14 = bitcast i8* %addr.26.0 to i32*, !dbg !261
  %15 = load i32* %14, align 4, !dbg !261
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !227), !dbg !261
  call void @llvm.va_end(i8* %ap12), !dbg !262
  br label %bb8, !dbg !262

bb8:                                              ; preds = %entry, %bb5
  %mode.0 = phi i32 [ %15, %bb5 ], [ 0, %entry ]
  %16 = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) nounwind, !dbg !263
  ret i32 %16, !dbg !263
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i32 @fstat64(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !160), !dbg !264
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !161), !dbg !264
  %0 = tail call i32 @__fd_fstat(i32 %fd, %struct.stat* %buf) nounwind, !dbg !265
  ret i32 %0, !dbg !265
}

declare i32 @__fd_fstat(i32, %struct.stat*)

define i32 @fstat(i32 %fd, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !162), !dbg !267
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !163), !dbg !267
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !164), !dbg !268
  %0 = call i32 @__fd_fstat(i32 %fd, %struct.stat* %tmp) nounwind, !dbg !269
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !166), !dbg !269
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !158), !dbg !270
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !159), !dbg !270
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !272
  %2 = load i64* %1, align 8, !dbg !272
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !272
  store i64 %2, i64* %3, align 8, !dbg !272
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !274
  %5 = load i64* %4, align 8, !dbg !274
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !274
  store i64 %5, i64* %6, align 8, !dbg !274
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !275
  %8 = load i32* %7, align 8, !dbg !275
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !275
  store i32 %8, i32* %9, align 8, !dbg !275
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !276
  %11 = load i64* %10, align 8, !dbg !276
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !276
  store i64 %11, i64* %12, align 8, !dbg !276
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !277
  %14 = load i32* %13, align 4, !dbg !277
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !277
  store i32 %14, i32* %15, align 4, !dbg !277
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !278
  %17 = load i32* %16, align 8, !dbg !278
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !278
  store i32 %17, i32* %18, align 8, !dbg !278
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !279
  %20 = load i64* %19, align 8, !dbg !279
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !279
  store i64 %20, i64* %21, align 8, !dbg !279
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !280
  %23 = load i64* %22, align 8, !dbg !280
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !280
  store i64 %23, i64* %24, align 8, !dbg !280
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !281
  %26 = load i64* %25, align 8, !dbg !281
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !281
  store i64 %26, i64* %27, align 8, !dbg !281
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !282
  %29 = load i64* %28, align 8, !dbg !282
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !282
  store i64 %29, i64* %30, align 8, !dbg !282
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !283
  %32 = load i64* %31, align 8, !dbg !283
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !283
  store i64 %32, i64* %33, align 8, !dbg !283
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !284
  %35 = load i64* %34, align 8, !dbg !284
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !284
  store i64 %35, i64* %36, align 8, !dbg !284
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !285
  %38 = load i64* %37, align 8, !dbg !285
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !285
  store i64 %38, i64* %39, align 8, !dbg !285
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !286
  %41 = load i64* %40, align 8, !dbg !286
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !286
  store i64 %41, i64* %42, align 8, !dbg !286
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !287
  %44 = load i64* %43, align 8, !dbg !287
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !287
  store i64 %44, i64* %45, align 8, !dbg !287
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !288
  %47 = load i64* %46, align 8, !dbg !288
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !288
  store i64 %47, i64* %48, align 8, !dbg !288
  ret i32 %0, !dbg !289
}

define i32 @__fxstat(i32 %vers, i32 %fd, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !167), !dbg !290
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !168), !dbg !290
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !169), !dbg !290
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !170), !dbg !291
  %0 = call i32 @__fd_fstat(i32 %fd, %struct.stat* %tmp) nounwind, !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !172), !dbg !292
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !158), !dbg !293
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !159), !dbg !293
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !295
  %2 = load i64* %1, align 8, !dbg !295
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !295
  store i64 %2, i64* %3, align 8, !dbg !295
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !296
  %5 = load i64* %4, align 8, !dbg !296
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !296
  store i64 %5, i64* %6, align 8, !dbg !296
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !297
  %8 = load i32* %7, align 8, !dbg !297
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !297
  store i32 %8, i32* %9, align 8, !dbg !297
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !298
  %11 = load i64* %10, align 8, !dbg !298
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !298
  store i64 %11, i64* %12, align 8, !dbg !298
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !299
  %14 = load i32* %13, align 4, !dbg !299
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !299
  store i32 %14, i32* %15, align 4, !dbg !299
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !300
  %17 = load i32* %16, align 8, !dbg !300
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !300
  store i32 %17, i32* %18, align 8, !dbg !300
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !301
  %20 = load i64* %19, align 8, !dbg !301
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !301
  store i64 %20, i64* %21, align 8, !dbg !301
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !302
  %23 = load i64* %22, align 8, !dbg !302
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !302
  store i64 %23, i64* %24, align 8, !dbg !302
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !303
  %26 = load i64* %25, align 8, !dbg !303
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !303
  store i64 %26, i64* %27, align 8, !dbg !303
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !304
  %29 = load i64* %28, align 8, !dbg !304
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !304
  store i64 %29, i64* %30, align 8, !dbg !304
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !305
  %32 = load i64* %31, align 8, !dbg !305
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !305
  store i64 %32, i64* %33, align 8, !dbg !305
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !306
  %35 = load i64* %34, align 8, !dbg !306
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !306
  store i64 %35, i64* %36, align 8, !dbg !306
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !307
  %38 = load i64* %37, align 8, !dbg !307
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !307
  store i64 %38, i64* %39, align 8, !dbg !307
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !308
  %41 = load i64* %40, align 8, !dbg !308
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !308
  store i64 %41, i64* %42, align 8, !dbg !308
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !309
  %44 = load i64* %43, align 8, !dbg !309
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !309
  store i64 %44, i64* %45, align 8, !dbg !309
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !310
  %47 = load i64* %46, align 8, !dbg !310
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !310
  store i64 %47, i64* %48, align 8, !dbg !310
  ret i32 %0, !dbg !311
}

define weak i32 @lstat64(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !173), !dbg !312
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !174), !dbg !312
  %0 = tail call i32 @__fd_lstat(i8* %path, %struct.stat* %buf) nounwind, !dbg !313
  ret i32 %0, !dbg !313
}

declare i32 @__fd_lstat(i8*, %struct.stat*)

define i32 @lstat(i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !175), !dbg !315
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !176), !dbg !315
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !177), !dbg !316
  %0 = call i32 @__fd_lstat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !317
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !179), !dbg !317
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !158), !dbg !318
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !159), !dbg !318
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !320
  %2 = load i64* %1, align 8, !dbg !320
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !320
  store i64 %2, i64* %3, align 8, !dbg !320
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !321
  %5 = load i64* %4, align 8, !dbg !321
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !321
  store i64 %5, i64* %6, align 8, !dbg !321
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !322
  %8 = load i32* %7, align 8, !dbg !322
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !322
  store i32 %8, i32* %9, align 8, !dbg !322
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !323
  %11 = load i64* %10, align 8, !dbg !323
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !323
  store i64 %11, i64* %12, align 8, !dbg !323
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !324
  %14 = load i32* %13, align 4, !dbg !324
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !324
  store i32 %14, i32* %15, align 4, !dbg !324
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !325
  %17 = load i32* %16, align 8, !dbg !325
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !325
  store i32 %17, i32* %18, align 8, !dbg !325
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !326
  %20 = load i64* %19, align 8, !dbg !326
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !326
  store i64 %20, i64* %21, align 8, !dbg !326
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !327
  %23 = load i64* %22, align 8, !dbg !327
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !327
  store i64 %23, i64* %24, align 8, !dbg !327
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !328
  %26 = load i64* %25, align 8, !dbg !328
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !328
  store i64 %26, i64* %27, align 8, !dbg !328
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !329
  %29 = load i64* %28, align 8, !dbg !329
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !329
  store i64 %29, i64* %30, align 8, !dbg !329
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !330
  %32 = load i64* %31, align 8, !dbg !330
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !330
  store i64 %32, i64* %33, align 8, !dbg !330
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !331
  %35 = load i64* %34, align 8, !dbg !331
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !331
  store i64 %35, i64* %36, align 8, !dbg !331
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !332
  %38 = load i64* %37, align 8, !dbg !332
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !332
  store i64 %38, i64* %39, align 8, !dbg !332
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !333
  %41 = load i64* %40, align 8, !dbg !333
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !333
  store i64 %41, i64* %42, align 8, !dbg !333
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !334
  %44 = load i64* %43, align 8, !dbg !334
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !334
  store i64 %44, i64* %45, align 8, !dbg !334
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !335
  %47 = load i64* %46, align 8, !dbg !335
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !335
  store i64 %47, i64* %48, align 8, !dbg !335
  ret i32 %0, !dbg !336
}

define i32 @__lxstat(i32 %vers, i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !180), !dbg !337
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !181), !dbg !337
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !182), !dbg !337
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !183), !dbg !338
  %0 = call i32 @__fd_lstat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !339
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !185), !dbg !339
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !158), !dbg !340
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !159), !dbg !340
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !342
  %2 = load i64* %1, align 8, !dbg !342
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !342
  store i64 %2, i64* %3, align 8, !dbg !342
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !343
  %5 = load i64* %4, align 8, !dbg !343
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !343
  store i64 %5, i64* %6, align 8, !dbg !343
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !344
  %8 = load i32* %7, align 8, !dbg !344
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !344
  store i32 %8, i32* %9, align 8, !dbg !344
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !345
  %11 = load i64* %10, align 8, !dbg !345
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !345
  store i64 %11, i64* %12, align 8, !dbg !345
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !346
  %14 = load i32* %13, align 4, !dbg !346
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !346
  store i32 %14, i32* %15, align 4, !dbg !346
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !347
  %17 = load i32* %16, align 8, !dbg !347
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !347
  store i32 %17, i32* %18, align 8, !dbg !347
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !348
  %20 = load i64* %19, align 8, !dbg !348
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !348
  store i64 %20, i64* %21, align 8, !dbg !348
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !349
  %23 = load i64* %22, align 8, !dbg !349
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !349
  store i64 %23, i64* %24, align 8, !dbg !349
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !350
  %26 = load i64* %25, align 8, !dbg !350
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !350
  store i64 %26, i64* %27, align 8, !dbg !350
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !351
  %29 = load i64* %28, align 8, !dbg !351
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !351
  store i64 %29, i64* %30, align 8, !dbg !351
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !352
  %32 = load i64* %31, align 8, !dbg !352
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !352
  store i64 %32, i64* %33, align 8, !dbg !352
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !353
  %35 = load i64* %34, align 8, !dbg !353
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !353
  store i64 %35, i64* %36, align 8, !dbg !353
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !354
  %38 = load i64* %37, align 8, !dbg !354
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !354
  store i64 %38, i64* %39, align 8, !dbg !354
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !355
  %41 = load i64* %40, align 8, !dbg !355
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !355
  store i64 %41, i64* %42, align 8, !dbg !355
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !356
  %44 = load i64* %43, align 8, !dbg !356
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !356
  store i64 %44, i64* %45, align 8, !dbg !356
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !357
  %47 = load i64* %46, align 8, !dbg !357
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !357
  store i64 %47, i64* %48, align 8, !dbg !357
  ret i32 %0, !dbg !358
}

define weak i32 @stat64(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !186), !dbg !359
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !187), !dbg !359
  %0 = tail call i32 @__fd_stat(i8* %path, %struct.stat* %buf) nounwind, !dbg !360
  ret i32 %0, !dbg !360
}

declare i32 @__fd_stat(i8*, %struct.stat*)

define i32 @stat(i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !188), !dbg !362
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !189), !dbg !362
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !190), !dbg !363
  %0 = call i32 @__fd_stat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !364
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !192), !dbg !364
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !158), !dbg !365
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !159), !dbg !365
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !367
  %2 = load i64* %1, align 8, !dbg !367
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !367
  store i64 %2, i64* %3, align 8, !dbg !367
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !368
  %5 = load i64* %4, align 8, !dbg !368
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !368
  store i64 %5, i64* %6, align 8, !dbg !368
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !369
  %8 = load i32* %7, align 8, !dbg !369
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !369
  store i32 %8, i32* %9, align 8, !dbg !369
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !370
  %11 = load i64* %10, align 8, !dbg !370
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !370
  store i64 %11, i64* %12, align 8, !dbg !370
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !371
  %14 = load i32* %13, align 4, !dbg !371
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !371
  store i32 %14, i32* %15, align 4, !dbg !371
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !372
  %17 = load i32* %16, align 8, !dbg !372
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !372
  store i32 %17, i32* %18, align 8, !dbg !372
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !373
  %20 = load i64* %19, align 8, !dbg !373
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !373
  store i64 %20, i64* %21, align 8, !dbg !373
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !374
  %23 = load i64* %22, align 8, !dbg !374
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !374
  store i64 %23, i64* %24, align 8, !dbg !374
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !375
  %26 = load i64* %25, align 8, !dbg !375
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !375
  store i64 %26, i64* %27, align 8, !dbg !375
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !376
  %29 = load i64* %28, align 8, !dbg !376
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !376
  store i64 %29, i64* %30, align 8, !dbg !376
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !377
  %32 = load i64* %31, align 8, !dbg !377
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !377
  store i64 %32, i64* %33, align 8, !dbg !377
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !378
  %35 = load i64* %34, align 8, !dbg !378
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !378
  store i64 %35, i64* %36, align 8, !dbg !378
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !379
  %38 = load i64* %37, align 8, !dbg !379
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !379
  store i64 %38, i64* %39, align 8, !dbg !379
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !380
  %41 = load i64* %40, align 8, !dbg !380
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !380
  store i64 %41, i64* %42, align 8, !dbg !380
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !381
  %44 = load i64* %43, align 8, !dbg !381
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !381
  store i64 %44, i64* %45, align 8, !dbg !381
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !382
  %47 = load i64* %46, align 8, !dbg !382
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !382
  store i64 %47, i64* %48, align 8, !dbg !382
  ret i32 %0, !dbg !383
}

define i32 @__xstat(i32 %vers, i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !193), !dbg !384
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !194), !dbg !384
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !195), !dbg !384
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !196), !dbg !385
  %0 = call i32 @__fd_stat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !386
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !198), !dbg !386
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !158), !dbg !387
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !159), !dbg !387
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !389
  %2 = load i64* %1, align 8, !dbg !389
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !389
  store i64 %2, i64* %3, align 8, !dbg !389
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !390
  %5 = load i64* %4, align 8, !dbg !390
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !390
  store i64 %5, i64* %6, align 8, !dbg !390
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !391
  %8 = load i32* %7, align 8, !dbg !391
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !391
  store i32 %8, i32* %9, align 8, !dbg !391
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !392
  %11 = load i64* %10, align 8, !dbg !392
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !392
  store i64 %11, i64* %12, align 8, !dbg !392
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !393
  %14 = load i32* %13, align 4, !dbg !393
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !393
  store i32 %14, i32* %15, align 4, !dbg !393
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !394
  %17 = load i32* %16, align 8, !dbg !394
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !394
  store i32 %17, i32* %18, align 8, !dbg !394
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !395
  %20 = load i64* %19, align 8, !dbg !395
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !395
  store i64 %20, i64* %21, align 8, !dbg !395
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !396
  %23 = load i64* %22, align 8, !dbg !396
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !396
  store i64 %23, i64* %24, align 8, !dbg !396
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !397
  %26 = load i64* %25, align 8, !dbg !397
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !397
  store i64 %26, i64* %27, align 8, !dbg !397
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !398
  %29 = load i64* %28, align 8, !dbg !398
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !398
  store i64 %29, i64* %30, align 8, !dbg !398
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !399
  %32 = load i64* %31, align 8, !dbg !399
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !399
  store i64 %32, i64* %33, align 8, !dbg !399
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !400
  %35 = load i64* %34, align 8, !dbg !400
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !400
  store i64 %35, i64* %36, align 8, !dbg !400
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !401
  %38 = load i64* %37, align 8, !dbg !401
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !401
  store i64 %38, i64* %39, align 8, !dbg !401
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !402
  %41 = load i64* %40, align 8, !dbg !402
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !402
  store i64 %41, i64* %42, align 8, !dbg !402
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !403
  %44 = load i64* %43, align 8, !dbg !403
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !403
  store i64 %44, i64* %45, align 8, !dbg !403
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !404
  %47 = load i64* %46, align 8, !dbg !404
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !404
  store i64 %47, i64* %48, align 8, !dbg !404
  ret i32 %0, !dbg !405
}

define weak i64 @lseek64(i32 %fd, i64 %off, i32 %whence) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !199), !dbg !406
  tail call void @llvm.dbg.value(metadata !{i64 %off}, i64 0, metadata !200), !dbg !406
  tail call void @llvm.dbg.value(metadata !{i32 %whence}, i64 0, metadata !201), !dbg !406
  %0 = tail call i64 @__fd_lseek(i32 %fd, i64 %off, i32 %whence) nounwind, !dbg !407
  ret i64 %0, !dbg !407
}

declare i64 @__fd_lseek(i32, i64, i32)

define i64 @lseek(i32 %fd, i64 %off, i32 %whence) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !202), !dbg !409
  tail call void @llvm.dbg.value(metadata !{i64 %off}, i64 0, metadata !203), !dbg !409
  tail call void @llvm.dbg.value(metadata !{i32 %whence}, i64 0, metadata !204), !dbg !409
  %0 = tail call i64 @__fd_lseek(i32 %fd, i64 %off, i32 %whence) nounwind, !dbg !410
  ret i64 %0, !dbg !410
}

define weak i32 @open64(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !205), !dbg !412
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !206), !dbg !412
  call void @llvm.dbg.value(metadata !256, i64 0, metadata !207), !dbg !413
  %0 = and i32 %flags, 64, !dbg !414
  %1 = icmp eq i32 %0, 0, !dbg !414
  br i1 %1, label %bb8, label %bb, !dbg !414

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !210), !dbg !415
  %ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !416
  call void @llvm.va_start(i8* %ap12), !dbg !416
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !417
  %3 = load i32* %2, align 8, !dbg !417
  %4 = icmp ugt i32 %3, 47, !dbg !417
  br i1 %4, label %bb4, label %bb3, !dbg !417

bb3:                                              ; preds = %bb
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !417
  %6 = load i8** %5, align 8, !dbg !417
  %tmp = zext i32 %3 to i64
  %7 = ptrtoint i8* %6 to i64, !dbg !417
  %8 = add i64 %7, %tmp, !dbg !417
  %9 = inttoptr i64 %8 to i8*, !dbg !417
  %10 = add i32 %3, 8, !dbg !417
  store i32 %10, i32* %2, align 8, !dbg !417
  br label %bb5, !dbg !417

bb4:                                              ; preds = %bb
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !417
  %12 = load i8** %11, align 8, !dbg !417
  %13 = getelementptr inbounds i8* %12, i64 8, !dbg !417
  store i8* %13, i8** %11, align 8, !dbg !417
  br label %bb5, !dbg !417

bb5:                                              ; preds = %bb4, %bb3
  %addr.31.0 = phi i8* [ %12, %bb4 ], [ %9, %bb3 ]
  %14 = bitcast i8* %addr.31.0 to i32*, !dbg !417
  %15 = load i32* %14, align 4, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !207), !dbg !417
  call void @llvm.va_end(i8* %ap12), !dbg !418
  br label %bb8, !dbg !418

bb8:                                              ; preds = %entry, %bb5
  %mode.0 = phi i32 [ %15, %bb5 ], [ 0, %entry ]
  %16 = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) nounwind, !dbg !419
  ret i32 %16, !dbg !419
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare i32 @__fd_open(i8*, i32, i32)

define i64 @getdents(i32 %fd, %struct.dirent* %dirp, i64 %nbytes) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !231), !dbg !420
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %dirp}, i64 0, metadata !232), !dbg !420
  tail call void @llvm.dbg.value(metadata !{i64 %nbytes}, i64 0, metadata !233), !dbg !420
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %dirp}, i64 0, metadata !234), !dbg !421
  %0 = trunc i64 %nbytes to i32, !dbg !422
  %1 = tail call i32 @__fd_getdents(i32 %fd, %struct.dirent* %dirp, i32 %0) nounwind, !dbg !422
  %2 = sext i32 %1 to i64, !dbg !422
  tail call void @llvm.dbg.value(metadata !{i64 %2}, i64 0, metadata !245), !dbg !422
  %3 = icmp sgt i32 %1, 0, !dbg !423
  br i1 %3, label %bb, label %bb3, !dbg !423

bb:                                               ; preds = %entry
  %4 = bitcast %struct.dirent* %dirp to i8*, !dbg !424
  %5 = getelementptr inbounds i8* %4, i64 %2, !dbg !424
  %6 = bitcast i8* %5 to %struct.dirent*, !dbg !424
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %6}, i64 0, metadata !246), !dbg !424
  %7 = icmp ugt %struct.dirent* %6, %dirp, !dbg !425
  br i1 %7, label %bb1, label %bb3, !dbg !425

bb1:                                              ; preds = %bb, %bb1
  %dp64.05 = phi %struct.dirent* [ %13, %bb1 ], [ %dirp, %bb ]
  %8 = getelementptr inbounds %struct.dirent* %dp64.05, i64 0, i32 2, !dbg !426
  %9 = bitcast %struct.dirent* %dp64.05 to i8*, !dbg !427
  %10 = load i16* %8, align 8, !dbg !427
  %11 = zext i16 %10 to i64, !dbg !427
  %12 = getelementptr inbounds i8* %9, i64 %11, !dbg !427
  %13 = bitcast i8* %12 to %struct.dirent*, !dbg !427
  %14 = icmp ult i8* %12, %5, !dbg !425
  br i1 %14, label %bb1, label %bb3, !dbg !425

bb3:                                              ; preds = %bb, %bb1, %entry
  ret i64 %2, !dbg !428
}

declare i32 @__fd_getdents(i32, %struct.dirent*, i32)

define i32 @statfs(i8* %path, %struct.statfs* %buf32) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !251), !dbg !429
  tail call void @llvm.dbg.value(metadata !{%struct.statfs* %buf32}, i64 0, metadata !252), !dbg !429
  %0 = tail call i32 @__fd_statfs(i8* %path, %struct.statfs* %buf32) nounwind, !dbg !430
  ret i32 %0, !dbg !430
}

declare i32 @__fd_statfs(i8*, %struct.statfs*)

define i32 @ftruncate(i32 %fd, i64 %length) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !253), !dbg !432
  tail call void @llvm.dbg.value(metadata !{i64 %length}, i64 0, metadata !254), !dbg !432
  %0 = tail call i32 @__fd_ftruncate(i32 %fd, i64 %length) nounwind, !dbg !433
  ret i32 %0, !dbg !433
}

declare i32 @__fd_ftruncate(i32, i64)

!llvm.dbg.sp = !{!0, !68, !71, !74, !77, !83, !86, !89, !90, !91, !92, !97, !101, !104, !105, !124, !155}
!llvm.dbg.lv.__stat64_to_stat = !{!158, !159}
!llvm.dbg.lv.fstat64 = !{!160, !161}
!llvm.dbg.lv.fstat = !{!162, !163, !164, !166}
!llvm.dbg.lv.__fxstat = !{!167, !168, !169, !170, !172}
!llvm.dbg.lv.lstat64 = !{!173, !174}
!llvm.dbg.lv.lstat = !{!175, !176, !177, !179}
!llvm.dbg.lv.__lxstat = !{!180, !181, !182, !183, !185}
!llvm.dbg.lv.stat64 = !{!186, !187}
!llvm.dbg.lv.stat = !{!188, !189, !190, !192}
!llvm.dbg.lv.__xstat = !{!193, !194, !195, !196, !198}
!llvm.dbg.lv.lseek64 = !{!199, !200, !201}
!llvm.dbg.lv.lseek = !{!202, !203, !204}
!llvm.dbg.lv.open64 = !{!205, !206, !207, !210}
!llvm.dbg.lv.open = !{!225, !226, !227, !229}
!llvm.dbg.lv.getdents = !{!231, !232, !233, !234, !245, !246, !248, !250}
!llvm.dbg.lv.statfs = !{!251, !252}
!llvm.dbg.lv.ftruncate = !{!253, !254}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__stat64_to_stat", metadata !"__stat64_to_stat", metadata !"", metadata !1, i32 30, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd_32.c", metadata !"/home/xqx/projects/zesti-test/zesti/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd_32.c", metadata !"/home/xqx/projects/zesti-test/zesti/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5, metadata !48}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !7, i32 30, i64 1152, i64 64, i64 0, i32 0, null, metadata !8, i32 0, null} ; [ DW_TAG_structure_type ]
!7 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/xqx/projects/zesti-test/zesti/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{metadata !9, metadata !14, metadata !16, metadata !18, metadata !21, metadata !23, metadata !25, metadata !27, metadata !28, metadata !31, metadata !33, metadata !35, metadata !42, metadata !43, metadata !44}
!9 = metadata !{i32 589837, metadata !6, metadata !"st_dev", metadata !10, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!10 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 589846, metadata !12, metadata !"__dev_t", metadata !12, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!14 = metadata !{i32 589837, metadata !6, metadata !"st_ino", metadata !10, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 589846, metadata !12, metadata !"__ino64_t", metadata !12, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!16 = metadata !{i32 589837, metadata !6, metadata !"st_nlink", metadata !10, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ]
!17 = metadata !{i32 589846, metadata !12, metadata !"__nlink_t", metadata !12, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!18 = metadata !{i32 589837, metadata !6, metadata !"st_mode", metadata !10, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ]
!19 = metadata !{i32 589846, metadata !12, metadata !"__mode_t", metadata !12, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 589837, metadata !6, metadata !"st_uid", metadata !10, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 589846, metadata !12, metadata !"__uid_t", metadata !12, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 589837, metadata !6, metadata !"st_gid", metadata !10, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ]
!24 = metadata !{i32 589846, metadata !12, metadata !"__gid_t", metadata !12, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 589837, metadata !6, metadata !"__pad0", metadata !10, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 589837, metadata !6, metadata !"st_rdev", metadata !10, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ]
!28 = metadata !{i32 589837, metadata !6, metadata !"st_size", metadata !10, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 589846, metadata !12, metadata !"__off_t", metadata !12, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 589837, metadata !6, metadata !"st_blksize", metadata !10, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ]
!32 = metadata !{i32 589846, metadata !12, metadata !"__blksize_t", metadata !12, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!33 = metadata !{i32 589837, metadata !6, metadata !"st_blocks", metadata !10, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ]
!34 = metadata !{i32 589846, metadata !12, metadata !"__blkcnt64_t", metadata !12, i32 173, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 589837, metadata !6, metadata !"st_atim", metadata !10, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ]
!36 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !37, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !38, i32 0, null} ; [ DW_TAG_structure_type ]
!37 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!38 = metadata !{metadata !39, metadata !41}
!39 = metadata !{i32 589837, metadata !36, metadata !"tv_sec", metadata !37, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ]
!40 = metadata !{i32 589846, metadata !12, metadata !"__time_t", metadata !12, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!41 = metadata !{i32 589837, metadata !36, metadata !"tv_nsec", metadata !37, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ]
!42 = metadata !{i32 589837, metadata !6, metadata !"st_mtim", metadata !10, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ]
!43 = metadata !{i32 589837, metadata !6, metadata !"st_ctim", metadata !10, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !36} ; [ DW_TAG_member ]
!44 = metadata !{i32 589837, metadata !6, metadata !"__unused", metadata !10, i32 167, i64 192, i64 64, i64 960, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !30, metadata !46, i32 0, null} ; [ DW_TAG_array_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!48 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!49 = metadata !{i32 589843, metadata !1, metadata !"stat", metadata !10, i32 47, i64 1152, i64 64, i64 0, i32 0, null, metadata !50, i32 0, null} ; [ DW_TAG_structure_type ]
!50 = metadata !{metadata !51, metadata !52, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !64, metadata !65, metadata !66, metadata !67}
!51 = metadata !{i32 589837, metadata !49, metadata !"st_dev", metadata !10, i32 48, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!52 = metadata !{i32 589837, metadata !49, metadata !"st_ino", metadata !10, i32 53, i64 64, i64 64, i64 64, i32 0, metadata !53} ; [ DW_TAG_member ]
!53 = metadata !{i32 589846, metadata !12, metadata !"__ino_t", metadata !12, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!54 = metadata !{i32 589837, metadata !49, metadata !"st_nlink", metadata !10, i32 61, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ]
!55 = metadata !{i32 589837, metadata !49, metadata !"st_mode", metadata !10, i32 62, i64 32, i64 32, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ]
!56 = metadata !{i32 589837, metadata !49, metadata !"st_uid", metadata !10, i32 64, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ]
!57 = metadata !{i32 589837, metadata !49, metadata !"st_gid", metadata !10, i32 65, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ]
!58 = metadata !{i32 589837, metadata !49, metadata !"__pad0", metadata !10, i32 67, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ]
!59 = metadata !{i32 589837, metadata !49, metadata !"st_rdev", metadata !10, i32 69, i64 64, i64 64, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ]
!60 = metadata !{i32 589837, metadata !49, metadata !"st_size", metadata !10, i32 74, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ]
!61 = metadata !{i32 589837, metadata !49, metadata !"st_blksize", metadata !10, i32 78, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ]
!62 = metadata !{i32 589837, metadata !49, metadata !"st_blocks", metadata !10, i32 80, i64 64, i64 64, i64 512, i32 0, metadata !63} ; [ DW_TAG_member ]
!63 = metadata !{i32 589846, metadata !12, metadata !"__blkcnt_t", metadata !12, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!64 = metadata !{i32 589837, metadata !49, metadata !"st_atim", metadata !10, i32 91, i64 128, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ]
!65 = metadata !{i32 589837, metadata !49, metadata !"st_mtim", metadata !10, i32 92, i64 128, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ]
!66 = metadata !{i32 589837, metadata !49, metadata !"st_ctim", metadata !10, i32 93, i64 128, i64 64, i64 832, i32 0, metadata !36} ; [ DW_TAG_member ]
!67 = metadata !{i32 589837, metadata !49, metadata !"__unused", metadata !10, i32 106, i64 192, i64 64, i64 960, i32 0, metadata !45} ; [ DW_TAG_member ]
!68 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat64", metadata !"fstat64", metadata !"fstat64", metadata !1, i32 199, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @fstat64} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, null} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{metadata !26, metadata !26, metadata !5}
!71 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat", metadata !"fstat", metadata !"fstat", metadata !1, i32 106, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @fstat} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, null} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{metadata !26, metadata !26, metadata !48}
!74 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fxstat", metadata !"__fxstat", metadata !"__fxstat", metadata !1, i32 99, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.stat*)* @__fxstat} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, null} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !26, metadata !26, metadata !26, metadata !48}
!77 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat64", metadata !"lstat64", metadata !"lstat64", metadata !1, i32 194, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @lstat64} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, null} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !26, metadata !80, metadata !5}
!80 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ]
!81 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !82} ; [ DW_TAG_const_type ]
!82 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!83 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat", metadata !"lstat", metadata !"lstat", metadata !1, i32 92, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @lstat} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, null} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{metadata !26, metadata !80, metadata !48}
!86 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__lxstat", metadata !"__lxstat", metadata !"__lxstat", metadata !1, i32 85, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @__lxstat} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, null} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{metadata !26, metadata !26, metadata !80, metadata !48}
!89 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat64", metadata !"stat64", metadata !"stat64", metadata !1, i32 189, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @stat64} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat", metadata !"stat", metadata !"stat", metadata !1, i32 78, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @stat} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__xstat", metadata !"__xstat", metadata !"__xstat", metadata !1, i32 71, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @__xstat} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek64", metadata !"lseek64", metadata !"lseek64", metadata !1, i32 184, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek64} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, null} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{metadata !95, metadata !26, metadata !95, metadata !26}
!95 = metadata !{i32 589846, metadata !96, metadata !"off64_t", metadata !96, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!96 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!97 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek", metadata !"lseek", metadata !"lseek", metadata !1, i32 67, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, null} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !100, metadata !26, metadata !100, metadata !26}
!100 = metadata !{i32 589846, metadata !96, metadata !"off_t", metadata !96, i32 94, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!101 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open64", metadata !"open64", metadata !"open64", metadata !1, i32 169, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open64} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, null} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{metadata !26, metadata !80, metadata !26}
!104 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open", metadata !"open", metadata !"open", metadata !1, i32 53, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getdents", metadata !"getdents", metadata !"getdents", metadata !1, i32 142, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.dirent*, i64)* @getdents} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, null} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{metadata !108, metadata !26, metadata !109, metadata !123}
!108 = metadata !{i32 589846, metadata !96, metadata !"ssize_t", metadata !96, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!109 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ]
!110 = metadata !{i32 589843, metadata !1, metadata !"dirent", metadata !111, i32 24, i64 2240, i64 64, i64 0, i32 0, null, metadata !112, i32 0, null} ; [ DW_TAG_structure_type ]
!111 = metadata !{i32 589865, metadata !"dirent.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!112 = metadata !{metadata !113, metadata !114, metadata !115, metadata !117, metadata !119}
!113 = metadata !{i32 589837, metadata !110, metadata !"d_ino", metadata !111, i32 26, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ]
!114 = metadata !{i32 589837, metadata !110, metadata !"d_off", metadata !111, i32 27, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ]
!115 = metadata !{i32 589837, metadata !110, metadata !"d_reclen", metadata !111, i32 32, i64 16, i64 16, i64 128, i32 0, metadata !116} ; [ DW_TAG_member ]
!116 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!117 = metadata !{i32 589837, metadata !110, metadata !"d_type", metadata !111, i32 33, i64 8, i64 8, i64 144, i32 0, metadata !118} ; [ DW_TAG_member ]
!118 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!119 = metadata !{i32 589837, metadata !110, metadata !"d_name", metadata !111, i32 34, i64 2048, i64 8, i64 152, i32 0, metadata !120} ; [ DW_TAG_member ]
!120 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !82, metadata !121, i32 0, null} ; [ DW_TAG_array_type ]
!121 = metadata !{metadata !122}
!122 = metadata !{i32 589857, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!123 = metadata !{i32 589846, metadata !96, metadata !"size_t", metadata !96, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!124 = metadata !{i32 589870, i32 0, metadata !1, metadata !"statfs", metadata !"statfs", metadata !"statfs", metadata !1, i32 117, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @statfs} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, null} ; [ DW_TAG_subroutine_type ]
!126 = metadata !{metadata !26, metadata !80, metadata !127}
!127 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ]
!128 = metadata !{i32 589843, metadata !1, metadata !"statfs", metadata !129, i32 26, i64 960, i64 64, i64 0, i32 0, null, metadata !130, i32 0, null} ; [ DW_TAG_structure_type ]
!129 = metadata !{i32 589865, metadata !"statfs.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !135, metadata !136, metadata !137, metadata !139, metadata !140, metadata !148, metadata !149, metadata !150, metadata !151}
!131 = metadata !{i32 589837, metadata !128, metadata !"f_type", metadata !129, i32 27, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ]
!132 = metadata !{i32 589837, metadata !128, metadata !"f_bsize", metadata !129, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ]
!133 = metadata !{i32 589837, metadata !128, metadata !"f_blocks", metadata !129, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !134} ; [ DW_TAG_member ]
!134 = metadata !{i32 589846, metadata !12, metadata !"__fsblkcnt_t", metadata !12, i32 174, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!135 = metadata !{i32 589837, metadata !128, metadata !"f_bfree", metadata !129, i32 31, i64 64, i64 64, i64 192, i32 0, metadata !134} ; [ DW_TAG_member ]
!136 = metadata !{i32 589837, metadata !128, metadata !"f_bavail", metadata !129, i32 32, i64 64, i64 64, i64 256, i32 0, metadata !134} ; [ DW_TAG_member ]
!137 = metadata !{i32 589837, metadata !128, metadata !"f_files", metadata !129, i32 33, i64 64, i64 64, i64 320, i32 0, metadata !138} ; [ DW_TAG_member ]
!138 = metadata !{i32 589846, metadata !12, metadata !"__fsfilcnt_t", metadata !12, i32 178, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!139 = metadata !{i32 589837, metadata !128, metadata !"f_ffree", metadata !129, i32 34, i64 64, i64 64, i64 384, i32 0, metadata !138} ; [ DW_TAG_member ]
!140 = metadata !{i32 589837, metadata !128, metadata !"f_fsid", metadata !129, i32 42, i64 64, i64 32, i64 448, i32 0, metadata !141} ; [ DW_TAG_member ]
!141 = metadata !{i32 589846, metadata !12, metadata !"__fsid_t", metadata !12, i32 145, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ]
!142 = metadata !{i32 589843, metadata !1, metadata !"", metadata !12, i32 144, i64 64, i64 32, i64 0, i32 0, null, metadata !143, i32 0, null} ; [ DW_TAG_structure_type ]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 589837, metadata !142, metadata !"__val", metadata !12, i32 144, i64 64, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_member ]
!145 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !26, metadata !146, i32 0, null} ; [ DW_TAG_array_type ]
!146 = metadata !{metadata !147}
!147 = metadata !{i32 589857, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!148 = metadata !{i32 589837, metadata !128, metadata !"f_namelen", metadata !129, i32 43, i64 64, i64 64, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ]
!149 = metadata !{i32 589837, metadata !128, metadata !"f_frsize", metadata !129, i32 44, i64 64, i64 64, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ]
!150 = metadata !{i32 589837, metadata !128, metadata !"f_flags", metadata !129, i32 45, i64 64, i64 64, i64 640, i32 0, metadata !30} ; [ DW_TAG_member ]
!151 = metadata !{i32 589837, metadata !128, metadata !"f_spare", metadata !129, i32 46, i64 256, i64 64, i64 704, i32 0, metadata !152} ; [ DW_TAG_member ]
!152 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 64, i64 0, i32 0, metadata !30, metadata !153, i32 0, null} ; [ DW_TAG_array_type ]
!153 = metadata !{metadata !154}
!154 = metadata !{i32 589857, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!155 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ftruncate", metadata !"ftruncate", metadata !"ftruncate", metadata !1, i32 113, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @ftruncate} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, null} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{metadata !26, metadata !26, metadata !100}
!158 = metadata !{i32 590081, metadata !0, metadata !"a", metadata !1, i32 30, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 590081, metadata !0, metadata !"b", metadata !1, i32 30, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 590081, metadata !68, metadata !"fd", metadata !1, i32 199, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 590081, metadata !68, metadata !"buf", metadata !1, i32 199, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 590081, metadata !71, metadata !"fd", metadata !1, i32 106, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 590081, metadata !71, metadata !"buf", metadata !1, i32 106, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 590080, metadata !165, metadata !"tmp", metadata !1, i32 107, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 589835, metadata !71, i32 106, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 590080, metadata !165, metadata !"res", metadata !1, i32 108, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 590081, metadata !74, metadata !"vers", metadata !1, i32 99, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 590081, metadata !74, metadata !"fd", metadata !1, i32 99, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 590081, metadata !74, metadata !"buf", metadata !1, i32 99, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 590080, metadata !171, metadata !"tmp", metadata !1, i32 100, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 589835, metadata !74, i32 99, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 590080, metadata !171, metadata !"res", metadata !1, i32 101, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 590081, metadata !77, metadata !"path", metadata !1, i32 194, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 590081, metadata !77, metadata !"buf", metadata !1, i32 194, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 590081, metadata !83, metadata !"path", metadata !1, i32 92, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 590081, metadata !83, metadata !"buf", metadata !1, i32 92, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 590080, metadata !178, metadata !"tmp", metadata !1, i32 93, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 589835, metadata !83, i32 92, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 590080, metadata !178, metadata !"res", metadata !1, i32 94, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 590081, metadata !86, metadata !"vers", metadata !1, i32 85, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 590081, metadata !86, metadata !"path", metadata !1, i32 85, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 590081, metadata !86, metadata !"buf", metadata !1, i32 85, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!183 = metadata !{i32 590080, metadata !184, metadata !"tmp", metadata !1, i32 86, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 589835, metadata !86, i32 85, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 590080, metadata !184, metadata !"res", metadata !1, i32 87, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 590081, metadata !89, metadata !"path", metadata !1, i32 189, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 590081, metadata !89, metadata !"buf", metadata !1, i32 189, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 590081, metadata !90, metadata !"path", metadata !1, i32 78, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 590081, metadata !90, metadata !"buf", metadata !1, i32 78, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!190 = metadata !{i32 590080, metadata !191, metadata !"tmp", metadata !1, i32 79, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 589835, metadata !90, i32 78, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 590080, metadata !191, metadata !"res", metadata !1, i32 80, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 590081, metadata !91, metadata !"vers", metadata !1, i32 71, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 590081, metadata !91, metadata !"path", metadata !1, i32 71, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 590081, metadata !91, metadata !"buf", metadata !1, i32 71, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!196 = metadata !{i32 590080, metadata !197, metadata !"tmp", metadata !1, i32 72, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 589835, metadata !91, i32 71, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 590080, metadata !197, metadata !"res", metadata !1, i32 73, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 590081, metadata !92, metadata !"fd", metadata !1, i32 184, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 590081, metadata !92, metadata !"off", metadata !1, i32 184, metadata !95, i32 0} ; [ DW_TAG_arg_variable ]
!201 = metadata !{i32 590081, metadata !92, metadata !"whence", metadata !1, i32 184, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 590081, metadata !97, metadata !"fd", metadata !1, i32 67, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!203 = metadata !{i32 590081, metadata !97, metadata !"off", metadata !1, i32 67, metadata !100, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 590081, metadata !97, metadata !"whence", metadata !1, i32 67, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 590081, metadata !101, metadata !"pathname", metadata !1, i32 169, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 590081, metadata !101, metadata !"flags", metadata !1, i32 169, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!207 = metadata !{i32 590080, metadata !208, metadata !"mode", metadata !1, i32 170, metadata !209, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 589835, metadata !101, i32 169, i32 0, metadata !1, i32 12} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 589846, metadata !96, metadata !"mode_t", metadata !96, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!210 = metadata !{i32 590080, metadata !211, metadata !"ap", metadata !1, i32 174, metadata !212, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 589835, metadata !208, i32 175, i32 0, metadata !1, i32 13} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 589846, metadata !213, metadata !"va_list", metadata !213, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ]
!213 = metadata !{i32 589865, metadata !"stdio.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!214 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !215, metadata !223, i32 0, null} ; [ DW_TAG_array_type ]
!215 = metadata !{i32 589843, metadata !1, metadata !"__va_list_tag", metadata !216, i32 0, i64 192, i64 64, i64 0, i32 0, null, metadata !217, i32 0, null} ; [ DW_TAG_structure_type ]
!216 = metadata !{i32 589865, metadata !"<built-in>", metadata !"/home/xqx/projects/zesti-test/zesti/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!217 = metadata !{metadata !218, metadata !219, metadata !220, metadata !222}
!218 = metadata !{i32 589837, metadata !215, metadata !"gp_offset", metadata !216, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!219 = metadata !{i32 589837, metadata !215, metadata !"fp_offset", metadata !216, i32 0, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ]
!220 = metadata !{i32 589837, metadata !215, metadata !"overflow_arg_area", metadata !216, i32 0, i64 64, i64 64, i64 64, i32 0, metadata !221} ; [ DW_TAG_member ]
!221 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!222 = metadata !{i32 589837, metadata !215, metadata !"reg_save_area", metadata !216, i32 0, i64 64, i64 64, i64 128, i32 0, metadata !221} ; [ DW_TAG_member ]
!223 = metadata !{metadata !224}
!224 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!225 = metadata !{i32 590081, metadata !104, metadata !"pathname", metadata !1, i32 53, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!226 = metadata !{i32 590081, metadata !104, metadata !"flags", metadata !1, i32 53, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!227 = metadata !{i32 590080, metadata !228, metadata !"mode", metadata !1, i32 54, metadata !209, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 589835, metadata !104, i32 53, i32 0, metadata !1, i32 14} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 590080, metadata !230, metadata !"ap", metadata !1, i32 58, metadata !212, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 589835, metadata !228, i32 59, i32 0, metadata !1, i32 15} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 590081, metadata !105, metadata !"fd", metadata !1, i32 142, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!232 = metadata !{i32 590081, metadata !105, metadata !"dirp", metadata !1, i32 142, metadata !109, i32 0} ; [ DW_TAG_arg_variable ]
!233 = metadata !{i32 590081, metadata !105, metadata !"nbytes", metadata !1, i32 142, metadata !123, i32 0} ; [ DW_TAG_arg_variable ]
!234 = metadata !{i32 590080, metadata !235, metadata !"dp64", metadata !1, i32 143, metadata !236, i32 0} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 589835, metadata !105, i32 142, i32 0, metadata !1, i32 16} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ]
!237 = metadata !{i32 589843, metadata !1, metadata !"dirent64", metadata !111, i32 39, i64 2240, i64 64, i64 0, i32 0, null, metadata !238, i32 0, null} ; [ DW_TAG_structure_type ]
!238 = metadata !{metadata !239, metadata !240, metadata !242, metadata !243, metadata !244}
!239 = metadata !{i32 589837, metadata !237, metadata !"d_ino", metadata !111, i32 40, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!240 = metadata !{i32 589837, metadata !237, metadata !"d_off", metadata !111, i32 41, i64 64, i64 64, i64 64, i32 0, metadata !241} ; [ DW_TAG_member ]
!241 = metadata !{i32 589846, metadata !12, metadata !"__off64_t", metadata !12, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!242 = metadata !{i32 589837, metadata !237, metadata !"d_reclen", metadata !111, i32 42, i64 16, i64 16, i64 128, i32 0, metadata !116} ; [ DW_TAG_member ]
!243 = metadata !{i32 589837, metadata !237, metadata !"d_type", metadata !111, i32 43, i64 8, i64 8, i64 144, i32 0, metadata !118} ; [ DW_TAG_member ]
!244 = metadata !{i32 589837, metadata !237, metadata !"d_name", metadata !111, i32 44, i64 2048, i64 8, i64 152, i32 0, metadata !120} ; [ DW_TAG_member ]
!245 = metadata !{i32 590080, metadata !235, metadata !"res", metadata !1, i32 144, metadata !108, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 590080, metadata !247, metadata !"end", metadata !1, i32 147, metadata !236, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 589835, metadata !235, i32 147, i32 0, metadata !1, i32 17} ; [ DW_TAG_lexical_block ]
!248 = metadata !{i32 590080, metadata !249, metadata !"dp", metadata !1, i32 149, metadata !109, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 589835, metadata !247, i32 149, i32 0, metadata !1, i32 18} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 590080, metadata !249, metadata !"name_len", metadata !1, i32 150, metadata !123, i32 0} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 590081, metadata !124, metadata !"path", metadata !1, i32 117, metadata !80, i32 0} ; [ DW_TAG_arg_variable ]
!252 = metadata !{i32 590081, metadata !124, metadata !"buf32", metadata !1, i32 117, metadata !127, i32 0} ; [ DW_TAG_arg_variable ]
!253 = metadata !{i32 590081, metadata !155, metadata !"fd", metadata !1, i32 113, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!254 = metadata !{i32 590081, metadata !155, metadata !"length", metadata !1, i32 113, metadata !100, i32 0} ; [ DW_TAG_arg_variable ]
!255 = metadata !{i32 53, i32 0, metadata !104, null}
!256 = metadata !{i32 0}
!257 = metadata !{i32 54, i32 0, metadata !228, null}
!258 = metadata !{i32 56, i32 0, metadata !228, null}
!259 = metadata !{i32 58, i32 0, metadata !230, null}
!260 = metadata !{i32 59, i32 0, metadata !230, null}
!261 = metadata !{i32 60, i32 0, metadata !230, null}
!262 = metadata !{i32 61, i32 0, metadata !230, null}
!263 = metadata !{i32 64, i32 0, metadata !228, null}
!264 = metadata !{i32 199, i32 0, metadata !68, null}
!265 = metadata !{i32 200, i32 0, metadata !266, null}
!266 = metadata !{i32 589835, metadata !68, i32 199, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 106, i32 0, metadata !71, null}
!268 = metadata !{i32 107, i32 0, metadata !165, null}
!269 = metadata !{i32 108, i32 0, metadata !165, null}
!270 = metadata !{i32 30, i32 0, metadata !0, metadata !271}
!271 = metadata !{i32 109, i32 0, metadata !165, null}
!272 = metadata !{i32 31, i32 0, metadata !273, metadata !271}
!273 = metadata !{i32 589835, metadata !0, i32 30, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 32, i32 0, metadata !273, metadata !271}
!275 = metadata !{i32 33, i32 0, metadata !273, metadata !271}
!276 = metadata !{i32 34, i32 0, metadata !273, metadata !271}
!277 = metadata !{i32 35, i32 0, metadata !273, metadata !271}
!278 = metadata !{i32 36, i32 0, metadata !273, metadata !271}
!279 = metadata !{i32 37, i32 0, metadata !273, metadata !271}
!280 = metadata !{i32 38, i32 0, metadata !273, metadata !271}
!281 = metadata !{i32 39, i32 0, metadata !273, metadata !271}
!282 = metadata !{i32 40, i32 0, metadata !273, metadata !271}
!283 = metadata !{i32 41, i32 0, metadata !273, metadata !271}
!284 = metadata !{i32 42, i32 0, metadata !273, metadata !271}
!285 = metadata !{i32 43, i32 0, metadata !273, metadata !271}
!286 = metadata !{i32 45, i32 0, metadata !273, metadata !271}
!287 = metadata !{i32 46, i32 0, metadata !273, metadata !271}
!288 = metadata !{i32 47, i32 0, metadata !273, metadata !271}
!289 = metadata !{i32 110, i32 0, metadata !165, null}
!290 = metadata !{i32 99, i32 0, metadata !74, null}
!291 = metadata !{i32 100, i32 0, metadata !171, null}
!292 = metadata !{i32 101, i32 0, metadata !171, null}
!293 = metadata !{i32 30, i32 0, metadata !0, metadata !294}
!294 = metadata !{i32 102, i32 0, metadata !171, null}
!295 = metadata !{i32 31, i32 0, metadata !273, metadata !294}
!296 = metadata !{i32 32, i32 0, metadata !273, metadata !294}
!297 = metadata !{i32 33, i32 0, metadata !273, metadata !294}
!298 = metadata !{i32 34, i32 0, metadata !273, metadata !294}
!299 = metadata !{i32 35, i32 0, metadata !273, metadata !294}
!300 = metadata !{i32 36, i32 0, metadata !273, metadata !294}
!301 = metadata !{i32 37, i32 0, metadata !273, metadata !294}
!302 = metadata !{i32 38, i32 0, metadata !273, metadata !294}
!303 = metadata !{i32 39, i32 0, metadata !273, metadata !294}
!304 = metadata !{i32 40, i32 0, metadata !273, metadata !294}
!305 = metadata !{i32 41, i32 0, metadata !273, metadata !294}
!306 = metadata !{i32 42, i32 0, metadata !273, metadata !294}
!307 = metadata !{i32 43, i32 0, metadata !273, metadata !294}
!308 = metadata !{i32 45, i32 0, metadata !273, metadata !294}
!309 = metadata !{i32 46, i32 0, metadata !273, metadata !294}
!310 = metadata !{i32 47, i32 0, metadata !273, metadata !294}
!311 = metadata !{i32 103, i32 0, metadata !171, null}
!312 = metadata !{i32 194, i32 0, metadata !77, null}
!313 = metadata !{i32 195, i32 0, metadata !314, null}
!314 = metadata !{i32 589835, metadata !77, i32 194, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!315 = metadata !{i32 92, i32 0, metadata !83, null}
!316 = metadata !{i32 93, i32 0, metadata !178, null}
!317 = metadata !{i32 94, i32 0, metadata !178, null}
!318 = metadata !{i32 30, i32 0, metadata !0, metadata !319}
!319 = metadata !{i32 95, i32 0, metadata !178, null}
!320 = metadata !{i32 31, i32 0, metadata !273, metadata !319}
!321 = metadata !{i32 32, i32 0, metadata !273, metadata !319}
!322 = metadata !{i32 33, i32 0, metadata !273, metadata !319}
!323 = metadata !{i32 34, i32 0, metadata !273, metadata !319}
!324 = metadata !{i32 35, i32 0, metadata !273, metadata !319}
!325 = metadata !{i32 36, i32 0, metadata !273, metadata !319}
!326 = metadata !{i32 37, i32 0, metadata !273, metadata !319}
!327 = metadata !{i32 38, i32 0, metadata !273, metadata !319}
!328 = metadata !{i32 39, i32 0, metadata !273, metadata !319}
!329 = metadata !{i32 40, i32 0, metadata !273, metadata !319}
!330 = metadata !{i32 41, i32 0, metadata !273, metadata !319}
!331 = metadata !{i32 42, i32 0, metadata !273, metadata !319}
!332 = metadata !{i32 43, i32 0, metadata !273, metadata !319}
!333 = metadata !{i32 45, i32 0, metadata !273, metadata !319}
!334 = metadata !{i32 46, i32 0, metadata !273, metadata !319}
!335 = metadata !{i32 47, i32 0, metadata !273, metadata !319}
!336 = metadata !{i32 96, i32 0, metadata !178, null}
!337 = metadata !{i32 85, i32 0, metadata !86, null}
!338 = metadata !{i32 86, i32 0, metadata !184, null}
!339 = metadata !{i32 87, i32 0, metadata !184, null}
!340 = metadata !{i32 30, i32 0, metadata !0, metadata !341}
!341 = metadata !{i32 88, i32 0, metadata !184, null}
!342 = metadata !{i32 31, i32 0, metadata !273, metadata !341}
!343 = metadata !{i32 32, i32 0, metadata !273, metadata !341}
!344 = metadata !{i32 33, i32 0, metadata !273, metadata !341}
!345 = metadata !{i32 34, i32 0, metadata !273, metadata !341}
!346 = metadata !{i32 35, i32 0, metadata !273, metadata !341}
!347 = metadata !{i32 36, i32 0, metadata !273, metadata !341}
!348 = metadata !{i32 37, i32 0, metadata !273, metadata !341}
!349 = metadata !{i32 38, i32 0, metadata !273, metadata !341}
!350 = metadata !{i32 39, i32 0, metadata !273, metadata !341}
!351 = metadata !{i32 40, i32 0, metadata !273, metadata !341}
!352 = metadata !{i32 41, i32 0, metadata !273, metadata !341}
!353 = metadata !{i32 42, i32 0, metadata !273, metadata !341}
!354 = metadata !{i32 43, i32 0, metadata !273, metadata !341}
!355 = metadata !{i32 45, i32 0, metadata !273, metadata !341}
!356 = metadata !{i32 46, i32 0, metadata !273, metadata !341}
!357 = metadata !{i32 47, i32 0, metadata !273, metadata !341}
!358 = metadata !{i32 89, i32 0, metadata !184, null}
!359 = metadata !{i32 189, i32 0, metadata !89, null}
!360 = metadata !{i32 190, i32 0, metadata !361, null}
!361 = metadata !{i32 589835, metadata !89, i32 189, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!362 = metadata !{i32 78, i32 0, metadata !90, null}
!363 = metadata !{i32 79, i32 0, metadata !191, null}
!364 = metadata !{i32 80, i32 0, metadata !191, null}
!365 = metadata !{i32 30, i32 0, metadata !0, metadata !366}
!366 = metadata !{i32 81, i32 0, metadata !191, null}
!367 = metadata !{i32 31, i32 0, metadata !273, metadata !366}
!368 = metadata !{i32 32, i32 0, metadata !273, metadata !366}
!369 = metadata !{i32 33, i32 0, metadata !273, metadata !366}
!370 = metadata !{i32 34, i32 0, metadata !273, metadata !366}
!371 = metadata !{i32 35, i32 0, metadata !273, metadata !366}
!372 = metadata !{i32 36, i32 0, metadata !273, metadata !366}
!373 = metadata !{i32 37, i32 0, metadata !273, metadata !366}
!374 = metadata !{i32 38, i32 0, metadata !273, metadata !366}
!375 = metadata !{i32 39, i32 0, metadata !273, metadata !366}
!376 = metadata !{i32 40, i32 0, metadata !273, metadata !366}
!377 = metadata !{i32 41, i32 0, metadata !273, metadata !366}
!378 = metadata !{i32 42, i32 0, metadata !273, metadata !366}
!379 = metadata !{i32 43, i32 0, metadata !273, metadata !366}
!380 = metadata !{i32 45, i32 0, metadata !273, metadata !366}
!381 = metadata !{i32 46, i32 0, metadata !273, metadata !366}
!382 = metadata !{i32 47, i32 0, metadata !273, metadata !366}
!383 = metadata !{i32 82, i32 0, metadata !191, null}
!384 = metadata !{i32 71, i32 0, metadata !91, null}
!385 = metadata !{i32 72, i32 0, metadata !197, null}
!386 = metadata !{i32 73, i32 0, metadata !197, null}
!387 = metadata !{i32 30, i32 0, metadata !0, metadata !388}
!388 = metadata !{i32 74, i32 0, metadata !197, null}
!389 = metadata !{i32 31, i32 0, metadata !273, metadata !388}
!390 = metadata !{i32 32, i32 0, metadata !273, metadata !388}
!391 = metadata !{i32 33, i32 0, metadata !273, metadata !388}
!392 = metadata !{i32 34, i32 0, metadata !273, metadata !388}
!393 = metadata !{i32 35, i32 0, metadata !273, metadata !388}
!394 = metadata !{i32 36, i32 0, metadata !273, metadata !388}
!395 = metadata !{i32 37, i32 0, metadata !273, metadata !388}
!396 = metadata !{i32 38, i32 0, metadata !273, metadata !388}
!397 = metadata !{i32 39, i32 0, metadata !273, metadata !388}
!398 = metadata !{i32 40, i32 0, metadata !273, metadata !388}
!399 = metadata !{i32 41, i32 0, metadata !273, metadata !388}
!400 = metadata !{i32 42, i32 0, metadata !273, metadata !388}
!401 = metadata !{i32 43, i32 0, metadata !273, metadata !388}
!402 = metadata !{i32 45, i32 0, metadata !273, metadata !388}
!403 = metadata !{i32 46, i32 0, metadata !273, metadata !388}
!404 = metadata !{i32 47, i32 0, metadata !273, metadata !388}
!405 = metadata !{i32 75, i32 0, metadata !197, null}
!406 = metadata !{i32 184, i32 0, metadata !92, null}
!407 = metadata !{i32 185, i32 0, metadata !408, null}
!408 = metadata !{i32 589835, metadata !92, i32 184, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!409 = metadata !{i32 67, i32 0, metadata !97, null}
!410 = metadata !{i32 68, i32 0, metadata !411, null}
!411 = metadata !{i32 589835, metadata !97, i32 67, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!412 = metadata !{i32 169, i32 0, metadata !101, null}
!413 = metadata !{i32 170, i32 0, metadata !208, null}
!414 = metadata !{i32 172, i32 0, metadata !208, null}
!415 = metadata !{i32 174, i32 0, metadata !211, null}
!416 = metadata !{i32 175, i32 0, metadata !211, null}
!417 = metadata !{i32 176, i32 0, metadata !211, null}
!418 = metadata !{i32 177, i32 0, metadata !211, null}
!419 = metadata !{i32 180, i32 0, metadata !208, null}
!420 = metadata !{i32 142, i32 0, metadata !105, null}
!421 = metadata !{i32 143, i32 0, metadata !235, null}
!422 = metadata !{i32 144, i32 0, metadata !235, null}
!423 = metadata !{i32 146, i32 0, metadata !235, null}
!424 = metadata !{i32 147, i32 0, metadata !247, null}
!425 = metadata !{i32 148, i32 0, metadata !247, null}
!426 = metadata !{i32 151, i32 0, metadata !249, null}
!427 = metadata !{i32 157, i32 0, metadata !249, null}
!428 = metadata !{i32 161, i32 0, metadata !235, null}
!429 = metadata !{i32 117, i32 0, metadata !124, null}
!430 = metadata !{i32 136, i32 0, metadata !431, null}
!431 = metadata !{i32 589835, metadata !124, i32 117, i32 0, metadata !1, i32 19} ; [ DW_TAG_lexical_block ]
!432 = metadata !{i32 113, i32 0, metadata !155, null}
!433 = metadata !{i32 114, i32 0, metadata !434, null}
!434 = metadata !{i32 589835, metadata !155, i32 113, i32 0, metadata !1, i32 20} ; [ DW_TAG_lexical_block ]
