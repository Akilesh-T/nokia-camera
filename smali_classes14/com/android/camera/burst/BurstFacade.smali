.class public interface abstract Lcom/android/camera/burst/BurstFacade;
.super Ljava/lang/Object;
.source "BurstFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/BurstFacade$BurstIntent;
    }
.end annotation


# virtual methods
.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract isBurstRunning()Z
.end method

.method public abstract isBurstStopping()Z
.end method

.method public abstract release()V
.end method

.method public abstract setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V
.end method

.method public abstract setShutterSoundEnabled(Z)V
.end method

.method public abstract startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
.end method

.method public abstract stopBurst()Z
.end method
