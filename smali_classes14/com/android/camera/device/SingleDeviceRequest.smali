.class public Lcom/android/camera/device/SingleDeviceRequest;
.super Ljava/lang/Object;
.source "SingleDeviceRequest.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TDevice:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/SafeCloseable;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TTDevice;>;"
        }
    .end annotation
.end field

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLifetime:Lcom/android/camera/async/Lifetime;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;)V
    .locals 2
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;

    .prologue
    .line 38
    .local p0, "this":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/device/SingleDeviceRequest;->mLifetime:Lcom/android/camera/async/Lifetime;

    .line 40
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 84
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 86
    :cond_0
    return-void
.end method

.method public closeWithException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 76
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 78
    :cond_0
    return-void
.end method

.method public getFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTDevice;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public getLifetime()Lcom/android/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mLifetime:Lcom/android/camera/async/Lifetime;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTDevice;)Z"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/android/camera/device/SingleDeviceRequest;, "Lcom/android/camera/device/SingleDeviceRequest<TTDevice;>;"
    .local p1, "device":Ljava/lang/Object;, "TTDevice;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceRequest;->mFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
