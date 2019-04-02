.class final Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;
.super Ljava/lang/Object;
.source "PointMeteringParameters.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/MeteringParameters;


# instance fields
.field private final mAEPoint:Landroid/graphics/PointF;

.field private final mAFPoint:Landroid/graphics/PointF;

.field private final mSensorOrientation:I

.field private final mSettings3A:Lcom/android/camera/one/Settings3A;


# direct methods
.method private constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;ILcom/android/camera/one/Settings3A;)V
    .locals 0
    .param p1, "afPoint"    # Landroid/graphics/PointF;
    .param p2, "aePoint"    # Landroid/graphics/PointF;
    .param p3, "sensorOrientation"    # I
    .param p4, "settings3A"    # Lcom/android/camera/one/Settings3A;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->mAFPoint:Landroid/graphics/PointF;

    .line 37
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->mAEPoint:Landroid/graphics/PointF;

    .line 38
    iput p3, p0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->mSensorOrientation:I

    .line 39
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->mSettings3A:Lcom/android/camera/one/Settings3A;

    .line 40
    return-void
.end method

.method private clamp(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 155
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static createForNormalizedCoordinates(Landroid/graphics/PointF;Landroid/graphics/PointF;ILcom/android/camera/one/Settings3A;)Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;
    .locals 4
    .param p0, "afPoint"    # Landroid/graphics/PointF;
    .param p1, "aePoint"    # Landroid/graphics/PointF;
    .param p2, "sensorOrientation"    # I
    .param p3, "settings3A"    # Lcom/android/camera/one/Settings3A;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "sensorOrientation must be a multiple of 90"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    if-ltz p2, :cond_1

    :goto_1
    const-string v0, "sensorOrientation must not be negative"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    rem-int/lit16 p2, p2, 0x168

    .line 67
    new-instance v0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;ILcom/android/camera/one/Settings3A;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v1, v2

    .line 63
    goto :goto_1
.end method

.method private regionForNormalizedCoord(Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 10
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "cropRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 102
    .local v2, "minCropEdge":I
    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, p0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->mSettings3A:Lcom/android/camera/one/Settings3A;

    invoke-virtual {v7}, Lcom/android/camera/one/Settings3A;->getMeteringRegionFraction()F

    move-result v7

    mul-float/2addr v6, v7

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 110
    .local v0, "halfSideLength":I
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->transformPortraitCoordinatesToSensorCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 112
    .local v3, "nsc":Landroid/graphics/PointF;
    iget v6, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 113
    .local v4, "xCenterSensor":I
    iget v6, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 115
    .local v5, "yCenterSensor":I
    new-instance v1, Landroid/graphics/Rect;

    sub-int v6, v4, v0

    sub-int v7, v5, v0

    add-int v8, v4, v0

    add-int v9, v5, v0

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    .local v1, "meteringRegion":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->clamp(III)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 123
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->clamp(III)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 124
    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->clamp(III)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 126
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->clamp(III)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 129
    new-instance v6, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v7, 0x3e8

    invoke-direct {v6, v1, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object v6
.end method

.method private transformPortraitCoordinatesToSensorCoordinates(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 139
    iget v0, p0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->mSensorOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported Sensor Orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :sswitch_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float v2, v3, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object p1, v0

    .line 147
    .end local p1    # "point":Landroid/graphics/PointF;
    :goto_0
    :sswitch_1
    return-object p1

    .line 145
    .restart local p1    # "point":Landroid/graphics/PointF;
    :sswitch_2
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float v1, v3, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float v2, v3, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object p1, v0

    goto :goto_0

    .line 147
    :sswitch_3
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object p1, v0

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getAERegions(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 3
    .param p1, "cropRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->mAEPoint:Landroid/graphics/PointF;

    .line 78
    invoke-direct {p0, v2, p1}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->regionForNormalizedCoord(Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    aput-object v2, v0, v1

    .line 77
    return-object v0
.end method

.method public getAFPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->mAFPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getAFRegions(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 3
    .param p1, "cropRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->mAFPoint:Landroid/graphics/PointF;

    .line 94
    invoke-direct {p0, v2, p1}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->regionForNormalizedCoord(Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    aput-object v2, v0, v1

    .line 93
    return-object v0
.end method
