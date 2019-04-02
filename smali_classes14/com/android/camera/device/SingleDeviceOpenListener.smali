.class public interface abstract Lcom/android/camera/device/SingleDeviceOpenListener;
.super Ljava/lang/Object;
.source "SingleDeviceOpenListener.java"


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
.method public abstract onDeviceOpenException(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDevice;)V"
        }
    .end annotation
.end method

.method public abstract onDeviceOpenException(Ljava/lang/Throwable;)V
.end method

.method public abstract onDeviceOpened(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDevice;)V"
        }
    .end annotation
.end method
