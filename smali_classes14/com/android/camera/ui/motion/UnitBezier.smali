.class public Lcom/android/camera/ui/motion/UnitBezier;
.super Ljava/lang/Object;
.source "UnitBezier.java"

# interfaces
.implements Lcom/android/camera/ui/motion/UnitCurve;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;,
        Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 1.0E-6f


# instance fields
.field private final mXFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

.field private final mYFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "c0x"    # F
    .param p2, "c0y"    # F
    .param p3, "c1x"    # F
    .param p4, "c1y"    # F

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;

    invoke-direct {v0, p1, p3}, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/motion/UnitBezier;->mXFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    .line 47
    new-instance v0, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;

    invoke-direct {v0, p2, p4}, Lcom/android/camera/ui/motion/UnitBezier$CubicBezierFn;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/motion/UnitBezier;->mYFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    .line 48
    return-void
.end method

.method private solve(FLcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;)F
    .locals 9
    .param p1, "target"    # F
    .param p2, "fn"    # Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    .prologue
    const v8, 0x358637bd    # 1.0E-6f

    .line 77
    move v2, p1

    .line 80
    .local v2, "input":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v1, v6, :cond_2

    .line 81
    invoke-interface {p2, v2}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->value(F)F

    move-result v6

    sub-float v5, v6, p1

    .line 82
    .local v5, "value":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    move v4, v2

    .line 120
    .end local v5    # "value":F
    :cond_0
    :goto_1
    return v4

    .line 85
    .restart local v5    # "value":F
    :cond_1
    invoke-interface {p2, v2}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->derivative(F)F

    move-result v0

    .line 86
    .local v0, "derivative":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    .line 93
    .end local v0    # "derivative":F
    .end local v5    # "value":F
    :cond_2
    const/4 v4, 0x0

    .line 94
    .local v4, "min":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 95
    .local v3, "max":F
    move v2, p1

    .line 97
    cmpg-float v6, v2, v4

    if-ltz v6, :cond_0

    .line 100
    cmpl-float v6, v2, v3

    if-lez v6, :cond_5

    move v4, v3

    .line 101
    goto :goto_1

    .line 89
    .end local v3    # "max":F
    .end local v4    # "min":F
    .restart local v0    # "derivative":F
    .restart local v5    # "value":F
    :cond_3
    div-float v6, v5, v0

    sub-float/2addr v2, v6

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "derivative":F
    .restart local v3    # "max":F
    .restart local v4    # "min":F
    :cond_4
    cmpl-float v6, p1, v5

    if-lez v6, :cond_6

    .line 111
    move v4, v2

    .line 116
    :goto_2
    sub-float v6, v3, v4

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    add-float v2, v6, v4

    .line 104
    .end local v5    # "value":F
    :cond_5
    cmpg-float v6, v4, v3

    if-gez v6, :cond_7

    .line 105
    invoke-interface {p2, v2}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->value(F)F

    move-result v5

    .line 106
    .restart local v5    # "value":F
    sub-float v6, v5, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    move v4, v2

    .line 107
    goto :goto_1

    .line 113
    :cond_6
    move v3, v2

    goto :goto_2

    .end local v5    # "value":F
    :cond_7
    move v4, v2

    .line 120
    goto :goto_1
.end method


# virtual methods
.method public tAt(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/motion/UnitBezier;->mXFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    iget-object v1, p0, Lcom/android/camera/ui/motion/UnitBezier;->mYFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/motion/UnitBezier;->solve(FLcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->value(F)F

    move-result v0

    return v0
.end method

.method public valueAt(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/motion/UnitBezier;->mYFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    iget-object v1, p0, Lcom/android/camera/ui/motion/UnitBezier;->mXFn:Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/motion/UnitBezier;->solve(FLcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/motion/UnitBezier$DerivableFloatFn;->value(F)F

    move-result v0

    return v0
.end method
