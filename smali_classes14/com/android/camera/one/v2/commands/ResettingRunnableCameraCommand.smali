.class public final Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;
.super Ljava/lang/Object;
.source "ResettingRunnableCameraCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

.field private final mExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

.field private mInProgressCommand:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/CameraCommand;)V
    .locals 1
    .param p1, "executor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p2, "command"    # Lcom/android/camera/one/v2/commands/CameraCommand;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;->mExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    .line 49
    iput-object p2, p0, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;->mLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;->mInProgressCommand:Ljava/util/concurrent/Future;

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;->mInProgressCommand:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;->mExecutor:Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    iget-object v2, p0, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;->mCommand:Lcom/android/camera/one/v2/commands/CameraCommand;

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/commands/CameraCommand;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/commands/ResettingRunnableCameraCommand;->mInProgressCommand:Ljava/util/concurrent/Future;

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
