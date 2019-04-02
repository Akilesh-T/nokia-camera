.class public Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTOneCameraCharExtension;
.super Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
.source "SPTOneCameraCharExtension.java"


# instance fields
.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTOneCameraCharExtension;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 29
    return-void
.end method


# virtual methods
.method public configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCamera$Facing;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p3, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p4, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Landroid/media/MediaRecorder;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p5, "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public configureInputStream()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public getCalibrationData()[B
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomNumMic()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomOzoDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualCamLayout()Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_MAIN_SLAVE:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    return-object v0
.end method

.method public getFakeQCFAPictureSize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSensorExposureTimeRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedSurroundSound()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public isFrontCamMirrorSupported()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isMonoCamera()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isQCFASensor()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedSurroundSound()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
