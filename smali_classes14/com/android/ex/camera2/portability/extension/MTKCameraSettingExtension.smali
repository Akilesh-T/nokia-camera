.class public Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
.source "MTKCameraSettingExtension.java"


# static fields
.field private static final FOCUS_MODE_CONTINUOUS:Ljava/lang/String; = "continuous-picture"

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "MTKCamSetExt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;-><init>()V

    .line 27
    return-void
.end method

.method private static closeDynamicFrameRate(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 190
    const-string v2, "isDynamicFrameRateSupported"

    invoke-static {p0, v2, v3, v3}, Lcom/android/camera/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 192
    .local v1, "support":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 193
    const/4 v0, 0x0

    .line 199
    .end local v1    # "support":Ljava/lang/Object;
    .local v0, "isSupport":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 200
    const-string v2, "setDynamicFrameRate"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v2, v3, v4}, Lcom/android/camera/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeDynamicFrameRate support = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    return-void

    .line 194
    .end local v0    # "isSupport":Z
    .restart local v1    # "support":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 195
    const/4 v0, 0x0

    .restart local v0    # "isSupport":Z
    goto :goto_0

    .line 197
    .end local v0    # "isSupport":Z
    :cond_2
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "support":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .restart local v0    # "isSupport":Z
    goto :goto_0
.end method

.method private static setPipPreviewFrameRate(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x0

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "pipFrameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraSettings;->isZSLEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, "result":Ljava/lang/Object;
    const-string v3, "getPIPFrameRateZSDOn"

    invoke-static {p1, v3, v4, v4}, Lcom/android/camera/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 169
    check-cast v1, Ljava/util/List;

    .line 171
    :cond_0
    sget-object v3, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPIPFrameRateZSDOn pipFrameRates "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    :goto_0
    invoke-static {p1}, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;->closeDynamicFrameRate(Landroid/hardware/Camera$Parameters;)V

    .line 182
    if-eqz v1, :cond_1

    .line 183
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 184
    .local v0, "backFramerate":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 187
    .end local v0    # "backFramerate":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 173
    .end local v2    # "result":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    .line 174
    .restart local v2    # "result":Ljava/lang/Object;
    const-string v3, "getPIPFrameRateZSDOff"

    invoke-static {p1, v3, v4, v4}, Lcom/android/camera/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_3

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 176
    check-cast v1, Ljava/util/List;

    .line 178
    :cond_3
    sget-object v3, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPIPFrameRateZSDOff pipFrameRates = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setPreviewFrameRate2Max(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 156
    :cond_0
    if-eqz v0, :cond_1

    .line 157
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 158
    .local v1, "max":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 159
    sget-object v2, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewFrameRate2Max max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " frameRates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    .end local v1    # "max":Ljava/lang/Integer;
    :cond_1
    return-void
.end method


# virtual methods
.method public applyCaptureSettings(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 31
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v1

    .line 33
    .local v1, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v0

    .line 34
    .local v0, "captureIntent":Lcom/android/ex/camera2/portability/CaptureIntent;
    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->BURST:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v3, :cond_1

    .line 35
    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const-string v3, "burst-num"

    const/16 v4, 0x28

    invoke-virtual {p3, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 38
    const-string v3, "cap-mode"

    const-string v4, "continuousshot"

    invoke-virtual {p3, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 42
    .local v2, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    const-string v3, "continuous-picture"

    .line 43
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 44
    const-string v3, "continuous-picture"

    invoke-virtual {p3, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 55
    .end local v2    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->PANORAMA:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v0, v3, :cond_0

    .line 48
    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v0, v3, :cond_0

    .line 52
    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v3, :cond_0

    .line 53
    const-string v3, "burst-num"

    const/4 v4, 0x1

    invoke-virtual {p3, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public applyPreviewSettings(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 15
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v4

    .line 61
    .local v4, "captureIntent":Lcom/android/ex/camera2/portability/CaptureIntent;
    invoke-virtual/range {p2 .. p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v9

    .line 62
    .local v9, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    const-string v10, "mtk-cam-mode"

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 63
    sget-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isZSLEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 65
    const-string v10, "zsd-mode"

    const-string v11, "on"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoFormats()Ljava/util/Set;

    move-result-object v10

    const/16 v11, 0x100

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 72
    const/16 v10, 0x100

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 75
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v10

    sget-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v10, v11, :cond_d

    .line 76
    const-string v10, "scene-mode"

    const-string v11, "hdr"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v10, "zsd-mode"

    const-string v11, "off"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_2
    :goto_1
    sget-object v10, Lcom/android/ex/camera2/portability/CaptureIntent;->PANORAMA:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v4, v10, :cond_4

    .line 89
    sget-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 90
    const-string v10, "zsd-mode"

    const-string v11, "off"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v10, "burst-num"

    const/16 v11, 0x28

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 93
    :cond_3
    const-string v10, "cap-mode"

    const-string v11, "autorama"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_4
    sget-object v10, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v4, v10, :cond_5

    .line 97
    const-string v10, "cap-mode"

    const-string v11, "face_beauty"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_5
    sget-object v10, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v4, v10, :cond_6

    .line 101
    const-string v10, "cap-mode"

    const-string v11, "normal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isCustomizePipFpsEnable()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 105
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;->setPipPreviewFrameRate(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/hardware/Camera$Parameters;)V

    .line 113
    :goto_2
    sget-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getManualFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    move-result-object v5

    .line 115
    .local v5, "manualFocusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    if-eqz v5, :cond_13

    sget-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    if-eq v5, v10, :cond_13

    .line 116
    const-string v10, "manual"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 117
    const-string v10, "afeng-min-focus-step"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "minStepS":Ljava/lang/String;
    const-string v10, "afeng-max-focus-step"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "maxStepS":Ljava/lang/String;
    if-nez v7, :cond_10

    const/4 v3, 0x0

    .line 120
    .local v3, "MIN_STEP":I
    :goto_3
    if-nez v6, :cond_11

    const/16 v2, 0x3ff

    .line 121
    .local v2, "MAX_STEP":I
    :goto_4
    sget-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->SCALE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    if-eq v10, v5, :cond_7

    sget-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->DIOPTER_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    if-ne v10, v5, :cond_a

    .line 123
    :cond_7
    sget-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->SCALE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    if-ne v10, v5, :cond_12

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusScale()I

    move-result v8

    .line 126
    .local v8, "pos":I
    :goto_5
    if-ge v8, v3, :cond_8

    .line 127
    move v8, v3

    .line 129
    :cond_8
    if-le v8, v2, :cond_9

    .line 130
    move v8, v2

    .line 132
    :cond_9
    sget-object v10, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MF mode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", pos  = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    const-string v10, "setFocusEngStep"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sub-int v14, v2, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p3

    invoke-static {v0, v10, v11, v12}, Lcom/android/camera/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v2    # "MAX_STEP":I
    .end local v3    # "MIN_STEP":I
    .end local v5    # "manualFocusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    .end local v6    # "maxStepS":Ljava/lang/String;
    .end local v7    # "minStepS":Ljava/lang/String;
    .end local v8    # "pos":I
    :cond_a
    :goto_6
    sget-object v10, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 141
    const-string v11, "eis25-mode"

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isEISEnabled()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v10, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 143
    :cond_b
    return-void

    .line 67
    :cond_c
    const-string v10, "zsd-mode"

    const-string v11, "off"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_d
    const-string v10, "video-hdr"

    const-string v11, "off"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v10

    sget-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v10, v11, :cond_2

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isCusPreviewMaxFPSEnable()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 107
    invoke-static/range {p3 .. p3}, Lcom/android/ex/camera2/portability/extension/MTKCameraSettingExtension;->setPreviewFrameRate2Max(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2

    .line 109
    :cond_f
    const/16 v10, 0x1e

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_2

    .line 119
    .restart local v5    # "manualFocusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    .restart local v6    # "maxStepS":Ljava/lang/String;
    .restart local v7    # "minStepS":Ljava/lang/String;
    :cond_10
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 120
    .restart local v3    # "MIN_STEP":I
    :cond_11
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_4

    .line 125
    .restart local v2    # "MAX_STEP":I
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusDiopter()D

    move-result-wide v10

    double-to-int v8, v10

    goto/16 :goto_5

    .line 136
    .end local v2    # "MAX_STEP":I
    .end local v3    # "MIN_STEP":I
    .end local v6    # "maxStepS":Ljava/lang/String;
    .end local v7    # "minStepS":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 141
    .end local v5    # "manualFocusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    :cond_14
    const/4 v10, 0x0

    goto :goto_7
.end method
