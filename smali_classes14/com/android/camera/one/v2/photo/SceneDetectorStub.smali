.class public Lcom/android/camera/one/v2/photo/SceneDetectorStub;
.super Ljava/lang/Object;
.source "SceneDetectorStub.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/SceneDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object v0
.end method

.method public getCurrentIsoValue()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSensorExposureTime()J
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMetaData()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHDRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$HDR;)V
    .locals 0
    .param p1, "hdrMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    .prologue
    .line 19
    return-void
.end method

.method public onSRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$SR;)V
    .locals 0
    .param p1, "srMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$SR;

    .prologue
    .line 24
    return-void
.end method

.method public setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    .prologue
    .line 38
    return-void
.end method
