.class public Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;
.super Lcom/android/ex/camera2/portability/CameraCapabilities;
.source "AndroidCamera2Capabilities.java"


# static fields
.field private static TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AndCam2Capabs"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 13
    .param p1, "p"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    const/4 v7, 0x0

    .line 42
    new-instance v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    invoke-direct {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;-><init>()V

    invoke-direct {p0, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;-><init>(Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)V

    .line 44
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 46
    .local v4, "s":Landroid/hardware/camera2/params/StreamConfigurationMap;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/util/Range;

    array-length v9, v5

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v3, v5, v8

    .line 47
    .local v3, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPreviewFpsRange:Ljava/util/ArrayList;

    const/4 v6, 0x2

    new-array v11, v6, [I

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v11, v7

    const/4 v12, 0x1

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v11, v12

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 51
    .end local v3    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPreviewSizes:Ljava/util/ArrayList;

    const-class v6, Landroid/graphics/SurfaceTexture;

    .line 52
    invoke-virtual {v4, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v6

    .line 51
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/ex/camera2/portability/Size;->buildListFromAndroidSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v6

    array-length v8, v6

    move v5, v7

    :goto_1
    if-ge v5, v8, :cond_1

    aget v2, v6, v5

    .line 54
    .local v2, "format":I
    iget-object v7, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 58
    .end local v2    # "format":I
    :cond_1
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedVideoSizes:Ljava/util/ArrayList;

    const-class v6, Landroid/media/MediaRecorder;

    .line 59
    invoke-virtual {v4, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v6

    .line 58
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/ex/camera2/portability/Size;->buildListFromAndroidSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPhotoSizes:Ljava/util/ArrayList;

    const/16 v6, 0x100

    .line 63
    invoke-virtual {v4, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    .line 62
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/ex/camera2/portability/Size;->buildListFromAndroidSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPhotoFormats:Ljava/util/TreeSet;

    iget-object v6, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedPreviewFormats:Ljava/util/TreeSet;

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->buildSceneModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->buildFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->buildFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->buildWhiteBalances(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 74
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 75
    .local v0, "ecRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMinExposureCompensation:I

    .line 76
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxExposureCompensation:I

    .line 78
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    .line 79
    .local v1, "ecStep":Landroid/util/Rational;
    invoke-virtual {v1}, Landroid/util/Rational;->getNumerator()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/util/Rational;->getDenominator()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mExposureCompensationStep:F

    .line 81
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfFacesSupported:I

    .line 82
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfMeteringArea:I

    .line 84
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxZoomRatio:F

    .line 90
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {p0, v5}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfFocusAreas:I

    .line 92
    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfFocusAreas:I

    if-lez v5, :cond_2

    .line 93
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_2
    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxNumOfMeteringArea:I

    if-lez v5, :cond_3

    .line 97
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3
    iget v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mMaxZoomRatio:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 101
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFeatures:Ljava/util/EnumSet;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    return-void
.end method

.method private buildFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6
    .param p1, "p"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 126
    .local v0, "expose":I
    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFlashModes:Ljava/util/EnumSet;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "expose":I
    :cond_1
    return-void
.end method

.method private buildFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6
    .param p1, "p"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 134
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 135
    .local v2, "focuses":[I
    if-eqz v2, :cond_1

    .line 136
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 137
    .local v1, "focus":I
    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->focusModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    .line 138
    .local v0, "equiv":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v0, :cond_0

    .line 139
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedFocusModes:Ljava/util/EnumSet;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "equiv":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v1    # "focus":I
    :cond_1
    return-void
.end method

.method private buildSceneModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6
    .param p1, "p"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 108
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 109
    .local v2, "scenes":[I
    if-eqz v2, :cond_1

    .line 110
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 111
    .local v1, "scene":I
    invoke-static {v1}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->sceneModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    .line 112
    .local v0, "equiv":Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    if-eqz v0, :cond_0

    .line 113
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedSceneModes:Ljava/util/EnumSet;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "equiv":Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .end local v1    # "scene":I
    :cond_1
    return-void
.end method

.method private buildWhiteBalances(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6
    .param p1, "p"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 146
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 147
    .local v1, "bals":[I
    if-eqz v1, :cond_1

    .line 148
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v0, v1, v3

    .line 149
    .local v0, "bal":I
    invoke-static {v0}, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->whiteBalanceFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v2

    .line 150
    .local v2, "equiv":Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    if-eqz v2, :cond_0

    .line 151
    iget-object v5, p0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->mSupportedWhiteBalances:Ljava/util/EnumSet;

    invoke-virtual {v5, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "bal":I
    .end local v2    # "equiv":Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    :cond_1
    return-void
.end method

.method public static focusModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .locals 3
    .param p0, "fm"    # I

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_0

    .line 181
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert from API 2 focus mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 170
    :pswitch_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 172
    :pswitch_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_VIDEO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 174
    :pswitch_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->EXTENDED_DOF:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 176
    :pswitch_4
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 179
    :pswitch_5
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MACRO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static sceneModeFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 3
    .param p0, "sm"    # I

    .prologue
    .line 194
    packed-switch p0, :pswitch_data_0

    .line 231
    :pswitch_0
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert from API 2 scene mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 196
    :pswitch_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 198
    :pswitch_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ACTION:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 200
    :pswitch_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BARCODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 202
    :pswitch_4
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->BEACH:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 204
    :pswitch_5
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->CANDLELIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 206
    :pswitch_6
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->FIREWORKS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 208
    :pswitch_7
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->LANDSCAPE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 210
    :pswitch_8
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 213
    :pswitch_9
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PARTY:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 215
    :pswitch_a
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->PORTRAIT:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 217
    :pswitch_b
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SNOW:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 219
    :pswitch_c
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SPORTS:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 221
    :pswitch_d
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->STEADYPHOTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 223
    :pswitch_e
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->SUNSET:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 225
    :pswitch_f
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->THEATRE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 227
    :pswitch_10
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_f
        :pswitch_4
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_6
        :pswitch_c
        :pswitch_9
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public static whiteBalanceFromInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;
    .locals 3
    .param p0, "wb"    # I

    .prologue
    .line 244
    packed-switch p0, :pswitch_data_0

    .line 262
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCamera2Capabilities;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert from API 2 white balance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 246
    :pswitch_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    goto :goto_0

    .line 248
    :pswitch_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    goto :goto_0

    .line 250
    :pswitch_2
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->DAYLIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    goto :goto_0

    .line 252
    :pswitch_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    goto :goto_0

    .line 254
    :pswitch_4
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->INCANDESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    goto :goto_0

    .line 256
    :pswitch_5
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->SHADE:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    goto :goto_0

    .line 258
    :pswitch_6
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->TWILIGHT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    goto :goto_0

    .line 260
    :pswitch_7
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->WARM_FLUORESCENT:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
