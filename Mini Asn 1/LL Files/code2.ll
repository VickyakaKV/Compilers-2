; ModuleID = 'code2.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %prime = alloca i64, align 8
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call double @pow(double 1.000000e+01, double 9.000000e+00) #2
  %4 = fadd double %3, 7.000000e+00
  %5 = fptosi double %4 to i64
  store i64 %5, i64* %prime, align 8
  %6 = call double @pow(double 1.000000e+01, double 6.000000e+00) #2
  %7 = fptosi double %6 to i64
  %8 = add nsw i64 %7, 1
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i64, i64 %8, align 16
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 1, i64* %11, align 16
  store i32 1, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %32, %0
  %13 = load i32, i32* %i, align 4
  %14 = sitofp i32 %13 to double
  %15 = call double @pow(double 1.000000e+01, double 6.000000e+00) #2
  %16 = fcmp ole double %14, %15
  br i1 %16, label %17, label %35

; <label>:17                                      ; preds = %12
  %18 = load i32, i32* %i, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %10, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %i, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %22, %25
  %27 = load i64, i64* %prime, align 8
  %28 = srem i64 %26, %27
  %29 = load i32, i32* %i, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %10, i64 %30
  store i64 %28, i64* %31, align 8
  br label %32

; <label>:32                                      ; preds = %17
  %33 = load i32, i32* %i, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %i, align 4
  br label %12

; <label>:35                                      ; preds = %12
  %36 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %t)
  br label %37

; <label>:37                                      ; preds = %41, %35
  %38 = load i32, i32* %t, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %t, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %49

; <label>:41                                      ; preds = %37
  %42 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %n)
  %43 = load i32, i32* %n, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %10, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 %47)
  br label %37

; <label>:49                                      ; preds = %37
  store i32 0, i32* %1, align 4
  %50 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @__isoc99_scanf(i8*, ...) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
