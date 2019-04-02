.class public Lcom/android/ex/camera2/portability/AndroidCameraSettings;
.super Lcom/android/ex/camera2/portability/CameraSettings;
.source "AndroidCameraSettings.java"


# static fields
.field private static final RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final mCameraSettingExtension:Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCamSet"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 35
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraSettingExtensionCreator;->create()Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;

    move-result-object v0

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->mCameraSettingExtension:Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraSettings;)V
    .locals 0
    .param p1, "other"    # Lcom/android/ex/camera2/portability/AndroidCameraSettings;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraSettings;-><init>()V

    .line 39
    if-nez p2, :cond_0

    .line 40
    sget-object v5, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v6, "Settings ctor requires a non-null Camera.Parameters."

    invoke-static {v5, v6}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v3

    .line 46
    .local v3, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    invoke-virtual {p0, v8}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setSizesLocked(Z)V

    .line 49
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 50
    .local v1, "paramPreviewSize":Landroid/hardware/Camera$Size;
    new-instance v5, Lcom/android/ex/camera2/portability/Size;

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, v6, v7}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 51
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFrameRate(I)V

    .line 52
    new-array v2, v10, [I

    .line 53
    .local v2, "previewFpsRange":[I
    invoke-virtual {p2, v2}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 54
    aget v5, v2, v8

    aget v6, v2, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFpsRange(II)V

    .line 56
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPreviewFormat(I)V

    .line 59
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 60
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setZoomRatio(F)V

    .line 64
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setExposureCompensationIndex(I)V

    .line 65
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 66
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 67
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->sceneModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 68
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->whiteBalanceFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setWhiteBalance(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)V

    .line 71
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->isVideoStabilizationEnabled()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setVideoStabilization(Z)V

    .line 74
    :cond_1
    const-string v5, "true"

    const-string v6, "recording-hint"

    invoke-virtual {p2, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setRecordingHintEnabled(Z)V

    .line 77
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 78
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 79
    .local v0, "paramPictureSize":Landroid/hardware/Camera$Size;
    new-instance v5, Lcom/android/ex/camera2/portability/Size;

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v5, v6, v7}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 80
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setPhotoFormat(I)V

    .line 82
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setZSLSupported(Z)V

    .line 83
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setAutoHDRSupported(Z)V

    .line 84
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BEAUTY:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setBeautySupported(Z)V

    .line 85
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->OPTI_ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setOptiZoomSupported(Z)V

    .line 86
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setLongShotSupported(Z)V

    .line 87
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setHWRotateSupported(Z)V

    .line 90
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setManualFocusSupported(Z)V

    .line 91
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_EXPOSURE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setManualExposureSupported(Z)V

    .line 92
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_WB:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setManualWBSupported(Z)V

    .line 93
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentFocusScale(Landroid/hardware/Camera$Parameters;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentFocusScale(I)V

    .line 94
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentFocusDiopter(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentFocusDiopter(D)V

    .line 95
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentExposureTime(Landroid/hardware/Camera$Parameters;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentExposureTime(D)V

    .line 96
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentISO(Landroid/hardware/Camera$Parameters;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentISO(I)V

    .line 98
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentManualWBMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setManualWBMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;)V

    .line 99
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentWBCCT(Landroid/hardware/Camera$Parameters;)I

    move-result v5

    int-to-double v6, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentWBBGain(D)V

    .line 100
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentWBGain(Landroid/hardware/Camera$Parameters;)[D

    move-result-object v4

    .line 101
    .local v4, "wbGain":[D
    if-eqz v4, :cond_2

    .line 102
    aget-wide v6, v4, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentWBRGain(D)V

    .line 103
    aget-wide v6, v4, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentWBBGain(D)V

    .line 104
    aget-wide v6, v4, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentWBGGain(D)V

    .line 108
    :cond_2
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setSurroundSoundSupported(Z)V

    .line 109
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setDISSupported(Z)V

    .line 110
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isDISEnabled(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setEnableDIS(Z)V

    .line 111
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setEISSupported(Z)V

    .line 112
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isEISEnabled(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setEnableEIS(Z)V

    .line 113
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_PREVIEW_RATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCustomizePipFPSSupported(Z)V

    .line 114
    invoke-virtual {p0, v8}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setEnableCustomizePipFps(Z)V

    .line 115
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CUS_MAX_PREVIEW_RATE_SET:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCusPreviewMaxFPSSetSupported(Z)V

    .line 116
    invoke-virtual {p0, v8}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setEnableCusPreviewMaxFPSEnable(Z)V

    .line 118
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 122
    :cond_3
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 123
    invoke-virtual {p0, v9}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setManualFocusSupported(Z)V

    .line 124
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentFocusScale(Landroid/hardware/Camera$Parameters;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentFocusScale(I)V

    .line 127
    :cond_4
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HDR_1X:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setHDR1XSupported(Z)V

    .line 129
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CDS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCDSSupported(Z)V

    .line 131
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setTouchAfAecSupported(Z)V

    .line 133
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 134
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setBokehSupported(Z)V

    .line 135
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getBokehMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setBokehMode(Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;)V

    .line 136
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getBokehBlurValue(Landroid/hardware/Camera$Parameters;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setCurrentBokehBlurValue(I)V

    .line 137
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getSelfieBokehEnable(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setSelfieBokeh(Z)V

    .line 139
    :cond_5
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH_MPO:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setBokehMPOSupported(Z)V

    .line 141
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HFR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setHFRSupported(Z)V

    .line 142
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentHFR(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setHFR(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)V

    .line 143
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FRONT_CAMERA_MIRROR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setFlipModeSupported(Z)V

    .line 144
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentFlipMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    goto/16 :goto_0

    .line 62
    .end local v0    # "paramPictureSize":Landroid/hardware/Camera$Size;
    .end local v4    # "wbGain":[D
    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->setZoomRatio(F)V

    goto/16 :goto_1
.end method


# virtual methods
.method public applyCaptureSettingsToParameter(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .line 159
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->mCameraSettingExtension:Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;->applyCaptureSettings(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V

    .line 161
    :cond_0
    return-void
.end method

.method public applyPreviewSettingsToParameter(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    if-eqz p2, :cond_0

    .line 166
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;->mCameraSettingExtension:Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;->applyPreviewSettings(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V

    .line 168
    :cond_0
    return-void
.end method

.method public copy()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraSettings;

    invoke-direct {v0, p0}, Lcom/android/ex/camera2/portability/AndroidCameraSettings;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraSettings;)V

    return-object v0
.end method
