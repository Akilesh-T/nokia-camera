.class public Lcom/android/camera/one/v2/core/FrameServerImpl$Session;
.super Ljava/lang/Object;
.source "FrameServerImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameServer$Session;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/FrameServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field private mClosed:Z

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/core/FrameServerImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/one/v2/core/FrameServerImpl;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mClosed:Z

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/core/FrameServerImpl;Lcom/android/camera/one/v2/core/FrameServerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/v2/core/FrameServerImpl;
    .param p2, "x1"    # Lcom/android/camera/one/v2/core/FrameServerImpl$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;-><init>(Lcom/android/camera/one/v2/core/FrameServerImpl;)V

    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mClosed:Z

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Lcom/android/camera/one/v2/core/FrameServer$SessionClosedException;

    invoke-direct {v1}, Lcom/android/camera/one/v2/core/FrameServer$SessionClosedException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    throw v0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 74
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/core/FrameServerImpl;->access$000(Lcom/android/camera/one/v2/core/FrameServerImpl;)Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->abortCaptures()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mClosed:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mClosed:Z

    .line 111
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerImpl;->access$100(Lcom/android/camera/one/v2/core/FrameServerImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 113
    :cond_0
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConstrainedHighSpeedSession()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerImpl;->access$000(Lcom/android/camera/one/v2/core/FrameServerImpl;)Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer$Session;->isConstrainedHighSpeedSession()Z

    move-result v0

    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerImpl;->access$000(Lcom/android/camera/one/v2/core/FrameServerImpl;)Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer$Session;->isReprocessable()Z

    move-result v0

    return v0
.end method

.method public stopRepeating()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v2, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mClosed:Z

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Lcom/android/camera/one/v2/core/FrameServer$SessionClosedException;

    invoke-direct {v1}, Lcom/android/camera/one/v2/core/FrameServer$SessionClosedException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    throw v0

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 89
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/core/FrameServerImpl;->access$000(Lcom/android/camera/one/v2/core/FrameServerImpl;)Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->stopRepeating()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    return-void
.end method

.method public submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    .locals 5
    .param p2, "type"    # Lcom/android/camera/one/v2/core/FrameServer$RequestType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/Request;",
            ">;",
            "Lcom/android/camera/one/v2/core/FrameServer$RequestType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "burstRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    iget-object v3, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 52
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->mClosed:Z

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Lcom/android/camera/one/v2/core/FrameServer$SessionClosedException;

    invoke-direct {v2}, Lcom/android/camera/one/v2/core/FrameServer$SessionClosedException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/core/Request;

    .line 59
    .local v1, "r":Lcom/android/camera/one/v2/core/Request;
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/Request;->abort()V

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "r":Lcom/android/camera/one/v2/core/Request;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 56
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/one/v2/core/FrameServerImpl$Session;->this$0:Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-static {v2}, Lcom/android/camera/one/v2/core/FrameServerImpl;->access$000(Lcom/android/camera/one/v2/core/FrameServerImpl;)Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :try_start_3
    monitor-exit v3

    .line 64
    return-void

    .line 61
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
