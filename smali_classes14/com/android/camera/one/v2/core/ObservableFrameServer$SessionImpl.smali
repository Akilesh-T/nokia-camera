.class Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;
.super Ljava/lang/Object;
.source "ObservableFrameServer.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameServer$Session;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/ObservableFrameServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionImpl"
.end annotation


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDelegate:Lcom/android/camera/one/v2/core/FrameServer$Session;

.field final synthetic this$0:Lcom/android/camera/one/v2/core/ObservableFrameServer;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/core/ObservableFrameServer;Lcom/android/camera/one/v2/core/FrameServer$Session;)V
    .locals 2
    .param p2, "delegate"    # Lcom/android/camera/one/v2/core/FrameServer$Session;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->this$0:Lcom/android/camera/one/v2/core/ObservableFrameServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-object p2, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer$Session;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/core/ObservableFrameServer;Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/ObservableFrameServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/v2/core/ObservableFrameServer;
    .param p2, "x1"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
    .param p3, "x2"    # Lcom/android/camera/one/v2/core/ObservableFrameServer$1;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;-><init>(Lcom/android/camera/one/v2/core/ObservableFrameServer;Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer$Session;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer$Session;->abortCaptures()V

    .line 71
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v2, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->this$0:Lcom/android/camera/one/v2/core/ObservableFrameServer;

    invoke-static {v2}, Lcom/android/camera/one/v2/core/ObservableFrameServer;->access$000(Lcom/android/camera/one/v2/core/ObservableFrameServer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 92
    .local v0, "clients":I
    iget-object v2, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->this$0:Lcom/android/camera/one/v2/core/ObservableFrameServer;

    invoke-static {v2}, Lcom/android/camera/one/v2/core/ObservableFrameServer;->access$100(Lcom/android/camera/one/v2/core/ObservableFrameServer;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v2

    if-nez v0, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer$Session;

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    .line 95
    .end local v0    # "clients":I
    :cond_0
    return-void

    .line 92
    .restart local v0    # "clients":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConstrainedHighSpeedSession()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer$Session;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer$Session;->isConstrainedHighSpeedSession()Z

    move-result v0

    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer$Session;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer$Session;->isReprocessable()Z

    move-result v0

    return v0
.end method

.method public stopRepeating()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer$Session;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameServer$Session;->stopRepeating()V

    .line 76
    return-void
.end method

.method public submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    .locals 1
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
    .line 65
    .local p1, "burstRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer$Session;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 66
    return-void
.end method
