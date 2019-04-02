.class public Lcom/android/camera/device/CameraDeviceLifecycle;
.super Ljava/lang/Object;
.source "CameraDeviceLifecycle.java"

# interfaces
.implements Lcom/android/camera/device/SingleDeviceLifecycle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TDevice:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/device/SingleDeviceLifecycle",
        "<TTDevice;",
        "Lcom/android/camera/device/CameraDeviceKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDeviceKey:Lcom/android/camera/device/CameraDeviceKey;

.field private mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/device/SingleDeviceRequest",
            "<TTDevice;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/device/SingleDeviceStateMachine",
            "<TTDevice;",
            "Lcom/android/camera/device/CameraDeviceKey;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/SingleDeviceStateMachine;)V
    .locals 1
    .param p1, "cameraDeviceKey"    # Lcom/android/camera/device/CameraDeviceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/CameraDeviceKey;",
            "Lcom/android/camera/device/SingleDeviceStateMachine",
            "<TTDevice;",
            "Lcom/android/camera/device/CameraDeviceKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/android/camera/device/CameraDeviceLifecycle;, "Lcom/android/camera/device/CameraDeviceLifecycle<TTDevice;>;"
    .local p2, "deviceState":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;Lcom/android/camera/device/CameraDeviceKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceKey:Lcom/android/camera/device/CameraDeviceKey;

    .line 52
    iput-object p2, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mLock:Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 89
    .local p0, "this":Lcom/android/camera/device/CameraDeviceLifecycle;, "Lcom/android/camera/device/CameraDeviceLifecycle<TTDevice;>;"
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    invoke-virtual {v0}, Lcom/android/camera/device/SingleDeviceRequest;->close()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine;

    invoke-virtual {v0}, Lcom/android/camera/device/SingleDeviceStateMachine;->requestClose()V

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createRequest(Lcom/android/camera/async/Lifetime;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTDevice;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/android/camera/device/CameraDeviceLifecycle;, "Lcom/android/camera/device/CameraDeviceLifecycle<TTDevice;>;"
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    new-instance v0, Lcom/android/camera/device/SingleDeviceRequest;

    invoke-direct {v0, p1}, Lcom/android/camera/device/SingleDeviceRequest;-><init>(Lcom/android/camera/async/Lifetime;)V

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    .line 65
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 66
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine;

    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    invoke-virtual {v0, v2}, Lcom/android/camera/device/SingleDeviceStateMachine;->setRequest(Lcom/android/camera/device/SingleDeviceRequest;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    invoke-virtual {v0}, Lcom/android/camera/device/SingleDeviceRequest;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getId()Lcom/android/camera/device/CameraDeviceKey;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/android/camera/device/CameraDeviceLifecycle;, "Lcom/android/camera/device/CameraDeviceLifecycle<TTDevice;>;"
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceKey:Lcom/android/camera/device/CameraDeviceKey;

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/android/camera/device/CameraDeviceLifecycle;, "Lcom/android/camera/device/CameraDeviceLifecycle<TTDevice;>;"
    invoke-virtual {p0}, Lcom/android/camera/device/CameraDeviceLifecycle;->getId()Lcom/android/camera/device/CameraDeviceKey;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 78
    .local p0, "this":Lcom/android/camera/device/CameraDeviceLifecycle;, "Lcom/android/camera/device/CameraDeviceLifecycle<TTDevice;>;"
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceLifecycle;->mDeviceState:Lcom/android/camera/device/SingleDeviceStateMachine;

    invoke-virtual {v0}, Lcom/android/camera/device/SingleDeviceStateMachine;->requestOpen()V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
