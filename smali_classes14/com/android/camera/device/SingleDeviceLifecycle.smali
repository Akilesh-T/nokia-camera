.class public interface abstract Lcom/android/camera/device/SingleDeviceLifecycle;
.super Ljava/lang/Object;
.source "SingleDeviceLifecycle.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TDevice:",
        "Ljava/lang/Object;",
        "TKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/SafeCloseable;"
    }
.end annotation


# virtual methods
.method public abstract createRequest(Lcom/android/camera/async/Lifetime;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTDevice;>;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTKey;"
        }
    .end annotation
.end method

.method public abstract open()V
.end method
