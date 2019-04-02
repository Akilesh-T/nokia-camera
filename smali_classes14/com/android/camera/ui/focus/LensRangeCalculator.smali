.class public Lcom/android/camera/ui/focus/LensRangeCalculator;
.super Ljava/lang/Object;
.source "LensRangeCalculator.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDiopterToRatioCalculator(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/ui/motion/LinearScale;
    .locals 7
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 55
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 56
    .local v1, "nearest":Ljava/lang/Float;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 58
    .local v0, "hyperfocal":Ljava/lang/Float;
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/android/camera/ui/focus/LensRangeCalculator;->getNoOp()Lcom/android/camera/ui/motion/LinearScale;

    move-result-object v2

    .line 69
    :goto_0
    return-object v2

    .line 62
    :cond_0
    if-nez v1, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 63
    if-nez v0, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 65
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 66
    new-instance v2, Lcom/android/camera/ui/motion/LinearScale;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/android/camera/ui/motion/LinearScale;-><init>(FFFF)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_2

    .line 69
    :cond_3
    new-instance v2, Lcom/android/camera/ui/motion/LinearScale;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/android/camera/ui/motion/LinearScale;-><init>(FFFF)V

    goto :goto_0
.end method

.method public static getNoOp()Lcom/android/camera/ui/motion/LinearScale;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    new-instance v0, Lcom/android/camera/ui/motion/LinearScale;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/camera/ui/motion/LinearScale;-><init>(FFFF)V

    return-object v0
.end method
