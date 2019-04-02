.class public Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;
.super Ljava/lang/Object;
.source "ToastingPanoFacadeDecorator.java"

# interfaces
.implements Lcom/android/camera/panorama/PanoramaFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;
    }
.end annotation


# instance fields
.field private final mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

.field private final mToaster:Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;


# direct methods
.method public constructor <init>(Lcom/android/camera/panorama/PanoramaFacade;Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;)V
    .locals 0
    .param p1, "facadeToDecorate"    # Lcom/android/camera/panorama/PanoramaFacade;
    .param p2, "toaster"    # Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

    .line 68
    iput-object p2, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mToaster:Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;

    .line 69
    return-void
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public isBurstRunning()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstRunning()Z

    move-result v0

    return v0
.end method

.method public isBurstStopping()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstStopping()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->release()V

    .line 107
    return-void
.end method

.method public setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V
    .locals 1
    .param p1, "burstTaker"    # Lcom/android/camera/burst/BurstTaker;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0, p1}, Lcom/android/camera/panorama/PanoramaFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    .line 112
    return-void
.end method

.method public setShutterSoundEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0, p1}, Lcom/android/camera/panorama/PanoramaFacade;->setShutterSoundEnabled(Z)V

    .line 122
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
    .line 78
    iget-object v0, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mToaster:Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;

    invoke-virtual {v0}, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;->showToastBurstStarted()V

    .line 79
    iget-object v1, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/camera/panorama/PanoramaFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V

    .line 80
    return-void
.end method

.method public stopBurst()Z
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mPanoFacade:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v1}, Lcom/android/camera/panorama/PanoramaFacade;->stopBurst()Z

    move-result v0

    .line 88
    .local v0, "burstStopped":Z
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator;->mToaster:Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;

    invoke-virtual {v1}, Lcom/android/camera/panorama/ToastingPanoFacadeDecorator$PanoFacadeToaster;->showToastBurstStopped()V

    .line 91
    :cond_0
    return v0
.end method
