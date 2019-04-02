.class public abstract Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
.super Ljava/lang/Object;
.source "OneCameraCharExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCamera$Facing;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z
    .param p4    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
.end method

.method public abstract configureInputStream()Z
.end method

.method public abstract getCalibrationData()[B
.end method

.method public abstract getCustomNumMic()I
.end method

.method public abstract getCustomOzoDeviceID()Ljava/lang/String;
.end method

.method public abstract getDualCamLayout()Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
.end method

.method public abstract getFakeQCFAPictureSize()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorExposureTimeRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedSurroundSound()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAutoHdrSupported()Z
.end method

.method public abstract isFrontCamMirrorSupported()Z
.end method

.method public abstract isMonoCamera()Z
.end method

.method public abstract isQCFASensor()Z
.end method

.method public abstract isSupportedSurroundSound()Z
.end method
