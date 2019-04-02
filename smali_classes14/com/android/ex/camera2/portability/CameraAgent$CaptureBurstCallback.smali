.class public interface abstract Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureBurstCallback"
.end annotation


# virtual methods
.method public abstract onBurstCompleted()V
.end method

.method public abstract onBurstFailed(I)V
.end method

.method public abstract onBurstPictureTaken([B)V
.end method

.method public abstract onBurstStarted()V
.end method
