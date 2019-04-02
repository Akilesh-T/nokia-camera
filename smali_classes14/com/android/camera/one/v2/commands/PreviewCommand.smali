.class public Lcom/android/camera/one/v2/commands/PreviewCommand;
.super Ljava/lang/Object;
.source "PreviewCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/CameraCommand;


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mCameraId:I

.field private final mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mRecordController:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PreviewCommand"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/commands/PreviewCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 0
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "cameraId"    # I
    .param p3, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p4, "requestType"    # I
    .param p6, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "I",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "I",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p5, "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 54
    iput p2, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mCameraId:I

    .line 55
    iput-object p3, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 56
    iput p4, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mRequestType:I

    .line 57
    iput-object p5, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mRecordController:Lcom/android/camera/async/ConcurrentState;

    .line 58
    iput-object p6, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 63
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .local v3, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v5, 0x0

    .line 65
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v7, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mCameraId:I

    iget-object v4, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCurrentCameraId()Lcom/android/camera/async/Observable;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v7, v4, :cond_2

    .line 66
    .local v2, "requried":Z
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/camera/one/v2/commands/PreviewCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCameraId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mCameraId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", requried : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object v4, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v6, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mRequestType:I

    invoke-interface {v4, v6}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 69
    .local v1, "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    if-eqz v2, :cond_3

    .line 70
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/camera/one/v2/core/Request;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v3, v4, v6}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v5, :cond_5

    :try_start_2
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    :cond_1
    :goto_2
    return-void

    .end local v1    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v2    # "requried":Z
    :cond_2
    move v2, v6

    .line 65
    goto :goto_0

    .line 73
    .restart local v1    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v2    # "requried":Z
    :cond_3
    :try_start_3
    sget-object v4, Lcom/android/camera/one/v2/commands/PreviewCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCameraId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/one/v2/commands/PreviewCommand;->mCameraId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", preview stop due to not required."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/camera/one/v2/core/Request;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v6, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v3, v4, v6}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 76
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->stopRepeating()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 63
    .end local v1    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v2    # "requried":Z
    :catch_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_3
    if-eqz v3, :cond_4

    if-eqz v5, :cond_6

    :try_start_5
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_4
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v4, Lcom/android/camera/one/v2/commands/PreviewCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimeoutException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout when running command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v1    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v2    # "requried":Z
    .restart local v3    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v4

    :try_start_7
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_2

    .end local v1    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v2    # "requried":Z
    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v4

    goto :goto_3
.end method
