.class public Lcom/android/camera/device/MultiCameraDeviceLifecycle;
.super Ljava/lang/Object;
.source "MultiCameraDeviceLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/MultiCameraDeviceLifecycle$Singleton;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

.field private final mCamera2ActionProvider:Lcom/android/camera/device/Camera2ActionProvider;

.field private mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mDeviceLock"
    .end annotation
.end field

.field private final mDeviceLock:Ljava/lang/Object;

.field private final mLegacyCameraActionProvider:Lcom/android/camera/device/LegacyCameraActionProvider;

.field private final mLogFactory:Lcom/android/camera/debug/Logger$Factory;

.field private final mLogger:Lcom/android/camera/debug/Logger;

.field private final mPortabilityCameraActionProvider:Lcom/android/camera/device/PortabilityCameraActionProvider;

.field private mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mDeviceLock"
    .end annotation
.end field

.field private mTargetDevice:Lcom/android/camera/device/SingleDeviceLifecycle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mDeviceLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MltiDeviceLife"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/device/LegacyCameraActionProvider;Lcom/android/camera/device/PortabilityCameraActionProvider;Lcom/android/camera/device/Camera2ActionProvider;Lcom/android/camera/device/ActiveCameraDeviceTracker;Lcom/android/camera/debug/Logger$Factory;)V
    .locals 2
    .param p1, "legacyCameraActionProvider"    # Lcom/android/camera/device/LegacyCameraActionProvider;
    .param p2, "portabilityCameraActionProvider"    # Lcom/android/camera/device/PortabilityCameraActionProvider;
    .param p3, "camera2ActionProvider"    # Lcom/android/camera/device/Camera2ActionProvider;
    .param p4, "activeCameraDeviceTracker"    # Lcom/android/camera/device/ActiveCameraDeviceTracker;
    .param p5, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mDeviceLock:Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLegacyCameraActionProvider:Lcom/android/camera/device/LegacyCameraActionProvider;

    .line 106
    iput-object p2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mPortabilityCameraActionProvider:Lcom/android/camera/device/PortabilityCameraActionProvider;

    .line 107
    iput-object p3, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCamera2ActionProvider:Lcom/android/camera/device/Camera2ActionProvider;

    .line 108
    iput-object p4, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    .line 109
    iput-object p5, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogFactory:Lcom/android/camera/debug/Logger$Factory;

    .line 110
    sget-object v0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-interface {p5, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    .line 112
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v1, "Creating the CameraDeviceProvider."

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/device/MultiCameraDeviceLifecycle;Lcom/android/camera/device/CameraDeviceKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/device/MultiCameraDeviceLifecycle;
    .param p1, "x1"    # Lcom/android/camera/device/CameraDeviceKey;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->onCameraDeviceShutdown(Lcom/android/camera/device/CameraDeviceKey;)V

    return-void
.end method

.method private cancelShutdown()V
    .locals 3

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "Canceling shutdown."

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 348
    .local v0, "shutdownFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 349
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 351
    .end local v0    # "shutdownFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method

.method private clearTargetDevice()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mTargetDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v1, "Target request exists. cancel() and clear."

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mTargetDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    invoke-interface {v0}, Lcom/android/camera/device/SingleDeviceLifecycle;->close()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mTargetDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 342
    :cond_0
    return-void
.end method

.method private completeShutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "Completing shutdown."

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 357
    .local v0, "shutdownFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    iput-object v3, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 358
    invoke-virtual {v0, v3}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 360
    .end local v0    # "shutdownFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method

.method private createLifecycle(Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/android/camera/device/SingleDeviceLifecycle;
    .locals 4
    .param p1, "key"    # Lcom/android/camera/device/CameraDeviceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TDevice:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/device/CameraDeviceKey;",
            "Lcom/android/camera/device/CameraDeviceActionProvider",
            "<TTDevice;>;)",
            "Lcom/android/camera/device/SingleDeviceLifecycle",
            "<TTDevice;",
            "Lcom/android/camera/device/CameraDeviceKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    .local p2, "provider":Lcom/android/camera/device/CameraDeviceActionProvider;, "Lcom/android/camera/device/CameraDeviceActionProvider<TTDevice;>;"
    new-instance v1, Lcom/android/camera/device/MultiCameraDeviceLifecycle$1;

    invoke-direct {v1, p0}, Lcom/android/camera/device/MultiCameraDeviceLifecycle$1;-><init>(Lcom/android/camera/device/MultiCameraDeviceLifecycle;)V

    .line 330
    .local v1, "listener":Lcom/android/camera/device/SingleDeviceShutdownListener;, "Lcom/android/camera/device/SingleDeviceShutdownListener<Lcom/android/camera/device/CameraDeviceKey;>;"
    new-instance v0, Lcom/android/camera/device/SingleDeviceStateMachine;

    .line 331
    invoke-interface {p2, p1}, Lcom/android/camera/device/CameraDeviceActionProvider;->get(Lcom/android/camera/device/CameraDeviceKey;)Lcom/android/camera/device/SingleDeviceActions;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogFactory:Lcom/android/camera/debug/Logger$Factory;

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/android/camera/device/SingleDeviceStateMachine;-><init>(Lcom/android/camera/device/SingleDeviceActions;Ljava/lang/Object;Lcom/android/camera/device/SingleDeviceShutdownListener;Lcom/android/camera/debug/Logger$Factory;)V

    .line 333
    .local v0, "deviceState":Lcom/android/camera/device/SingleDeviceStateMachine;, "Lcom/android/camera/device/SingleDeviceStateMachine<TTDevice;Lcom/android/camera/device/CameraDeviceKey;>;"
    new-instance v2, Lcom/android/camera/device/CameraDeviceLifecycle;

    invoke-direct {v2, p1, v0}, Lcom/android/camera/device/CameraDeviceLifecycle;-><init>(Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/SingleDeviceStateMachine;)V

    return-object v2
.end method

.method public static instance()Lcom/android/camera/device/MultiCameraDeviceLifecycle;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/android/camera/device/MultiCameraDeviceLifecycle$Singleton;->access$000()Lcom/android/camera/device/MultiCameraDeviceLifecycle;

    move-result-object v0

    return-object v0
.end method

.method private onCameraDeviceShutdown(Lcom/android/camera/device/CameraDeviceKey;)V
    .locals 4
    .param p1, "key"    # Lcom/android/camera/device/CameraDeviceKey;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraClosed(id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 366
    invoke-interface {v0}, Lcom/android/camera/device/SingleDeviceLifecycle;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 371
    invoke-direct {p0}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->completeShutdown()V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    invoke-interface {v0}, Lcom/android/camera/device/SingleDeviceLifecycle;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "Current device was closed."

    invoke-interface {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mTargetDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "Target request exists, calling open()."

    invoke-interface {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mTargetDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mTargetDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 380
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    invoke-interface {v0}, Lcom/android/camera/device/SingleDeviceLifecycle;->open()V

    .line 381
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 382
    invoke-interface {v0}, Lcom/android/camera/device/SingleDeviceLifecycle;->getId()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/device/CameraDeviceKey;

    invoke-virtual {v0}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 381
    invoke-virtual {v2, v0}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraOpening(Lcom/android/camera/device/CameraId;)V

    .line 389
    :cond_2
    :goto_0
    monitor-exit v1

    .line 390
    return-void

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "No target request exists. Clearing current device."

    invoke-interface {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 386
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {p1}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraClosed(Lcom/android/camera/device/CameraId;)V

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private openDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p1, "requestLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "key"    # Lcom/android/camera/device/CameraDeviceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TDevice:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/device/CameraDeviceKey;",
            "Lcom/android/camera/device/CameraDeviceActionProvider",
            "<TTDevice;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTDevice;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p3, "provider":Lcom/android/camera/device/CameraDeviceActionProvider;, "Lcom/android/camera/device/CameraDeviceActionProvider<TTDevice;>;"
    iget-object v3, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[openDevice()] open(cameraId: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->cancelShutdown()V

    .line 290
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    if-nez v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v4, "[openDevice()] No existing request. Creating a new device."

    invoke-interface {v2, v4}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, p2, p3}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->createLifecycle(Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/android/camera/device/SingleDeviceLifecycle;

    move-result-object v0

    .line 293
    .local v0, "deviceLifecycle":Lcom/android/camera/device/SingleDeviceLifecycle;, "Lcom/android/camera/device/SingleDeviceLifecycle<TTDevice;Lcom/android/camera/device/CameraDeviceKey;>;"
    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 294
    invoke-interface {v0, p1}, Lcom/android/camera/device/SingleDeviceLifecycle;->createRequest(Lcom/android/camera/async/Lifetime;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 295
    .local v1, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TTDevice;>;"
    invoke-interface {v0}, Lcom/android/camera/device/SingleDeviceLifecycle;->open()V

    .line 296
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {p2}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraOpening(Lcom/android/camera/device/CameraId;)V

    .line 314
    :goto_0
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v4, "[openDevice()] Returning future."

    invoke-interface {v2, v4}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 315
    monitor-exit v3

    return-object v1

    .line 297
    .end local v0    # "deviceLifecycle":Lcom/android/camera/device/SingleDeviceLifecycle;, "Lcom/android/camera/device/SingleDeviceLifecycle<TTDevice;Lcom/android/camera/device/CameraDeviceKey;>;"
    .end local v1    # "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TTDevice;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    invoke-interface {v2}, Lcom/android/camera/device/SingleDeviceLifecycle;->getId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v4, "[openDevice()] Existing request with the same id."

    invoke-interface {v2, v4}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 301
    .restart local v0    # "deviceLifecycle":Lcom/android/camera/device/SingleDeviceLifecycle;, "Lcom/android/camera/device/SingleDeviceLifecycle<TTDevice;Lcom/android/camera/device/CameraDeviceKey;>;"
    invoke-direct {p0}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->clearTargetDevice()V

    .line 302
    invoke-interface {v0, p1}, Lcom/android/camera/device/SingleDeviceLifecycle;->createRequest(Lcom/android/camera/async/Lifetime;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 303
    .restart local v1    # "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TTDevice;>;"
    invoke-interface {v0}, Lcom/android/camera/device/SingleDeviceLifecycle;->open()V

    .line 304
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {p2}, Lcom/android/camera/device/CameraDeviceKey;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraOpening(Lcom/android/camera/device/CameraId;)V

    goto :goto_0

    .line 316
    .end local v0    # "deviceLifecycle":Lcom/android/camera/device/SingleDeviceLifecycle;, "Lcom/android/camera/device/SingleDeviceLifecycle<TTDevice;Lcom/android/camera/device/CameraDeviceKey;>;"
    .end local v1    # "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TTDevice;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 306
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v4, "[openDevice()] Existing request with a different id."

    invoke-interface {v2, v4}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    invoke-interface {v2}, Lcom/android/camera/device/SingleDeviceLifecycle;->close()V

    .line 308
    invoke-direct {p0, p2, p3}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->createLifecycle(Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/android/camera/device/SingleDeviceLifecycle;

    move-result-object v0

    .line 309
    .restart local v0    # "deviceLifecycle":Lcom/android/camera/device/SingleDeviceLifecycle;, "Lcom/android/camera/device/SingleDeviceLifecycle<TTDevice;Lcom/android/camera/device/CameraDeviceKey;>;"
    invoke-direct {p0}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->clearTargetDevice()V

    .line 310
    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mTargetDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    .line 311
    invoke-interface {v0, p1}, Lcom/android/camera/device/SingleDeviceLifecycle;->createRequest(Lcom/android/camera/async/Lifetime;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TTDevice;>;"
    goto :goto_0
.end method


# virtual methods
.method public openCamera2Device(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraId;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "requestLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "cameraId"    # Lcom/android/camera/device/CameraId;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/device/CameraId;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/hardware/camera2/CameraDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey;

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API2:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    invoke-direct {v0, v1, p2}, Lcom/android/camera/device/CameraDeviceKey;-><init>(Lcom/android/camera/device/CameraDeviceKey$ApiType;Lcom/android/camera/device/CameraId;)V

    .line 138
    .local v0, "key":Lcom/android/camera/device/CameraDeviceKey;
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCamera2ActionProvider:Lcom/android/camera/device/Camera2ActionProvider;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->openDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public openCamera2PortabilityDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraId;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "requestLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "cameraId"    # Lcom/android/camera/device/CameraId;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/device/CameraId;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey;

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_API2:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    invoke-direct {v0, v1, p2}, Lcom/android/camera/device/CameraDeviceKey;-><init>(Lcom/android/camera/device/CameraDeviceKey$ApiType;Lcom/android/camera/device/CameraId;)V

    .line 192
    .local v0, "key":Lcom/android/camera/device/CameraDeviceKey;
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mPortabilityCameraActionProvider:Lcom/android/camera/device/PortabilityCameraActionProvider;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->openDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public openLegacyCameraDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraId;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "requestLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "cameraId"    # Lcom/android/camera/device/CameraId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/device/CameraId;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey;

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API1:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    invoke-direct {v0, v1, p2}, Lcom/android/camera/device/CameraDeviceKey;-><init>(Lcom/android/camera/device/CameraDeviceKey$ApiType;Lcom/android/camera/device/CameraId;)V

    .line 241
    .local v0, "key":Lcom/android/camera/device/CameraDeviceKey;
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLegacyCameraActionProvider:Lcom/android/camera/device/LegacyCameraActionProvider;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->openDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public openLegacyPortabilityDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraId;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "requestLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "cameraId"    # Lcom/android/camera/device/CameraId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/device/CameraId;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey;

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_API1:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    invoke-direct {v0, v1, p2}, Lcom/android/camera/device/CameraDeviceKey;-><init>(Lcom/android/camera/device/CameraDeviceKey$ApiType;Lcom/android/camera/device/CameraId;)V

    .line 217
    .local v0, "key":Lcom/android/camera/device/CameraDeviceKey;
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mPortabilityCameraActionProvider:Lcom/android/camera/device/PortabilityCameraActionProvider;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->openDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public openPortabilityDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraId;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "requestLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "cameraId"    # Lcom/android/camera/device/CameraId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/device/CameraId;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey;

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_AUTO:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    invoke-direct {v0, v1, p2}, Lcom/android/camera/device/CameraDeviceKey;-><init>(Lcom/android/camera/device/CameraDeviceKey$ApiType;Lcom/android/camera/device/CameraId;)V

    .line 165
    .local v0, "key":Lcom/android/camera/device/CameraDeviceKey;
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mPortabilityCameraActionProvider:Lcom/android/camera/device/PortabilityCameraActionProvider;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->openDevice(Lcom/android/camera/async/Lifetime;Lcom/android/camera/device/CameraDeviceKey;Lcom/android/camera/device/CameraDeviceActionProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public shutdown()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v2, "shutdownAsync()"

    invoke-interface {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->clearTargetDevice()V

    .line 257
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 260
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mCurrentDevice:Lcom/android/camera/device/SingleDeviceLifecycle;

    invoke-interface {v0}, Lcom/android/camera/device/SingleDeviceLifecycle;->close()V

    .line 261
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    monitor-exit v1

    .line 273
    :goto_0
    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 273
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 268
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/device/MultiCameraDeviceLifecycle;->mShutdownFuture:Lcom/google/common/util/concurrent/SettableFuture;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
