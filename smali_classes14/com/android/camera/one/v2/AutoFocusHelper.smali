.class public Lcom/android/camera/one/v2/AutoFocusHelper;
.super Ljava/lang/Object;
.source "AutoFocusHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CAMERA2_REGION_WEIGHT:I

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 36
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v2, "OneCameraAFHelp"

    invoke-direct {v0, v2}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/AutoFocusHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 39
    const/4 v0, 0x0

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 41
    invoke-static {}, Lcom/android/camera/one/Settings3A;->getGcamMeteringRegionFraction()F

    move-result v3

    .line 40
    invoke-static {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/one/v2/AutoFocusHelper;->CAMERA2_REGION_WEIGHT:I

    .line 44
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v0, v6, v1

    sput-object v6, Lcom/android/camera/one/v2/AutoFocusHelper;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aeRegionsForNormalizedCoord(FFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1
    .param p0, "nx"    # F
    .param p1, "ny"    # F
    .param p2, "cropRegion"    # Landroid/graphics/Rect;
    .param p3, "sensorOrientation"    # I

    .prologue
    .line 186
    invoke-static {}, Lcom/android/camera/one/Settings3A;->getMeteringRegionWidth()F

    move-result v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/camera/one/v2/AutoFocusHelper;->regionsForNormalizedCoord(FFFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    return-object v0
.end method

.method public static afRegionsForNormalizedCoord(FFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1
    .param p0, "nx"    # F
    .param p1, "ny"    # F
    .param p2, "cropRegion"    # Landroid/graphics/Rect;
    .param p3, "sensorOrientation"    # I

    .prologue
    .line 170
    invoke-static {}, Lcom/android/camera/one/Settings3A;->getAutoFocusRegionWidth()F

    move-result v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/camera/one/v2/AutoFocusHelper;->regionsForNormalizedCoord(FFFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    return-object v0
.end method

.method public static checkControlAfState(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 5
    .param p0, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    move v0, v1

    .line 80
    .local v0, "missing":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 82
    sget-object v3, Lcom/android/camera/one/v2/AutoFocusHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "\n!!!! TotalCaptureResult missing CONTROL_AF_STATE. !!!!\n "

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    .end local v0    # "missing":Z
    :cond_1
    move v0, v2

    .line 79
    goto :goto_0

    .restart local v0    # "missing":Z
    :cond_2
    move v1, v2

    .line 84
    goto :goto_1
.end method

.method public static checkLensState(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 5
    .param p0, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    move v0, v1

    .line 93
    .local v0, "missing":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 95
    sget-object v3, Lcom/android/camera/one/v2/AutoFocusHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "\n!!!! TotalCaptureResult missing LENS_STATE. !!!!\n "

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    .end local v0    # "missing":Z
    :cond_1
    move v0, v2

    .line 92
    goto :goto_0

    .restart local v0    # "missing":Z
    :cond_2
    move v1, v2

    .line 97
    goto :goto_1
.end method

.method private static controlAFStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "controlAFState"    # I

    .prologue
    .line 224
    packed-switch p0, :pswitch_data_0

    .line 240
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 226
    :pswitch_0
    const-string v0, "inactive"

    goto :goto_0

    .line 228
    :pswitch_1
    const-string v0, "passive_scan"

    goto :goto_0

    .line 230
    :pswitch_2
    const-string v0, "passive_focused"

    goto :goto_0

    .line 232
    :pswitch_3
    const-string v0, "active_scan"

    goto :goto_0

    .line 234
    :pswitch_4
    const-string v0, "focus_locked"

    goto :goto_0

    .line 236
    :pswitch_5
    const-string v0, "not_focus_locked"

    goto :goto_0

    .line 238
    :pswitch_6
    const-string v0, "passive_unfocused"

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static cropRegionForZoom(Landroid/hardware/camera2/CameraCharacteristics;F)Landroid/graphics/Rect;
    .locals 10
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "zoom"    # F

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 212
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 213
    .local v0, "sensor":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 214
    .local v1, "xCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 215
    .local v3, "yCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    div-float/2addr v5, p1

    float-to-int v2, v5

    .line 216
    .local v2, "xDelta":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    div-float/2addr v5, p1

    float-to-int v4, v5

    .line 217
    .local v4, "yDelta":I
    new-instance v5, Landroid/graphics/Rect;

    sub-int v6, v1, v2

    sub-int v7, v3, v4

    add-int v8, v1, v2

    add-int v9, v3, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5
.end method

.method public static gcamAERegionsForNormalizedCoord(FFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1
    .param p0, "nx"    # F
    .param p1, "ny"    # F
    .param p2, "cropRegion"    # Landroid/graphics/Rect;
    .param p3, "sensorOrientation"    # I

    .prologue
    .line 202
    invoke-static {}, Lcom/android/camera/one/Settings3A;->getGcamMeteringRegionFraction()F

    move-result v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/camera/one/v2/AutoFocusHelper;->regionsForNormalizedCoord(FFFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    return-object v0
.end method

.method public static getZeroWeightRegion()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/camera/one/v2/AutoFocusHelper;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v0
.end method

.method private static lensStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "lensState"    # I

    .prologue
    .line 248
    packed-switch p0, :pswitch_data_0

    .line 254
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 250
    :pswitch_0
    const-string v0, "moving"

    goto :goto_0

    .line 252
    :pswitch_1
    const-string v0, "stationary"

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static logExtraFocusInfo(Landroid/hardware/camera2/CaptureResult;)V
    .locals 7
    .param p0, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 102
    invoke-static {p0}, Lcom/android/camera/one/v2/AutoFocusHelper;->checkControlAfState(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/camera/one/v2/AutoFocusHelper;->checkLensState(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "tag":Ljava/lang/Object;
    sget-object v2, Lcom/android/camera/one/v2/AutoFocusHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "af_state:%-17s  lens_foc_dist:%.3f  lens_state:%-10s  %s"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 109
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/one/v2/AutoFocusHelper;->controlAFStateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 110
    invoke-virtual {p0, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 111
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/one/v2/AutoFocusHelper;->lensStateToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v5, 0x3

    if-nez v0, :cond_2

    const-string v1, ""

    :goto_1
    aput-object v1, v4, v5

    .line 108
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static regionsForNormalizedCoord(FFFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 10
    .param p0, "nx"    # F
    .param p1, "ny"    # F
    .param p2, "fraction"    # F
    .param p3, "cropRegion"    # Landroid/graphics/Rect;
    .param p4, "sensorOrientation"    # I

    .prologue
    .line 130
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 131
    .local v2, "minCropEdge":I
    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, p2

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 138
    .local v0, "halfSideLength":I
    invoke-static {p0, p1, p4}, Lcom/android/camera/util/CameraUtil;->normalizedSensorCoordsForNormalizedDisplayCoords(FFI)Landroid/graphics/PointF;

    move-result-object v3

    .line 141
    .local v3, "nsc":Landroid/graphics/PointF;
    iget v6, p3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 142
    .local v4, "xCenterSensor":I
    iget v6, p3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 144
    .local v5, "yCenterSensor":I
    new-instance v1, Landroid/graphics/Rect;

    sub-int v6, v4, v0

    sub-int v7, v5, v0

    add-int v8, v4, v0

    add-int v9, v5, v0

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 150
    .local v1, "meteringRegion":Landroid/graphics/Rect;
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7, v8}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 151
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v7, v8}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 152
    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7, v8}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 153
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v7, v8}, Lcom/android/camera/util/CameraUtil;->clamp(III)I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 155
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v7, 0x0

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    sget v9, Lcom/android/camera/one/v2/AutoFocusHelper;->CAMERA2_REGION_WEIGHT:I

    invoke-direct {v8, v1, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v8, v6, v7

    return-object v6
.end method

.method public static stateFromCamera2State(I)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 70
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 60
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 62
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 64
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 66
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 68
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
