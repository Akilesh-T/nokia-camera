.class public Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;
.super Ljava/lang/Object;
.source "OneCameraCharacteristicsImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraCharacteristics;


# instance fields
.field private final mCameraId:Lcom/android/camera/device/CameraId;

.field private final mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private final mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private final mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private final mSupportedPictureSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedPreviewSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedThumbnailSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/device/CameraId;Landroid/hardware/Camera$CameraInfo;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;
    .param p3, "cameraParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mSupportedPictureSizes:Ljava/util/ArrayList;

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    .line 61
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mSupportedThumbnailSizes:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraId:Lcom/android/camera/device/CameraId;

    .line 66
    iput-object p2, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 67
    iput-object p3, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 68
    new-instance v6, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;

    iget-object v7, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-direct {v6, p3, v7}, Lcom/android/ex/camera2/portability/AndroidCameraCapabilities;-><init>(Landroid/hardware/Camera$Parameters;I)V

    iput-object v6, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 70
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v2, :cond_0

    .line 72
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 73
    .local v0, "pictureSize":Landroid/hardware/Camera$Size;
    iget-object v7, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mSupportedPictureSizes:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/camera/util/Size;

    invoke-direct {v8, v0}, Lcom/android/camera/util/Size;-><init>(Landroid/hardware/Camera$Size;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v0    # "pictureSize":Landroid/hardware/Camera$Size;
    :cond_0
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 78
    .local v3, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v3, :cond_1

    .line 79
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 80
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget-object v7, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/camera/util/Size;

    invoke-direct {v8, v1}, Lcom/android/camera/util/Size;-><init>(Landroid/hardware/Camera$Size;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v4

    .line 85
    .local v4, "supportedThumbnailSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v4, :cond_2

    .line 86
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 87
    .local v5, "thumbnialSize":Landroid/hardware/Camera$Size;
    iget-object v7, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mSupportedThumbnailSizes:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/camera/util/Size;

    invoke-direct {v8, v5}, Lcom/android/camera/util/Size;-><init>(Landroid/hardware/Camera$Size;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 90
    .end local v5    # "thumbnialSize":Landroid/hardware/Camera$Size;
    :cond_2
    return-void
.end method


# virtual methods
.method public checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)Z
    .locals 1
    .param p1, "inputConfig"    # Landroid/hardware/camera2/params/InputConfiguration;

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p3, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/async/Lifetime;",
            "Landroid/media/MediaRecorder;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 336
    .local p4, "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableFocalLengths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-object v0
.end method

.method public getAvailableMaxDigitalZoom()F
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalibrationData()[B
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 124
    .local v0, "direction":I
    if-nez v0, :cond_0

    .line 125
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 127
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0
.end method

.method public getCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraId:Lcom/android/camera/device/CameraId;

    return-object v0
.end method

.method public getCustomNumMic()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomOzoDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayOrientation(I)I
    .locals 2
    .param p1, "displayRotation"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->getSensorOrientation()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->getSensorOrientation()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public getDualCamLayout()Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    return-object v0
.end method

.method public getExposureCompensationStep()F
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->isExposureCompensationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/high16 v0, -0x40800000    # -1.0f

    .line 229
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    goto :goto_0
.end method

.method public getHighResolutionOutputSizes(I)Ljava/util/List;
    .locals 1
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    return v0
.end method

.method public getLensFocusRange()Lcom/android/camera/ui/motion/LinearScale;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/android/camera/ui/focus/LensRangeCalculator;->getNoOp()Lcom/android/camera/ui/motion/LinearScale;

    move-result-object v0

    return-object v0
.end method

.method public getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->isExposureCompensationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const/4 v0, -0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxFrameDuration()J
    .locals 2

    .prologue
    .line 276
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxISO()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxReprocessCaptureStall()I
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSensorExposureTime()J
    .locals 2

    .prologue
    .line 266
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->isExposureCompensationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, -0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    goto :goto_0
.end method

.method public getMinISO()I
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public getMinSensorExposureTime()J
    .locals 2

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinimumFocusDistance()F
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public getOpaqueRawSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSensorOrientation()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method

.method public getSupportedFaceDetectModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .local v0, "oneModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;>;"
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->NONE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object v0
.end method

.method public getSupportedFixedHighSpeedVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/camera/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedFocusMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedHardwareLevel()Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedPictureSizes(I)Ljava/util/List;
    .locals 1
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mSupportedPictureSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedSurroundSound()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedThumbnailSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mSupportedThumbnailSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    return v0
.end method

.method public isAutoExposureSupported()Z
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoFocusSupported()Z
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public isEISSupported(Lcom/android/camera/util/Size;)Z
    .locals 1
    .param p1, "videoSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isExposureCompensationSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 181
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_6:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLollipop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 185
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontCamMirrorSupported()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    return v0
.end method

.method public isHdrSceneSupported()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "hdr"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHighResolutionOutputSizes(Lcom/android/camera/util/Size;I)Z
    .locals 1
    .param p1, "targetSize"    # Lcom/android/camera/util/Size;
    .param p2, "imageFormat"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public isHighSpeedVideoSupported()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public isISOSupported()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public isMetadataSupported()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    return v0
.end method

.method public isMonoCamera()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public isOISSupported()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public isQCFASensor()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public isRawCaptureSupported()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public isReprocessingSupported(I)Z
    .locals 1
    .param p1, "imageFormat"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportHWRotate()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedSurroundSound()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public isZSLSupported()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/one/v1/OneCameraCharacteristicsImpl;->mCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    return v0
.end method
