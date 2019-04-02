.class public Lcom/android/ex/camera2/portability/extension/QCCameraSettingExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;
.source "QCCameraSettingExtension.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "QCCamSetExt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraSettingExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/extension/CameraSettingExtension;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public applyCaptureSettings(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v4, 0x11

    .line 26
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v1

    .line 27
    .local v1, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v0

    .line 28
    .local v0, "captureIntent":Lcom/android/ex/camera2/portability/CaptureIntent;
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->BURST:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v2, :cond_2

    .line 29
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "long-shot"

    const-string v3, "on"

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 35
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const-string v2, "auto-hdr-enable"

    const-string v3, "disable"

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->PANORAMA:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v2, :cond_6

    .line 39
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    const-string v2, "long-shot"

    const-string v3, "on"

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_3
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoFormats()Ljava/util/Set;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    invoke-virtual {p3, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 50
    :cond_4
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 51
    const-string v2, "auto-hdr-enable"

    const-string v3, "disable"

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    goto :goto_0

    .line 56
    :cond_6
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v2, :cond_8

    .line 57
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-nez v2, :cond_1

    .line 65
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoFormats()Ljava/util/Set;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 66
    invoke-virtual {p3, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 68
    :cond_7
    const-string v2, "ae-bracket-hdr"

    const-string v3, "AE-Arcsoft_HDR"

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "num-snaps-per-shutter"

    const/4 v3, 0x3

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 70
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const-string v2, "auto-hdr-enable"

    const-string v3, "disable"

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_8
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v2, :cond_a

    .line 76
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoFormats()Ljava/util/Set;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 77
    invoke-virtual {p3, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 80
    :cond_9
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const-string v2, "auto-hdr-enable"

    const-string v3, "disable"

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_a
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v2, :cond_d

    .line 84
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 85
    const-string v2, "long-shot"

    const-string v3, "on"

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_b
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoFormats()Ljava/util/Set;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 90
    invoke-virtual {p3, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 93
    :cond_c
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "auto-hdr-enable"

    const-string v3, "disable"

    invoke-virtual {p3, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_d
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v2, :cond_e

    .line 97
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BEAUTY:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoFormats()Ljava/util/Set;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p3, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    goto/16 :goto_0

    .line 101
    :cond_e
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->PHOTO_UW:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v2, :cond_1

    .line 102
    invoke-virtual {p3, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    goto/16 :goto_0
.end method

.method public applyPreviewSettings(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p1, "settings"    # Lcom/android/ex/camera2/portability/CameraSettings;
    .param p2, "cameraCapabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v8, 0x100

    const/4 v7, 0x1

    .line 108
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isZSLEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 110
    const-string v5, "zsl"

    const-string v6, "on"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v5, "camera-mode"

    invoke-virtual {p3, v5, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 112
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->OPTI_ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isOptiZoomEnabled()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 114
    const-string v5, "opti-zoom"

    const-string v6, "opti-zoom-on"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-nez v5, :cond_1

    .line 127
    const-string v5, "num-snaps-per-shutter"

    invoke-virtual {p3, v5, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 128
    const-string v5, "ae-bracket-hdr"

    const-string v6, "Off"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    const-string v6, "auto-hdr-enable"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isAutoHDREnabled()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "enable"

    :goto_1
    invoke-virtual {p3, v6, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_2
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoFormats()Ljava/util/Set;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    invoke-virtual {p3, v8}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 140
    :cond_3
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BEAUTY:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 141
    const-string v5, "access-nfi-captureonly"

    const-string v6, "0"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v5, "picselfie-enable"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isSelfieBokeh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isBeautyEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 144
    const-string v5, "access-nfi-enable"

    const-string v6, "1"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v5, "flawless-face-enable"

    const-string v6, "1"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v5, "access-nfi-skin"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentBeautySkin()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 147
    const-string v5, "access-nfi-white"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentBeautyWhite()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 148
    const-string v5, "flawless-face-level"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlawlessLevel()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 159
    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 161
    .local v1, "disableLongSHot":Z
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v5, v6, :cond_5

    .line 162
    const/4 v1, 0x1

    .line 165
    :cond_5
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 166
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentBokehMode()Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->NORMAL:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    if-ne v5, v6, :cond_17

    .line 167
    const-string v5, "bokeh-mode"

    const-string v6, "1"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v5, "bokeh-blur-value"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentBokehBlurValue()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 169
    const-string v5, "bokeh-picture-size"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPicSizeToParamStrings()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_6
    :goto_3
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH_MPO:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 176
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentBokehMPOMode()Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    move-result-object v5

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;->NORMAL:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    if-ne v5, v6, :cond_7

    .line 177
    const-string v5, "bokeh-mpo-mode"

    const-string v6, "1"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_7
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 182
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getManualFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    move-result-object v3

    .line 183
    .local v3, "manualFocusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    if-eqz v3, :cond_19

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    if-eq v3, v5, :cond_19

    .line 184
    const-string v5, "manual"

    invoke-virtual {p3, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 185
    const-string v5, "manual-focus-pos-type"

    invoke-static {v3}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->getManualFocusType(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 186
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->SCALE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    if-ne v3, v5, :cond_18

    .line 187
    const-string v5, "manual-focus-position"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusScale()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 191
    :cond_8
    :goto_4
    const/4 v1, 0x1

    .line 197
    .end local v3    # "manualFocusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    :cond_9
    :goto_5
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_EXPOSURE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 198
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getManualExposureMode()Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    move-result-object v2

    .line 199
    .local v2, "manualExposureMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->EXP_TIME_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    if-ne v2, v5, :cond_1a

    .line 200
    const-string v5, "iso"

    const-string v6, "manual"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v5, "continuous-iso"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentISO()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 202
    const-string v5, "exposure-time"

    const-string v6, "0"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v1, 0x1

    .line 219
    .end local v2    # "manualExposureMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    :cond_a
    :goto_6
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_WB:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 220
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getManualWBMode()Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    move-result-object v4

    .line 221
    .local v4, "manualWBMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    if-eqz v4, :cond_1e

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    if-eq v4, v5, :cond_1e

    .line 222
    const-string v5, "manual"

    invoke-virtual {p3, v5}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 223
    const-string v5, "manual-wb-type"

    invoke-static {v4}, Lcom/android/ex/camera2/portability/extension/field/Qualcomm;->getManualWBType(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;)I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 225
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->COLOR_TEMPERATURE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    if-ne v4, v5, :cond_1d

    .line 226
    const-string v5, "manual-wb-value"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentWBCCT()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 236
    :cond_b
    :goto_7
    const/4 v1, 0x1

    .line 242
    .end local v4    # "manualWBMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    :cond_c
    :goto_8
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 243
    const-string v6, "long-shot"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isLongShotEnabled()Z

    move-result v5

    if-eqz v5, :cond_1f

    if-nez v1, :cond_1f

    const-string v5, "on"

    :goto_9
    invoke-virtual {p3, v6, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_d
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 247
    const-string v6, "dis"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isDISEnabled()Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, "enable"

    :goto_a
    invoke-virtual {p3, v6, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_e
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 251
    const-string v5, "auto-exposure"

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_f
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CDS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 255
    const-string v6, "cds-mode"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isCDSEnabled()Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "on"

    :goto_b
    invoke-virtual {p3, v6, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_10
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 259
    const-string v6, "touch-af-aec"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->isTouchAfAecEnabled()Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "touch-on"

    :goto_c
    invoke-virtual {p3, v6, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_11
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HFR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 263
    const-string v5, "video-hfr"

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentHFR()Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_12
    return-void

    .line 116
    .end local v1    # "disableLongSHot":Z
    :cond_13
    const-string v5, "opti-zoom"

    const-string v6, "opti-zoom-off"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_14
    const-string v5, "zsl"

    const-string v6, "off"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "camera-mode"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 122
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->OPTI_ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {p2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    const-string v5, "opti-zoom"

    const-string v6, "opti-zoom-off"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_15
    const-string v5, "disable"

    goto/16 :goto_1

    .line 150
    :cond_16
    const-string v5, "access-nfi-enable"

    const-string v6, "0"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v5, "flawless-face-enable"

    const-string v6, "0"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 171
    .restart local v1    # "disableLongSHot":Z
    :cond_17
    const-string v5, "bokeh-mode"

    const-string v6, "0"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 188
    .restart local v3    # "manualFocusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    :cond_18
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->DIOPTER_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    if-ne v3, v5, :cond_8

    .line 189
    const-string v5, "manual-focus-position"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusDiopter()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 193
    :cond_19
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 204
    .end local v3    # "manualFocusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    .restart local v2    # "manualExposureMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    :cond_1a
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->ISO_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    if-ne v2, v5, :cond_1b

    .line 205
    const-string v5, "exposure-time"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentExposureTime()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v5, "iso"

    const-string v6, "auto"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 208
    :cond_1b
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->USER_SETTING:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    if-ne v2, v5, :cond_1c

    .line 209
    const-string v5, "iso"

    const-string v6, "manual"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v5, "continuous-iso"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentISO()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 211
    const-string v5, "exposure-time"

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentExposureTime()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 214
    :cond_1c
    const-string v5, "iso"

    const-string v6, "auto"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v5, "exposure-time"

    const-string v6, "0"

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 227
    .end local v2    # "manualExposureMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    .restart local v4    # "manualWBMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    :cond_1d
    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->RBGB_GAINS:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    if-ne v4, v5, :cond_b

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentWBRGain()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentWBBGain()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentWBGGain()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v5, "manual-wb-value"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 238
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1e
    invoke-virtual {p2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraSettings;->getWhiteBalance()Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 243
    .end local v4    # "manualWBMode":Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    :cond_1f
    const-string v5, "off"

    goto/16 :goto_9

    .line 247
    :cond_20
    const-string v5, "disable"

    goto/16 :goto_a

    .line 255
    :cond_21
    const-string v5, "off"

    goto/16 :goto_b

    .line 259
    :cond_22
    const-string v5, "touch-off"

    goto/16 :goto_c
.end method
