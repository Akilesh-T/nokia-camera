.class public final Lcom/android/camera/one/v2/core/FrameServerImpl;
.super Ljava/lang/Object;
.source "FrameServerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/FrameServerImpl$Session;
    }
.end annotation


# instance fields
.field private final mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mCaptureSession:Lcom/android/camera/one/v2/core/FrameServer$Session;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer$Session;)V
    .locals 2
    .param p1, "captureSession"    # Lcom/android/camera/one/v2/core/FrameServer$Session;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->mCaptureSession:Lcom/android/camera/one/v2/core/FrameServer$Session;

    .line 126
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/core/FrameServerImpl;)Lcom/android/camera/one/v2/core/FrameServer$Session;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/core/FrameServerImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->mCaptureSession:Lcom/android/camera/one/v2/core/FrameServer$Session;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/core/FrameServerImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/core/FrameServerImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/camera/one/v2/core/FrameServerImpl;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServerImpl$Session;

    move-result-object v0

    return-object v0
.end method

.method public createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServerImpl$Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot acquire another FrameServer.Session on the same thread."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 134
    new-instance v0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;-><init>(Lcom/android/camera/one/v2/core/FrameServerImpl;Lcom/android/camera/one/v2/core/FrameServerImpl$1;)V

    return-object v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/camera/one/v2/core/FrameServerImpl;->tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServerImpl$Session;

    move-result-object v0

    return-object v0
.end method

.method public tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServerImpl$Session;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl;->mCameraLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0xbb8

    sget-object v4, Lcom/android/camera/one/v2/core/FrameServer;->SESSION_CREATE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;-><init>(Lcom/android/camera/one/v2/core/FrameServerImpl;Lcom/android/camera/one/v2/core/FrameServerImpl$1;)V

    move-object v0, v1

    goto :goto_0
.end method
