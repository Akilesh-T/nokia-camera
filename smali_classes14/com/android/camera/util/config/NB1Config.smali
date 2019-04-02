.class public Lcom/android/camera/util/config/NB1Config;
.super Lcom/android/camera/util/config/ProductConfig;
.source "NB1Config.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productModel"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/camera/util/config/ProductConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    return-object v0
.end method

.method public getLogicCameraIdForCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public is18x9RatioScreen()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public isUseMorphoDRChecker()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isUseMorphoHDR()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public useRelativeSensorCoordinate()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
