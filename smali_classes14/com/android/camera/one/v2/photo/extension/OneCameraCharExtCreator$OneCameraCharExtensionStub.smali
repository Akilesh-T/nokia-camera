.class public Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtCreator$OneCameraCharExtensionStub;
.super Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
.source "OneCameraCharExtCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneCameraCharExtensionStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;-><init>()V

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
    .line 87
    .local p5, "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public configureInputStream()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public getCalibrationData()[B
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomNumMic()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomOzoDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualCamLayout()Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
    .locals 1

    .prologue
    .line 67
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
    .line 107
    const/4 v0, 0x0

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
    .line 97
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
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isFrontCamMirrorSupported()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isMonoCamera()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isQCFASensor()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedSurroundSound()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
