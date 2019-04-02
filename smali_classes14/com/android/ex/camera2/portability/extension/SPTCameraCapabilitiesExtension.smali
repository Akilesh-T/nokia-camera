.class public Lcom/android/ex/camera2/portability/extension/SPTCameraCapabilitiesExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;
.source "SPTCameraCapabilitiesExtension.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "SPTCamCapExt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/SPTCameraCapabilitiesExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public buildExifInfo(Lcom/android/camera/exif/ExifInterface;Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V
    .locals 0
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
    .param p3, "metaData"    # Lcom/android/camera/util/ExifUtil$CaptureMetaData;

    .prologue
    .line 206
    return-void
.end method

.method public buildExtraFocusModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focusMode"    # Ljava/lang/String;
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

    .prologue
    .line 151
    .local p1, "supportedFocusModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    return-void
.end method

.method public buildExtraSceneModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sceneMode"    # Ljava/lang/String;
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

    .prologue
    .line 146
    .local p1, "supportedSceneModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;>;"
    return-void
.end method

.method public buildExtraWBModes(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wbMode"    # Ljava/lang/String;
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

    .prologue
    .line 156
    .local p1, "supportedWBModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;>;"
    return-void
.end method

.method public buildHFRMap(Ljava/util/HashMap;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
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

    .prologue
    .line 131
    .local p1, "supportedHFRMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;>;"
    return-void
.end method

.method public buildISO(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
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

    .prologue
    .line 181
    .local p1, "supportedISO":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;>;"
    return-void
.end method

.method public buildManualExposure(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
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

    .prologue
    .line 191
    .local p1, "supportedManualExposure":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;>;"
    return-void
.end method

.method public buildManualFocus(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
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

    .prologue
    .line 186
    .local p1, "supportedManualFocus":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;>;"
    return-void
.end method

.method public buildManualWhiteBalance(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
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

    .prologue
    .line 196
    .local p1, "supportedManualWB":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;>;"
    return-void
.end method

.method public buildMetering(Ljava/util/EnumSet;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;
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

    .prologue
    .line 201
    .local p1, "meteringModes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;>;"
    return-void
.end method

.method public flipmodeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBokehBlurValue(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public getBokehMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 425
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    return-object v0
.end method

.method public getCurrentExposureTime(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 280
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentFlipMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 275
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentFocusScale(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentHFR(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 320
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    return-object v0
.end method

.method public getCurrentISO(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentManualWBMode(Landroid/hardware/Camera$Parameters;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentWBCCT(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentWBGain(Landroid/hardware/Camera$Parameters;)[D
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomNumMic()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxManualExposureTime(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxManualFocusScale(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxManualISO(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxManualWBCCT(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxManualWBGain(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinManualExposureTime(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 230
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinManualFocusDiopter(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 220
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinManualFocusScale(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getMinManualISO(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getMinManualWBCCT(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getMinManualWBGain(Landroid/hardware/Camera$Parameters;)D
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPreferredPictureSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
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

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredPreviewSizeListForPIP(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
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

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelfieBokehEnable(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public hfrFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDISEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public isEISEnabled(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public isHFRSettingSupportedByEncoder(IILcom/android/ex/camera2/portability/CameraCapabilities$HFR;I)Z
    .locals 1
    .param p1, "videWidth"    # I
    .param p2, "videoHight"    # I
    .param p3, "hfrMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "videoCodec"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDualCamModeConfig()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedAutoHDR(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedBeauty(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedBokeh(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedBokehMPO(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedCDS(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedCustomizeMaxPreviewRateSet(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedDIS(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedEIS(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedFlipMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedHDR1X(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedHFR(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedHWRaotate(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedLongShot(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedManualFocus(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedMeteringMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedOptiZoom(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedPIPCustomizePreviewRate(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedPIPCustomizeSize(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedSurroundSound(Ljava/util/EnumSet;Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;)Z
    .locals 1
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "stringifier"    # Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
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

    .prologue
    .line 50
    .local p1, "supportedSurroundSound":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedTouchAfAec(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedZSL(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public isoFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public manualExposureModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public manualFocusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public manualWBModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-static {}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->values()[Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public meteringModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDualCamModeConfig(I)V
    .locals 0
    .param p1, "dualCameraMode"    # I

    .prologue
    .line 416
    return-void
.end method

.method public setOzoDynamicFocusMode(Landroid/media/MediaRecorder;I)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ozoFocusMode"    # I

    .prologue
    .line 406
    return-void
.end method

.method public setOzoMode(Landroid/media/MediaRecorder;I)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ozoMode"    # I

    .prologue
    .line 401
    return-void
.end method

.method public setQCFlipMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 421
    return-void
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)Ljava/lang/String;
    .locals 1
    .param p1, "flipmode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;
    .locals 1
    .param p1, "hfr"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .prologue
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;)Ljava/lang/String;
    .locals 3
    .param p1, "iso"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;

    .prologue
    .line 340
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$ISO;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)Ljava/lang/String;
    .locals 3
    .param p1, "manualExposureMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)Ljava/lang/String;
    .locals 3
    .param p1, "manualFocusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    .prologue
    .line 350
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;)Ljava/lang/String;
    .locals 3
    .param p1, "manualWBMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;

    .prologue
    .line 370
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualWBMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)Ljava/lang/String;
    .locals 1
    .param p1, "metering"    # Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method
