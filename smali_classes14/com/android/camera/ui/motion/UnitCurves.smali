.class public Lcom/android/camera/ui/motion/UnitCurves;
.super Ljava/lang/Object;
.source "UnitCurves.java"


# static fields
.field public static final FAST_OUT_LINEAR_IN:Lcom/android/camera/ui/motion/UnitCurve;

.field public static final FAST_OUT_SLOW_IN:Lcom/android/camera/ui/motion/UnitCurve;

.field public static final LINEAR:Lcom/android/camera/ui/motion/UnitCurve;

.field public static final LINEAR_OUT_SLOW_IN:Lcom/android/camera/ui/motion/UnitCurve;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 23
    new-instance v0, Lcom/android/camera/ui/motion/UnitBezier;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/android/camera/ui/motion/UnitBezier;-><init>(FFFF)V

    sput-object v0, Lcom/android/camera/ui/motion/UnitCurves;->FAST_OUT_SLOW_IN:Lcom/android/camera/ui/motion/UnitCurve;

    .line 24
    new-instance v0, Lcom/android/camera/ui/motion/UnitBezier;

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/android/camera/ui/motion/UnitBezier;-><init>(FFFF)V

    sput-object v0, Lcom/android/camera/ui/motion/UnitCurves;->LINEAR_OUT_SLOW_IN:Lcom/android/camera/ui/motion/UnitCurve;

    .line 25
    new-instance v0, Lcom/android/camera/ui/motion/UnitBezier;

    invoke-direct {v0, v4, v1, v2, v2}, Lcom/android/camera/ui/motion/UnitBezier;-><init>(FFFF)V

    sput-object v0, Lcom/android/camera/ui/motion/UnitCurves;->FAST_OUT_LINEAR_IN:Lcom/android/camera/ui/motion/UnitCurve;

    .line 26
    new-instance v0, Lcom/android/camera/ui/motion/UnitBezier;

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/android/camera/ui/motion/UnitBezier;-><init>(FFFF)V

    sput-object v0, Lcom/android/camera/ui/motion/UnitCurves;->LINEAR:Lcom/android/camera/ui/motion/UnitCurve;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapEnterCurveToExitCurveAtT(Lcom/android/camera/ui/motion/UnitCurve;Lcom/android/camera/ui/motion/UnitCurve;F)F
    .locals 2
    .param p0, "enterCurve"    # Lcom/android/camera/ui/motion/UnitCurve;
    .param p1, "exitCurve"    # Lcom/android/camera/ui/motion/UnitCurve;
    .param p2, "t"    # F

    .prologue
    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0, p2}, Lcom/android/camera/ui/motion/UnitCurve;->valueAt(F)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/android/camera/ui/motion/UnitCurve;->tAt(F)F

    move-result v0

    return v0
.end method
