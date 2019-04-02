.class public Lcom/android/camera/burst/BurstTakerImpl;
.super Ljava/lang/Object;
.source "BurstTakerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstTaker;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mBurstInputSurface:Landroid/view/Surface;

.field private mBurstLifetime:Lcom/android/camera/async/Lifetime;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCameraCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mImageFactory:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mMaxImageCount:I

.field private final mRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mRestorePreviewCommand:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Landroid/view/Surface;Ljava/lang/Runnable;I)V
    .locals 0
    .param p1, "cameraCommandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p2, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p3, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p4, "imageFactory"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p5, "burstInputSurface"    # Landroid/view/Surface;
    .param p6, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p7, "maxImageCount"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/camera/burst/BurstTakerImpl;->mCameraCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    .line 73
    iput-object p2, p0, Lcom/android/camera/burst/BurstTakerImpl;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 74
    iput-object p3, p0, Lcom/android/camera/burst/BurstTakerImpl;->mRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 75
    iput-object p4, p0, Lcom/android/camera/burst/BurstTakerImpl;->mImageFactory:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 76
    iput-object p5, p0, Lcom/android/camera/burst/BurstTakerImpl;->mBurstInputSurface:Landroid/view/Surface;

    .line 77
    iput-object p6, p0, Lcom/android/camera/burst/BurstTakerImpl;->mRestorePreviewCommand:Ljava/lang/Runnable;

    .line 78
    iput p7, p0, Lcom/android/camera/burst/BurstTakerImpl;->mMaxImageCount:I

    .line 79
    return-void
.end method


# virtual methods
.method public startBurst(Lcom/android/camera/burst/BurstController;)V
    .locals 10
    .param p1, "burstController"    # Lcom/android/camera/burst/BurstController;

    .prologue
    .line 83
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 84
    iget-object v1, p0, Lcom/android/camera/burst/BurstTakerImpl;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Burst cannot be started, while another is running."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 86
    new-instance v1, Lcom/android/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/android/camera/async/Lifetime;-><init>()V

    iput-object v1, p0, Lcom/android/camera/burst/BurstTakerImpl;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    .line 87
    new-instance v0, Lcom/android/camera/burst/BurstCaptureCommand;

    iget-object v1, p0, Lcom/android/camera/burst/BurstTakerImpl;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v2, p0, Lcom/android/camera/burst/BurstTakerImpl;->mRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget-object v3, p0, Lcom/android/camera/burst/BurstTakerImpl;->mImageFactory:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    iget-object v4, p0, Lcom/android/camera/burst/BurstTakerImpl;->mBurstInputSurface:Landroid/view/Surface;

    iget-object v5, p0, Lcom/android/camera/burst/BurstTakerImpl;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    iget-object v6, p0, Lcom/android/camera/burst/BurstTakerImpl;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    .line 93
    invoke-interface {p1, v6}, Lcom/android/camera/burst/BurstController;->getEvictionHandler(Lcom/android/camera/async/Lifetime;)Lcom/android/camera/burst/EvictionHandler;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera/burst/BurstTakerImpl;->mRestorePreviewCommand:Ljava/lang/Runnable;

    iget v9, p0, Lcom/android/camera/burst/BurstTakerImpl;->mMaxImageCount:I

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/burst/BurstCaptureCommand;-><init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/burst/EvictionHandler;Lcom/android/camera/burst/BurstController;Ljava/lang/Runnable;I)V

    .line 98
    .local v0, "burstCommand":Lcom/android/camera/burst/BurstCaptureCommand;
    iget-object v1, p0, Lcom/android/camera/burst/BurstTakerImpl;->mCameraCommandExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/commands/CameraCommand;)Ljava/util/concurrent/Future;

    .line 99
    return-void

    .line 84
    .end local v0    # "burstCommand":Lcom/android/camera/burst/BurstCaptureCommand;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized stopBurst()V
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 104
    iget-object v0, p0, Lcom/android/camera/burst/BurstTakerImpl;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/camera/burst/BurstTakerImpl;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/burst/BurstTakerImpl;->mBurstLifetime:Lcom/android/camera/async/Lifetime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
