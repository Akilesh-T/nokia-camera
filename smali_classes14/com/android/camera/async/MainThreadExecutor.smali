.class public Lcom/android/camera/async/MainThreadExecutor;
.super Lcom/android/camera/async/HandlerExecutor;
.source "MainThreadExecutor.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/async/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 25
    return-void
.end method

.method public static create()Lcom/android/camera/async/MainThreadExecutor;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/async/MainThreadExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/camera/async/MainThreadExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
