.class public Lcom/android/camera/video/ToastingVideoStreamingDecorator;
.super Ljava/lang/Object;
.source "ToastingVideoStreamingDecorator.java"

# interfaces
.implements Lcom/android/camera/video/VideoFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;
    }
.end annotation


# instance fields
.field private final mToaster:Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;

.field private final mVideoFacade:Lcom/android/camera/video/VideoFacade;


# direct methods
.method public constructor <init>(Lcom/android/camera/video/VideoFacade;Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;)V
    .locals 0
    .param p1, "facadeToDecorate"    # Lcom/android/camera/video/VideoFacade;
    .param p2, "toaster"    # Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    .line 79
    iput-object p2, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mToaster:Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;

    .line 80
    return-void
.end method


# virtual methods
.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public isBurstRunning()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    return v0
.end method

.method public isBurstStopping()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstStopping()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->release()V

    .line 118
    return-void
.end method

.method public setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V
    .locals 1
    .param p1, "burstTaker"    # Lcom/android/camera/burst/BurstTaker;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0, p1}, Lcom/android/camera/video/VideoFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    .line 123
    return-void
.end method

.method public setLiveBroadcastStatusInfo(Lcom/android/camera/video/LiveBroadcastStatusController;)V
    .locals 1
    .param p1, "liveBroadcastStatusController"    # Lcom/android/camera/video/LiveBroadcastStatusController;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0, p1}, Lcom/android/camera/video/VideoFacade;->setLiveBroadcastStatusInfo(Lcom/android/camera/video/LiveBroadcastStatusController;)V

    .line 143
    return-void
.end method

.method public setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V
    .locals 13
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "maxVideoDurationInMs"    # I
    .param p5, "requestedSizeLimit"    # J
    .param p7, "saveUri"    # Landroid/net/Uri;
    .param p8, "persistentInputSurface"    # Landroid/view/Surface;
    .param p9, "onRecordTimeUpdateListener"    # Lcom/android/camera/video/OnRecordTimeUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/CamcorderProfile;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "IJ",
            "Landroid/net/Uri;",
            "Landroid/view/Surface;",
            "Lcom/android/camera/video/OnRecordTimeUpdateListener;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p10, "touchChangedState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/android/camera/video/VideoFacade;->setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V

    .line 133
    return-void
.end method

.method public setShutterSoundEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0, p1}, Lcom/android/camera/video/VideoFacade;->setShutterSoundEnabled(Z)V

    .line 153
    return-void
.end method

.method public setStreamingInfo(Lcom/android/camera/video/CountdownController;Lcom/android/camera/async/Observable;)V
    .locals 1
    .param p1, "countdownController"    # Lcom/android/camera/video/CountdownController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/video/CountdownController;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "orientationState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/video/VideoFacade;->setStreamingInfo(Lcom/android/camera/video/CountdownController;Lcom/android/camera/async/Observable;)V

    .line 138
    return-void
.end method

.method public startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    .locals 11
    .param p1, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p2, "captureSessionCreator"    # Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;
    .param p3, "burstIntent"    # Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .param p4, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p5, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p6, "imageOrientationDegrees"    # I
    .param p7, "remainingStorageBytes"    # J

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mToaster:Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;

    invoke-virtual {v0}, Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;->showToastBurstStarted()V

    .line 90
    iget-object v1, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/camera/video/VideoFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V

    .line 91
    return-void
.end method

.method public stopBurst()Z
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mVideoFacade:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    move-result v0

    .line 99
    .local v0, "burstStopped":Z
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/camera/video/ToastingVideoStreamingDecorator;->mToaster:Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;

    invoke-virtual {v1}, Lcom/android/camera/video/ToastingVideoStreamingDecorator$VideoStreamingToaster;->showToastBurstStopped()V

    .line 102
    :cond_0
    return v0
.end method
