.class public interface abstract Lcom/android/camera/one/OneCamera$OpenCallback;
.super Ljava/lang/Object;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OpenCallback"
.end annotation


# virtual methods
.method public abstract onCameraClosed()V
.end method

.method public abstract onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    .param p1    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onFailure()V
.end method
