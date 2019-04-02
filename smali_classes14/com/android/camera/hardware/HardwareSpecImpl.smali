.class public Lcom/android/camera/hardware/HardwareSpecImpl;
.super Ljava/lang/Object;
.source "HardwareSpecImpl.java"

# interfaces
.implements Lcom/android/camera/hardware/HardwareSpec;


# instance fields
.field private final mIsAutoHDRSupported:Z

.field private final mIsBeautySupported:Z

.field private final mIsFlashSupported:Z

.field private final mIsFrontCameraSupported:Z

.field private final mIsHdrPlusSupported:Z

.field private final mIsHdrSupported:Z

.field private final mIsLogicCameraInUsed:Z

.field private final mIsLogicCameraSupported:Z

.field private final mIsOptiZoomSupported:Z

.field private final mIsSingleSurroundSoundOnly:Z

.field private final mIsSlaveCameraSupported:Z

.field private final mIsSurroundSoundSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V
    .locals 6
    .param p1, "provider"    # Lcom/android/camera/app/CameraProvider;
    .param p2, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "featureConfig"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .param p4, "isFrontCamera"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-interface {p1}, Lcom/android/camera/app/CameraProvider;->getFirstFrontCameraId()I

    move-result v1

    if-eq v1, v5, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsFrontCameraSupported:Z

    .line 89
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {p2, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsHdrSupported:Z

    .line 92
    if-eqz p4, :cond_1

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 94
    .local v0, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_1
    invoke-virtual {p3, v0}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->getHdrPlusSupportLevel(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    move-result-object v1

    sget-object v4, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    if-eq v1, v4, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsHdrPlusSupported:Z

    .line 98
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isFlashSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsFlashSupported:Z

    .line 100
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isAutoHdrSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsAutoHDRSupported:Z

    .line 102
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isBeautySupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsBeautySupported:Z

    .line 104
    invoke-interface {p1}, Lcom/android/camera/app/CameraProvider;->getSecondBackCameraId()I

    move-result v1

    if-eq v1, v5, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsSlaveCameraSupported:Z

    .line 106
    invoke-interface {p1}, Lcom/android/camera/app/CameraProvider;->getLogicCameraBackId()I

    move-result v1

    if-eq v1, v5, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsLogicCameraSupported:Z

    .line 108
    iput-boolean v3, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsLogicCameraInUsed:Z

    .line 110
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isOptiZoomSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsOptiZoomSupported:Z

    .line 112
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isSurroundSoundSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsSurroundSoundSupported:Z

    .line 114
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedSurroundSound()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_5

    :goto_5
    iput-boolean v2, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsSingleSurroundSoundOnly:Z

    .line 115
    return-void

    .end local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :cond_0
    move v1, v3

    .line 86
    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_1

    .restart local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :cond_2
    move v1, v3

    .line 94
    goto :goto_2

    :cond_3
    move v1, v3

    .line 104
    goto :goto_3

    :cond_4
    move v1, v3

    .line 106
    goto :goto_4

    :cond_5
    move v2, v3

    .line 114
    goto :goto_5
.end method

.method public constructor <init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;ZZ)V
    .locals 6
    .param p1, "provider"    # Lcom/android/camera/app/CameraProvider;
    .param p2, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "featureConfig"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .param p4, "isFrontCamera"    # Z
    .param p5, "useLogicCamIfAvailale"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p1}, Lcom/android/camera/app/CameraProvider;->getFirstFrontCameraId()I

    move-result v1

    if-eq v1, v5, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsFrontCameraSupported:Z

    .line 52
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {p2, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsHdrSupported:Z

    .line 55
    if-eqz p4, :cond_1

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 57
    .local v0, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_1
    invoke-virtual {p3, v0}, Lcom/android/camera/one/config/OneCameraFeatureConfig;->getHdrPlusSupportLevel(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    move-result-object v1

    sget-object v4, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    if-eq v1, v4, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsHdrPlusSupported:Z

    .line 61
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isFlashSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsFlashSupported:Z

    .line 63
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isAutoHdrSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsAutoHDRSupported:Z

    .line 65
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isBeautySupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsBeautySupported:Z

    .line 67
    invoke-interface {p1}, Lcom/android/camera/app/CameraProvider;->getSecondBackCameraId()I

    move-result v1

    if-eq v1, v5, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsSlaveCameraSupported:Z

    .line 69
    invoke-interface {p1}, Lcom/android/camera/app/CameraProvider;->getLogicCameraBackId()I

    move-result v1

    if-eq v1, v5, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsLogicCameraSupported:Z

    .line 71
    iget-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsLogicCameraSupported:Z

    if-eqz v1, :cond_5

    if-eqz p5, :cond_5

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsLogicCameraInUsed:Z

    .line 73
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isOptiZoomSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsOptiZoomSupported:Z

    .line 75
    invoke-direct {p0, p2}, Lcom/android/camera/hardware/HardwareSpecImpl;->isSurroundSoundSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsSurroundSoundSupported:Z

    .line 77
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedSurroundSound()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_6

    :goto_6
    iput-boolean v2, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsSingleSurroundSoundOnly:Z

    .line 78
    return-void

    .end local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :cond_0
    move v1, v3

    .line 49
    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_1

    .restart local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :cond_2
    move v1, v3

    .line 57
    goto :goto_2

    :cond_3
    move v1, v3

    .line 67
    goto :goto_3

    :cond_4
    move v1, v3

    .line 69
    goto :goto_4

    :cond_5
    move v1, v3

    .line 71
    goto :goto_5

    :cond_6
    move v2, v3

    .line 77
    goto :goto_6
.end method

.method private isAutoHdrSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z
    .locals 1
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 175
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    return v0
.end method

.method private isBeautySupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z
    .locals 1
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 182
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BEAUTY:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    return v0
.end method

.method private isFlashSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z
    .locals 1
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 167
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 168
    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOptiZoomSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z
    .locals 1
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 211
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->OPTI_ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    return v0
.end method

.method private isSurroundSoundSupported(Lcom/android/ex/camera2/portability/CameraCapabilities;)Z
    .locals 1
    .param p1, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 204
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsAutoHDRSupported:Z

    return v0
.end method

.method public isBeautySupported()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsBeautySupported:Z

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsFlashSupported:Z

    return v0
.end method

.method public isFrontCameraSupported()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsFrontCameraSupported:Z

    return v0
.end method

.method public isHdrPlusSupported()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsHdrPlusSupported:Z

    return v0
.end method

.method public isHdrSupported()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsHdrSupported:Z

    return v0
.end method

.method public isLogicCamInUse()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsLogicCameraInUsed:Z

    return v0
.end method

.method public isLogicCamSupported()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsLogicCameraSupported:Z

    return v0
.end method

.method public isOptiZoomSupported()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsOptiZoomSupported:Z

    return v0
.end method

.method public isSingleSurroundSoundOnly()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsSingleSurroundSoundOnly:Z

    return v0
.end method

.method public isSlaveCamSupported()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsSlaveCameraSupported:Z

    return v0
.end method

.method public isSurroundSoundSupported()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/camera/hardware/HardwareSpecImpl;->mIsSurroundSoundSupported:Z

    return v0
.end method
