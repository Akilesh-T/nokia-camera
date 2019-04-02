.class public Lcom/android/camera/burst/BurstFacadeFactory$BurstFacadeStub;
.super Ljava/lang/Object;
.source "BurstFacadeFactory.java"

# interfaces
.implements Lcom/android/camera/burst/BurstFacade;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstFacadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BurstFacadeStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBurstRunning()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isBurstStopping()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V
    .locals 0
    .param p1, "burstTaker"    # Lcom/android/camera/burst/BurstTaker;

    .prologue
    .line 82
    return-void
.end method

.method public setShutterSoundEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 92
    return-void
.end method

.method public startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    .locals 0
    .param p1, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p2, "captureSessionCreator"    # Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;
    .param p3, "burstIntent"    # Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .param p4, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p5, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p6, "imageOrientationDegrees"    # I
    .param p7, "remainingStorageBytes"    # J

    .prologue
    .line 61
    return-void
.end method

.method public stopBurst()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
