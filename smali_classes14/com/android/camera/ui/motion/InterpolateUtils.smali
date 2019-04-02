.class public Lcom/android/camera/ui/motion/InterpolateUtils;
.super Ljava/lang/Object;
.source "InterpolateUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "v0"    # F
    .param p1, "v1"    # F
    .param p2, "t"    # F

    .prologue
    .line 36
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static scale(FFFFF)F
    .locals 2
    .param p0, "v"    # F
    .param p1, "vMin"    # F
    .param p2, "vMax"    # F
    .param p3, "pMin"    # F
    .param p4, "pMax"    # F

    .prologue
    .line 52
    sub-float v0, p4, p3

    sub-float v1, p0, p1

    mul-float/2addr v0, v1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method public static unitRatio(JJF)F
    .locals 2
    .param p0, "t"    # J
    .param p2, "tBegin"    # J
    .param p4, "tDuration"    # F

    .prologue
    .line 60
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    sub-long v0, p0, p2

    long-to-float v0, v0

    div-float/2addr v0, p4

    goto :goto_0
.end method
