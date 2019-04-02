.class public Lcom/android/ex/camera2/portability/AndroidCamera2Settings;
.super Lcom/android/ex/camera2/portability/CameraSettings;
.source "AndroidCamera2Settings.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mActiveArray:Landroid/graphics/Rect;

.field private final mCropRectangle:Landroid/graphics/Rect;

.field private final mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

.field private final mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mVisiblePreviewRectangle:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCam2Set"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;ILandroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/Size;)V
    .locals 10
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "template"    # I
    .param p3, "activeArray"    # Landroid/graphics/Rect;
    .param p4, "preview"    # Lcom/android/ex/camera2/portability/Size;
    .param p5, "photo"    # Lcom/android/ex/camera2/portability/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "camera must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_0
    if-nez p3, :cond_1

    .line 85
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activeArray must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 89
    new-instance v5, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v5}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>()V

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .line 90
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 91
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v5, v7, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 93
    iput-boolean v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mSizesLocked:Z

    .line 95
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 96
    .local v3, "previewFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    .line 97
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v8, v5}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->setPreviewFpsRange(II)V

    .line 99
    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 101
    invoke-virtual {p0, p5}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 102
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    iput-byte v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mJpegCompressQuality:B

    .line 105
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentZoomRatio:F

    .line 107
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 108
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExposureCompensationIndex:I

    .line 110
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->flashModeFromRequest()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 111
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    .local v0, "currentFocusMode":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->focusModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 115
    :cond_3
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 116
    .local v1, "currentSceneMode":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    .line 117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->sceneModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 119
    :cond_4
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 120
    .local v4, "whiteBalance":Ljava/lang/Integer;
    if-eqz v4, :cond_5

    .line 121
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->whiteBalanceFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    .line 124
    :cond_5
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 125
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 124
    invoke-direct {p0, v5, v8}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    .line 127
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoExposureLocked:Z

    .line 128
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoWhiteBalanceLocked:Z

    .line 131
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 132
    .local v2, "exifThumbnailSize":Landroid/util/Size;
    if-eqz v2, :cond_6

    .line 133
    new-instance v5, Lcom/android/ex/camera2/portability/Size;

    .line 134
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    iput-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 136
    :cond_6
    return-void

    .end local v2    # "exifThumbnailSize":Landroid/util/Size;
    :cond_7
    move v5, v7

    .line 124
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V
    .locals 2
    .param p1, "other"    # Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 140
    iget-object v0, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 141
    new-instance v0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;-><init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    .line 142
    iget-object v0, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 144
    return-void
.end method

.method private static effectiveCropRectFromRequested(Landroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;)Landroid/graphics/Rect;
    .locals 11
    .param p0, "requestedCrop"    # Landroid/graphics/Rect;
    .param p1, "previewSize"    # Lcom/android/ex/camera2/portability/Size;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 568
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 569
    .local v0, "aspectRatioArray":F
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 572
    .local v1, "aspectRatioPreview":F
    cmpg-float v7, v1, v0

    if-gez v7, :cond_0

    .line 574
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v2, v7

    .line 575
    .local v2, "cropHeight":F
    mul-float v4, v2, v1

    .line 582
    .local v4, "cropWidth":F
    :goto_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 583
    .local v6, "translateMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v9, v9, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 586
    .local v3, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 587
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 589
    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 592
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 593
    .local v5, "result":Landroid/graphics/Rect;
    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 594
    return-object v5

    .line 578
    .end local v2    # "cropHeight":F
    .end local v3    # "cropRect":Landroid/graphics/RectF;
    .end local v4    # "cropWidth":F
    .end local v5    # "result":Landroid/graphics/Rect;
    .end local v6    # "translateMatrix":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v4, v7

    .line 579
    .restart local v4    # "cropWidth":F
    div-float v2, v4, v1

    .restart local v2    # "cropHeight":F
    goto :goto_0
.end method

.method private flashModeFromRequest()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 175
    .local v0, "autoExposure":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 192
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 178
    :pswitch_0
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_0

    .line 180
    :pswitch_1
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 183
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_0

    .line 185
    :cond_1
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_0

    .line 189
    :pswitch_3
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private legacyAreasToMeteringRectangles(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)[",
            "Landroid/hardware/camera2/params/MeteringRectangle;"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "reference":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/16 v21, 0x0

    .line 305
    .local v21, "transformed":[Landroid/hardware/camera2/params/MeteringRectangle;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 306
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-object/from16 v21, v0

    .line 307
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_0

    .line 308
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/Camera$Area;

    .line 309
    .local v20, "source":Landroid/hardware/Camera$Area;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 313
    .local v18, "rectangle":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit16 v2, v2, 0x3e8

    int-to-double v6, v2

    const-wide v22, 0x409f400000000000L    # 2000.0

    div-double v12, v6, v22

    .line 314
    .local v12, "oldLeft":D
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit16 v2, v2, 0x3e8

    int-to-double v6, v2

    const-wide v22, 0x409f400000000000L    # 2000.0

    div-double v16, v6, v22

    .line 315
    .local v16, "oldTop":D
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit16 v2, v2, 0x3e8

    int-to-double v6, v2

    const-wide v22, 0x409f400000000000L    # 2000.0

    div-double v14, v6, v22

    .line 316
    .local v14, "oldRight":D
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v2, v2, 0x3e8

    int-to-double v6, v2

    const-wide v22, 0x409f400000000000L    # 2000.0

    div-double v10, v6, v22

    .line 317
    .local v10, "oldBottom":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 318
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    .line 317
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v7, v5, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v5

    add-int v3, v2, v5

    .line 319
    .local v3, "left":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 320
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v6, v5

    mul-double v6, v6, v16

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    .line 319
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v7, v5, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v5

    add-int v4, v2, v5

    .line 321
    .local v4, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 322
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    .line 321
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v7, v5, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v5

    add-int v19, v2, v5

    .line 323
    .local v19, "right":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    .line 324
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v10

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    .line 323
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v7, v5, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v5

    add-int v8, v2, v5

    .line 325
    .local v8, "bottom":I
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    sub-int v5, v19, v3

    sub-int v6, v8, v4

    move-object/from16 v0, v20

    iget v7, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v2, v21, v9

    .line 307
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 329
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v8    # "bottom":I
    .end local v9    # "index":I
    .end local v10    # "oldBottom":D
    .end local v12    # "oldLeft":D
    .end local v14    # "oldRight":D
    .end local v16    # "oldTop":D
    .end local v18    # "rectangle":Landroid/graphics/Rect;
    .end local v19    # "right":I
    .end local v20    # "source":Landroid/hardware/Camera$Area;
    :cond_0
    return-object v21
.end method

.method private matchesTemplateDefault(Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "setting":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 214
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    move v4, v3

    .line 255
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v3, v5

    .line 215
    goto :goto_0

    .line 216
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v3, :cond_3

    .line 217
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mFocusAreas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v4, v5

    goto :goto_1

    .line 218
    :cond_3
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v3, :cond_6

    .line 219
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 220
    .local v0, "defaultFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMin:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMax:I

    if-eqz v3, :cond_0

    :cond_4
    if-eqz v0, :cond_5

    iget v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMin:I

    .line 221
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v6, v3, :cond_5

    iget v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMax:I

    .line 222
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v6, v3, :cond_0

    :cond_5
    move v4, v5

    goto :goto_1

    .line 223
    .end local v0    # "defaultFpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_6
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v3, :cond_7

    .line 224
    iget-byte v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mJpegCompressQuality:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 225
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    .line 224
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 226
    :cond_7
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v3, :cond_8

    .line 227
    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExposureCompensationIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 228
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    .line 227
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 229
    :cond_8
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v3, :cond_c

    .line 230
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 231
    .local v2, "videoStabilization":Ljava/lang/Integer;
    if-eqz v2, :cond_9

    iget-boolean v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-eqz v3, :cond_9

    .line 232
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_a

    :cond_9
    iget-boolean v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-nez v3, :cond_b

    .line 234
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    move v5, v4

    :cond_b
    move v4, v5

    .line 231
    goto/16 :goto_1

    .line 236
    .end local v2    # "videoStabilization":Ljava/lang/Integer;
    :cond_c
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v3, :cond_d

    .line 237
    iget-boolean v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoExposureLocked:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    .line 238
    :cond_d
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v3, :cond_e

    .line 239
    iget-boolean v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoWhiteBalanceLocked:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    .line 240
    :cond_e
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne p1, v3, :cond_12

    .line 241
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    if-nez v3, :cond_f

    move v4, v5

    .line 244
    goto/16 :goto_1

    .line 246
    :cond_f
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 247
    .local v1, "defaultThumbnailSize":Landroid/util/Size;
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    if-eqz v3, :cond_0

    :cond_10
    if-eqz v1, :cond_11

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 249
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v3, v6, :cond_11

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 250
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-eq v3, v6, :cond_0

    :cond_11
    move v4, v5

    goto/16 :goto_1

    .line 252
    .end local v1    # "defaultThumbnailSize":Landroid/util/Size;
    :cond_12
    sget-object v3, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v5, "Settings implementation checked default of unhandled option key"

    invoke-static {v3, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private queryTemplateDefaultOrMakeOneUp(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "defaultDefault":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "val":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 169
    .end local v0    # "val":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .line 168
    .restart local v0    # "val":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mTemplateSettings:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move-object v0, p2

    .line 169
    goto :goto_0
.end method

.method private toIntConstrained(DII)I
    .locals 3
    .param p1, "original"    # D
    .param p3, "min"    # I
    .param p4, "max"    # I

    .prologue
    .line 333
    int-to-double v0, p3

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    .line 334
    int-to-double v0, p4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    .line 335
    double-to-int v0, p1

    return v0
.end method

.method private updateRequestFlashMode()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "aeMode":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 341
    .local v1, "flashMode":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-eqz v2, :cond_0

    .line 342
    sget-object v2, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FlashMode:[I

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 366
    sget-object v2, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to convert to API 2 flash mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFlashMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 372
    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v1}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 373
    return-void

    .line 344
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 345
    goto :goto_0

    .line 348
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 349
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 350
    goto :goto_0

    .line 353
    :pswitch_2
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 354
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 355
    goto :goto_0

    .line 358
    :pswitch_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 359
    goto :goto_0

    .line 362
    :pswitch_4
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 363
    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateRequestFocusMode()V
    .locals 4

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "mode":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-eqz v1, :cond_0

    .line 378
    sget-object v1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$FocusMode:[I

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 405
    sget-object v1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert to API 2 focus mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentFocusMode:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 410
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 411
    return-void

    .line 380
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 381
    goto :goto_0

    .line 384
    :pswitch_1
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 385
    goto :goto_0

    .line 388
    :pswitch_2
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 389
    goto :goto_0

    .line 392
    :pswitch_3
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 393
    goto :goto_0

    .line 396
    :pswitch_4
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 397
    goto :goto_0

    .line 401
    :pswitch_5
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 402
    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateRequestGpsData()V
    .locals 4

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 550
    :goto_0
    return-void

    .line 543
    :cond_1
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-object v1, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->processingMethod:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, "location":Landroid/location/Location;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v2, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->timeStamp:J

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 545
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v2, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->altitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 546
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v2, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 547
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mGpsData:Lcom/android/ex/camera2/portability/CameraSettings$GpsData;

    iget-wide v2, v1, Lcom/android/ex/camera2/portability/CameraSettings$GpsData;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 548
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateRequestSceneMode()V
    .locals 4

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "mode":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eqz v1, :cond_0

    .line 416
    sget-object v1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$SceneMode:[I

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 483
    sget-object v1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert to API 2 scene mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 488
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 489
    return-void

    .line 418
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 419
    goto :goto_0

    .line 422
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 423
    goto :goto_0

    .line 426
    :pswitch_2
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 427
    goto :goto_0

    .line 430
    :pswitch_3
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 431
    goto :goto_0

    .line 434
    :pswitch_4
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 435
    goto :goto_0

    .line 438
    :pswitch_5
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 439
    goto :goto_0

    .line 442
    :pswitch_6
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 443
    goto :goto_0

    .line 446
    :pswitch_7
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 447
    goto :goto_0

    .line 450
    :pswitch_8
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 451
    goto :goto_0

    .line 455
    :pswitch_9
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 456
    goto :goto_0

    .line 459
    :pswitch_a
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 460
    goto :goto_0

    .line 463
    :pswitch_b
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 464
    goto :goto_0

    .line 467
    :pswitch_c
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 468
    goto :goto_0

    .line 471
    :pswitch_d
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 472
    goto :goto_0

    .line 475
    :pswitch_e
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 476
    goto :goto_0

    .line 479
    :pswitch_f
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 480
    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "setting":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "possibleChoice":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->matchesTemplateDefault(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .end local p2    # "possibleChoice":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method private updateRequestWhiteBalance()V
    .locals 4

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "mode":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    if-eqz v1, :cond_0

    .line 494
    sget-object v1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings$1;->$SwitchMap$com$android$ex$camera2$portability$CameraCapabilities$WhiteBalance:[I

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 528
    sget-object v1, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert to API 2 white balance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mWhiteBalance:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 533
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 534
    return-void

    .line 496
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 497
    goto :goto_0

    .line 500
    :pswitch_1
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 501
    goto :goto_0

    .line 504
    :pswitch_2
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 505
    goto :goto_0

    .line 508
    :pswitch_3
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 509
    goto :goto_0

    .line 512
    :pswitch_4
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 513
    goto :goto_0

    .line 516
    :pswitch_5
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 517
    goto :goto_0

    .line 520
    :pswitch_6
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 521
    goto :goto_0

    .line 524
    :pswitch_7
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 525
    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public applyCaptureSettingsToParameter(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    return-void
.end method

.method public applyPreviewSettingsToParameter(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 159
    return-void
.end method

.method public copy()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;-><init>(Lcom/android/ex/camera2/portability/AndroidCamera2Settings;)V

    return-object v0
.end method

.method public getRequestSettings()Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 263
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mMeteringAreas:Ljava/util/List;

    .line 264
    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->legacyAreasToMeteringRectangles(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 263
    invoke-direct {p0, v0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 265
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mFocusAreas:Ljava/util/List;

    .line 266
    invoke-direct {p0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->legacyAreasToMeteringRectangles(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 265
    invoke-direct {p0, v0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 267
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Landroid/util/Range;

    iget v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMin:I

    .line 268
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mPreviewFpsRangeMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 267
    invoke-direct {p0, v0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 270
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-byte v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mJpegCompressQuality:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExposureCompensationIndex:I

    .line 275
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 274
    invoke-direct {p0, v0, v3}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 276
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestFlashMode()V

    .line 277
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestFocusMode()V

    .line 278
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSceneMode()V

    .line 279
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestWhiteBalance()V

    .line 280
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 281
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 280
    invoke-direct {p0, v3, v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 284
    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVideoStabilizationEnabled:Z

    if-eqz v0, :cond_1

    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 284
    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoExposureLocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 288
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mAutoWhiteBalanceLocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 290
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestGpsData()V

    .line 291
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    if-eqz v0, :cond_2

    .line 292
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    .line 294
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mExifThumbnailSize:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 292
    invoke-direct {p0, v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 299
    :goto_2
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mRequestSettings:Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;

    return-object v0

    :cond_0
    move v0, v1

    .line 280
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 285
    goto :goto_1

    .line 296
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, v2}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->updateRequestSettingOrForceToDefault(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public setZoomRatio(F)V
    .locals 6
    .param p1, "ratio"    # F

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-super {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 200
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 202
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentZoomRatio:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 201
    invoke-direct {p0, v2, v3, v5, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 204
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentZoomRatio:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 203
    invoke-direct {p0, v2, v3, v5, v4}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->toIntConstrained(DII)I

    move-result v2

    .line 200
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 205
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mActiveArray:Landroid/graphics/Rect;

    .line 206
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 209
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCropRectangle:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mCurrentPreviewSize:Lcom/android/ex/camera2/portability/Size;

    .line 210
    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->effectiveCropRectFromRequested(Landroid/graphics/Rect;Lcom/android/ex/camera2/portability/Size;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Settings;->mVisiblePreviewRectangle:Landroid/graphics/Rect;

    .line 211
    return-void
.end method
