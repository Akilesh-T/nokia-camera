.class public Lcom/android/camera/one/v2/core/FrameServerFactory;
.super Ljava/lang/Object;
.source "FrameServerFactory.java"


# instance fields
.field private mEphemeralFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private mReadyState:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/async/HandlerFactory;)V
    .locals 4
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "cameraCaptureSession"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
    .param p3, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v2, "CameraMetadataHandler"

    const/16 v3, 0xa

    invoke-virtual {p3, p1, v2, v3}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v0

    .line 42
    .local v0, "cameraHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/camera/one/v2/core/FrameServerImpl;

    new-instance v3, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;

    invoke-direct {v3, p2, v0}, Lcom/android/camera/one/v2/core/TagDispatchCaptureSession;-><init>(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Lcom/android/camera/one/v2/core/FrameServerImpl;-><init>(Lcom/android/camera/one/v2/core/FrameServer$Session;)V

    iput-object v2, p0, Lcom/android/camera/one/v2/core/FrameServerFactory;->mEphemeralFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 45
    new-instance v1, Lcom/android/camera/one/v2/core/ObservableFrameServer;

    iget-object v2, p0, Lcom/android/camera/one/v2/core/FrameServerFactory;->mEphemeralFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/core/ObservableFrameServer;-><init>(Lcom/android/camera/one/v2/core/FrameServer;)V

    .line 46
    .local v1, "ofs":Lcom/android/camera/one/v2/core/ObservableFrameServer;
    iput-object v1, p0, Lcom/android/camera/one/v2/core/FrameServerFactory;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 47
    iput-object v1, p0, Lcom/android/camera/one/v2/core/FrameServerFactory;->mReadyState:Lcom/android/camera/async/Observable;

    .line 48
    return-void
.end method


# virtual methods
.method public provideEphemeralFrameServer()Lcom/android/camera/one/v2/core/FrameServer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerFactory;->mEphemeralFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    return-object v0
.end method

.method public provideFrameServer()Lcom/android/camera/one/v2/core/FrameServer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerFactory;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    return-object v0
.end method

.method public provideReadyState()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameServerFactory;->mReadyState:Lcom/android/camera/async/Observable;

    return-object v0
.end method
