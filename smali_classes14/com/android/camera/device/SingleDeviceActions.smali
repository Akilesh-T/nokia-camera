.class public interface abstract Lcom/android/camera/device/SingleDeviceActions;
.super Ljava/lang/Object;
.source "SingleDeviceActions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TDevice:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract executeClose(Lcom/android/camera/device/SingleDeviceCloseListener;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceCloseListener;",
            "TTDevice;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract executeOpen(Lcom/android/camera/device/SingleDeviceOpenListener;Lcom/android/camera/async/Lifetime;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/SingleDeviceOpenListener",
            "<TTDevice;>;",
            "Lcom/android/camera/async/Lifetime;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method
