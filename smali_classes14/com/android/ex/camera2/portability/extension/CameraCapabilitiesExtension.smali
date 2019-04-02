.class public abstract Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
.super Ljava/lang/Object;
.source "CameraCapabilitiesExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract buildExifInfo(Lcom/android/camera/exif/ExifInterface;Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V
    .param p1    # Lcom/android/camera/exif/ExifInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract buildExtraFocusModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildExtraSceneModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildExtraWBModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildHFRMap(Ljava/util/HashMap;Landroid/hardware/Camera$Parameters;)V
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildISO(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildManualExposure(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildManualFocus(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildManualWhiteBalance(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildMetering(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")V"
        }
    .end annotation
.end method

.method public abstract flipmodeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
.end method

.method public abstract getBokehBlurValue(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getBokehMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentExposureTime(Landroid/hardware/Camera$Parameters;)D
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentFlipMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentFocusScale(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentHFR(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentISO(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentManualWBMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
.end method

.method public abstract getCurrentWBCCT(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCurrentWBGain(Landroid/hardware/Camera$Parameters;)[D
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getCustomNumMic()I
.end method

.method public abstract getMaxManualExposureTime(Landroid/hardware/Camera$Parameters;)D
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMaxManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMaxManualFocusScale(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMaxManualISO(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMaxManualWBCCT(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMaxManualWBGain(Landroid/hardware/Camera$Parameters;)D
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMinManualExposureTime(Landroid/hardware/Camera$Parameters;)D
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMinManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMinManualFocusScale(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMinManualISO(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMinManualWBCCT(Landroid/hardware/Camera$Parameters;)I
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMinManualWBGain(Landroid/hardware/Camera$Parameters;)D
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getPreferredPictureSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreferredPreviewSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelfieBokehEnable(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract hfrFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
.end method

.method public abstract isDISEnabled(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isEISEnabled(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isHFRSettingSupportedByEncoder(IILcom/android/ex/camera2/portability/CameraCapabilities$HFR;I)Z
    .param p3    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportDualCamModeConfig()Z
.end method

.method public abstract isSupportedAutoHDR(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedBeauty(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedBokeh(Landroid/hardware/Camera$Parameters;)Z
.end method

.method public abstract isSupportedBokehMPO(Landroid/hardware/Camera$Parameters;)Z
.end method

.method public abstract isSupportedCDS(Landroid/hardware/Camera$Parameters;)Z
.end method

.method public abstract isSupportedCustomizeMaxPreviewRateSet(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedDIS(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedEIS(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedHDR1X(Landroid/hardware/Camera$Parameters;)Z
.end method

.method public abstract isSupportedHFR(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedHWRaotate(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedLongShot(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedManualFocus(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedMeteringMode(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedOptiZoom(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedPIPCustomizePreviewRate(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedPIPCustomizeSize(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSupportedSurroundSound(Ljava/util/EnumSet;Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)Z
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;",
            ">;",
            "Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract isSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Z
.end method

.method public abstract isSupportedZSL(Landroid/hardware/Camera$Parameters;)Z
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isoFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;
.end method

.method public abstract manualExposureModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
.end method

.method public abstract manualFocusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
.end method

.method public abstract manualWBModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
.end method

.method public abstract meteringModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
.end method

.method public abstract setDualCamModeConfig(I)V
.end method

.method public abstract setOzoDynamicFocusMode(Landroid/media/MediaRecorder;I)V
    .param p1    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setOzoMode(Landroid/media/MediaRecorder;I)V
    .param p1    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setQCFlipMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)Ljava/lang/String;
.end method

.method public abstract stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;
.end method

.method public abstract stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;)Ljava/lang/String;
.end method

.method public abstract stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)Ljava/lang/String;
.end method

.method public abstract stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)Ljava/lang/String;
.end method

.method public abstract stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;)Ljava/lang/String;
.end method

.method public abstract stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)Ljava/lang/String;
.end method
