.class public interface abstract Lcom/android/camera/app/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;,
        Lcom/android/camera/app/OrientationManager$DeviceOrientation;,
        Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;
    }
.end annotation


# virtual methods
.method public abstract addOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V
.end method

.method public abstract getDeviceNaturalOrientation()Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;
.end method

.method public abstract getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
.end method

.method public abstract getDisplayRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
.end method

.method public abstract isInLandscape()Z
.end method

.method public abstract isInPortrait()Z
.end method

.method public abstract isOrientationLocked()Z
.end method

.method public abstract lockOrientation()V
.end method

.method public abstract removeOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V
.end method

.method public abstract unlockOrientation()V
.end method
