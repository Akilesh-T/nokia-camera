.class public Lcom/android/camera/one/v2/commands/ZslPreviewCommand;
.super Ljava/lang/Object;
.source "ZslPreviewCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/CameraCommand;


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCameraId:I

.field private final mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mIsFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPreviewWarmupRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mPreviewWarmupRequestType:I

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

.field private final mWarmupBurstSize:I

.field private final mZslAndPreviewRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mZslAndPreviewRequestType:I

.field private final mZslRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mZslRequestType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ZslPreviewCommand"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/core/RequestBuilder$Factory;IILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 2
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "cameraId"    # I
    .param p3, "previewWarmupRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p4, "previewWarmupRequestType"    # I
    .param p5, "zslRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p6, "zslRequestType"    # I
    .param p7, "zslAndPreviewRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p8, "zslAndPreviewRequestType"    # I
    .param p9, "warmupBurstSize"    # I
    .param p11, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "I",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "I",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "I",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "II",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p10, "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 76
    iput p2, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mCameraId:I

    .line 79
    iput-object p3, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mPreviewWarmupRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 80
    iput p4, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mPreviewWarmupRequestType:I

    .line 83
    iput-object p5, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mZslRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 84
    iput p6, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mZslRequestType:I

    .line 86
    iput-object p7, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mZslAndPreviewRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 87
    iput p8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mZslAndPreviewRequestType:I

    .line 89
    iput p9, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mWarmupBurstSize:I

    .line 91
    iput-object p10, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mRecordController:Lcom/android/camera/async/ConcurrentState;

    .line 93
    iput-object p11, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mIsFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    return-void
.end method

.method private createWarmupBurst(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;II)Ljava/util/List;
    .locals 4
    .param p1, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p2, "type"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/Request;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-interface {p1, p2}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 160
    .local v1, "zslRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v3

    .line 161
    .local v3, "zslWarmingRequest":Lcom/android/camera/one/v2/core/Request;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v2, "zslWarmingBurst":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 163
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-object v2
.end method


# virtual methods
.method public run()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 100
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .local v5, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v9, 0x0

    .line 101
    :try_start_1
    iget-object v8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mIsFirstRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 120
    :cond_0
    iget-object v8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v11, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mCameraId:I

    iget-object v8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCurrentCameraId()Lcom/android/camera/async/Observable;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v11, v8, :cond_2

    .line 121
    .local v4, "requried":Z
    :cond_1
    :goto_0
    sget-object v8, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCameraId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mCameraId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", requried : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    iget-object v8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mZslAndPreviewRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v10, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mZslAndPreviewRequestType:I

    invoke-interface {v8, v10}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v7

    .line 127
    .local v7, "zslAndPreviewRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v6, "zslAndPreviewRepeating":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    invoke-virtual {v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v8

    sget-object v10, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v8, v10, :cond_4

    sget-boolean v8, Lcom/android/camera/product_utils/ProductUtil;->USE_CHS_SESSION:Z

    if-nez v8, :cond_4

    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->isConstrainedHighSpeedSession()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mRecordController:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v8}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 131
    iget-object v8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mZslAndPreviewRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v10, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mZslAndPreviewRequestType:I

    invoke-interface {v8, v10}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->createRecordOnly(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 132
    .local v3, "recordOnlyRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v8, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v8}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRateSetting()Lcom/android/camera/async/Observable;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/lit8 v2, v8, 0x1e
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    .local v2, "power":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-ge v1, v8, :cond_4

    .line 135
    :try_start_2
    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "power":I
    .end local v3    # "recordOnlyRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v4    # "requried":Z
    .end local v6    # "zslAndPreviewRepeating":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    .end local v7    # "zslAndPreviewRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_2
    move v4, v10

    .line 120
    goto/16 :goto_0

    .line 136
    .restart local v1    # "i":I
    .restart local v2    # "power":I
    .restart local v3    # "recordOnlyRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v4    # "requried":Z
    .restart local v6    # "zslAndPreviewRepeating":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    .restart local v7    # "zslAndPreviewRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v8, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add record only request error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add record only request error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "power":I
    .end local v3    # "recordOnlyRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v4    # "requried":Z
    .end local v6    # "zslAndPreviewRepeating":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    .end local v7    # "zslAndPreviewRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_1
    move-exception v8

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_2
    if-eqz v5, :cond_3

    if-eqz v9, :cond_8

    :try_start_5
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v5    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v0

    .line 152
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v8, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimeoutException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timeout when running command : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 143
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v4    # "requried":Z
    .restart local v5    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v6    # "zslAndPreviewRepeating":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    .restart local v7    # "zslAndPreviewRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_4
    if-eqz v4, :cond_6

    .line 145
    :try_start_7
    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v5, v6, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 151
    :goto_4
    if-eqz v5, :cond_5

    if-eqz v9, :cond_7

    :try_start_8
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_2

    .line 155
    :cond_5
    :goto_5
    return-void

    .line 147
    :cond_6
    :try_start_9
    sget-object v8, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCameraId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/one/v2/commands/ZslPreviewCommand;->mCameraId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", preview stop due to not required."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    sget-object v8, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v5, v6, v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 149
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->stopRepeating()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 151
    .end local v4    # "requried":Z
    .end local v6    # "zslAndPreviewRepeating":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    .end local v7    # "zslAndPreviewRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catchall_1
    move-exception v8

    goto :goto_2

    .restart local v4    # "requried":Z
    .restart local v6    # "zslAndPreviewRepeating":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    .restart local v7    # "zslAndPreviewRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_3
    move-exception v8

    :try_start_a
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto :goto_5

    .end local v4    # "requried":Z
    .end local v6    # "zslAndPreviewRepeating":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/Request;>;"
    .end local v7    # "zslAndPreviewRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_4
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-interface {v5}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3
.end method
