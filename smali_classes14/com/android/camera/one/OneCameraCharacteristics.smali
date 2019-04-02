.class public interface abstract Lcom/android/camera/one/OneCameraCharacteristics;
.super Ljava/lang/Object;
.source "OneCameraCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;,
        Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;,
        Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
    }
.end annotation


# virtual methods
.method public abstract checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)Z
.end method

.method public abstract configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z
    .param p3    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
.end method

.method public abstract getAvailableFocalLengths()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableMaxDigitalZoom()F
.end method

.method public abstract getCalibrationData()[B
.end method

.method public abstract getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
.end method

.method public abstract getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;
.end method

.method public abstract getCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getCustomNumMic()I
.end method

.method public abstract getCustomOzoDeviceID()Ljava/lang/String;
.end method

.method public abstract getDisplayOrientation(I)I
.end method

.method public abstract getDualCamLayout()Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
.end method

.method public abstract getExposureCompensationStep()F
.end method

.method public abstract getHighResolutionOutputSizes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHorizontalViewAngle()F
.end method

.method public abstract getLensFocusRange()Lcom/android/camera/ui/motion/LinearScale;
.end method

.method public abstract getMaxExposureCompensation()I
.end method

.method public abstract getMaxFrameDuration()J
.end method

.method public abstract getMaxISO()I
.end method

.method public abstract getMaxReprocessCaptureStall()I
.end method

.method public abstract getMaxSensorExposureTime()J
.end method

.method public abstract getMinExposureCompensation()I
.end method

.method public abstract getMinISO()I
.end method

.method public abstract getMinSensorExposureTime()J
.end method

.method public abstract getMinimumFocusDistance()F
.end method

.method public abstract getOpaqueRawSize()Lcom/android/camera/util/Size;
.end method

.method public abstract getSensorInfoActiveArraySize()Landroid/graphics/Rect;
.end method

.method public abstract getSensorOrientation()I
.end method

.method public abstract getSupportedFaceDetectModes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedFixedHighSpeedVideoList()Ljava/util/List;
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
.end method

.method public abstract getSupportedFocusMode()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedHardwareLevel()Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
.end method

.method public abstract getSupportedPictureSizes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPreviewSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedSurroundSound()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedThumbnailSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedWhiteBalance()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVerticalViewAngle()F
.end method

.method public abstract isAutoExposureSupported()Z
.end method

.method public abstract isAutoFocusSupported()Z
.end method

.method public abstract isAutoHdrSupported()Z
.end method

.method public abstract isEISSupported(Lcom/android/camera/util/Size;)Z
.end method

.method public abstract isExposureCompensationSupported()Z
.end method

.method public abstract isFlashSupported()Z
.end method

.method public abstract isFrontCamMirrorSupported()Z
.end method

.method public abstract isHdrSceneSupported()Z
.end method

.method public abstract isHighResolutionOutputSizes(Lcom/android/camera/util/Size;I)Z
.end method

.method public abstract isHighSpeedVideoSupported()Z
.end method

.method public abstract isISOSupported()Z
.end method

.method public abstract isMetadataSupported()Z
.end method

.method public abstract isMonoCamera()Z
.end method

.method public abstract isOISSupported()Z
.end method

.method public abstract isQCFASensor()Z
.end method

.method public abstract isRawCaptureSupported()Z
.end method

.method public abstract isReprocessingSupported(I)Z
.end method

.method public abstract isSupportHWRotate()Z
.end method

.method public abstract isSupportedSurroundSound()Z
.end method

.method public abstract isZSLSupported()Z
.end method
