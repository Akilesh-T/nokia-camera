.class public Lcom/android/camera/burst/ToastingBurstFacadeDecorator;
.super Ljava/lang/Object;
.source "ToastingBurstFacadeDecorator.java"

# interfaces
.implements Lcom/android/camera/burst/BurstFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;
    }
.end annotation


# instance fields
.field private final mBurstFacade:Lcom/android/camera/burst/BurstFacade;

.field private final mToaster:Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;)V
    .locals 0
    .param p1, "facadeToDecorate"    # Lcom/android/camera/burst/BurstFacade;
    .param p2, "toaster"    # Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    .line 93
    iput-object p2, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mToaster:Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;

    .line 94
    return-void
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public isBurstRunning()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    return v0
.end method

.method public isBurstStopping()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstStopping()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->release()V

    .line 132
    return-void
.end method

.method public setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V
    .locals 1
    .param p1, "burstTaker"    # Lcom/android/camera/burst/BurstTaker;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0, p1}, Lcom/android/camera/burst/BurstFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    .line 137
    return-void
.end method

.method public setShutterSoundEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0, p1}, Lcom/android/camera/burst/BurstFacade;->setShutterSoundEnabled(Z)V

    .line 147
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
    .line 103
    iget-object v0, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mToaster:Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;

    invoke-virtual {v0}, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->showToastBurstStarted()V

    .line 104
    iget-object v1, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/camera/burst/BurstFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V

    .line 105
    return-void
.end method

.method public stopBurst()Z
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstFacade;->stopBurst()Z

    move-result v0

    .line 113
    .local v0, "burstStopped":Z
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator;->mToaster:Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;

    invoke-virtual {v1}, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->showToastBurstStopped()V

    .line 116
    :cond_0
    return v0
.end method
