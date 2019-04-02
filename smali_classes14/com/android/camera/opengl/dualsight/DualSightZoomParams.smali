.class public Lcom/android/camera/opengl/dualsight/DualSightZoomParams;
.super Ljava/lang/Object;
.source "DualSightZoomParams.java"


# instance fields
.field private mCurrentRatio:F

.field private final mMaxRatio:F

.field private final mMinRatio:F

.field private mSlaveCurrentRatio:F

.field private final mSlaveMaxRatio:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "currentRatio"    # F
    .param p2, "maxRatio"    # F
    .param p3, "slaveCurrentRatio"    # F
    .param p4, "slaveMaxRatio"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mMinRatio:F

    .line 15
    iput p1, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mCurrentRatio:F

    .line 16
    iput p2, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mMaxRatio:F

    .line 17
    iput p3, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveCurrentRatio:F

    .line 18
    iput p4, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveMaxRatio:F

    .line 19
    return-void
.end method

.method public static isMainCamera(Lcom/android/camera/opengl/dualsight/DualSightMode;IFLandroid/graphics/RectF;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "dualSightMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;
    .param p1, "yPos"    # I
    .param p2, "ratio"    # F
    .param p3, "previewArea"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50
    iget v5, p3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v5

    .line 51
    .local v2, "upperBound":I
    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v5

    .line 52
    .local v0, "bottomBound":I
    add-int v5, v2, v0

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p2

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 53
    .local v1, "ratioBound":I
    sget-object v5, Lcom/android/camera/opengl/dualsight/DualSightZoomParams$1;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    invoke-virtual {p0}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 63
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 55
    :pswitch_0
    if-lt p1, v2, :cond_0

    if-ge p1, v1, :cond_0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    .line 57
    :pswitch_1
    if-ge p1, v0, :cond_1

    if-lt p1, v1, :cond_1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_2

    .line 59
    :pswitch_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 61
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getSlaveZoom()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveCurrentRatio:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mCurrentRatio:F

    return v0
.end method

.method public updateSlaveZoom(F)V
    .locals 3
    .param p1, "sf"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3ea8f5c3    # 0.33f

    .line 32
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveCurrentRatio:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveCurrentRatio:F

    .line 33
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveCurrentRatio:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 34
    iput v2, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveCurrentRatio:F

    .line 36
    :cond_0
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveCurrentRatio:F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveMaxRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 37
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveMaxRatio:F

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mSlaveCurrentRatio:F

    .line 39
    :cond_1
    return-void
.end method

.method public updateZoom(F)V
    .locals 3
    .param p1, "sf"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3ea8f5c3    # 0.33f

    .line 22
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mCurrentRatio:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mCurrentRatio:F

    .line 23
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mCurrentRatio:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 24
    iput v2, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mCurrentRatio:F

    .line 26
    :cond_0
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mCurrentRatio:F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mMaxRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 27
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mMaxRatio:F

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightZoomParams;->mCurrentRatio:F

    .line 29
    :cond_1
    return-void
.end method
