.class public Lcom/android/camera/util/GcamHelper;
.super Ljava/lang/Object;
.source "GcamHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGcamModule(Lcom/android/camera/app/AppController;Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;)Lcom/android/camera/CameraModule;
    .locals 1
    .param p0, "app"    # Lcom/android/camera/app/AppController;
    .param p1, "hdrPlusSupportLevel"    # Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public static determineHdrPlusSupportLevel(Landroid/content/ContentResolver;Z)Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "useCaptureModule"    # Z

    .prologue
    .line 43
    sget-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    return-object v0
.end method

.method public static hasGcamAsSeparateModule(Lcom/android/camera/one/config/OneCameraFeatureConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static hasGcamCapture(Lcom/android/camera/one/config/OneCameraFeatureConfig;)Z
    .locals 1
    .param p0, "config"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
