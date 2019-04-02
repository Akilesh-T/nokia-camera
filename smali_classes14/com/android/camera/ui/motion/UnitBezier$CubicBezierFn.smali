.class Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;
.super Ljava/lang/Object;
.source "UnitBezier.java"

# interfaces
.implements Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/motion/UnitBezier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CubicBezierFn"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "c0"    # F
    .param p2, "c1"    # F

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    mul-float v0, v1, p1

    iput v0, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->c:F

    .line 146
    sub-float v0, p2, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->c:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->b:F

    .line 147
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->c:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->a:F

    .line 148
    return-void
.end method


# virtual methods
.method public derivative(F)F
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 154
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->a:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->c:F

    add-float/2addr v0, v1

    return v0
.end method

.method public value(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 151
    iget v0, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->a:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->b:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;->c:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method
