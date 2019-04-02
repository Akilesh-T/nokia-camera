.class final Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;
.super Ljava/lang/Object;
.source "TouchExposureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/CameraCommand;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private mIsFocused:Z

.field private final mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mSlaveTemplateType:I

.field private final mTemplateType:I

.field private final mTouchExposure:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TouchExposureCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;IILcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 1
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p6, "slaveBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "templateType"    # I
    .param p8, "slaveTemplateType"    # I
    .param p10, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p11, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "II",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p9, "touchExposure":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mIsFocused:Z

    .line 71
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 72
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 73
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 74
    iput p7, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mTemplateType:I

    .line 75
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 76
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 77
    iput-object p6, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 78
    iput p8, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveTemplateType:I

    .line 79
    iput-object p9, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mTouchExposure:Lcom/android/camera/async/ConcurrentState;

    .line 80
    iput-object p10, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 81
    iput-object p11, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 82
    return-void
.end method

.method private createAESettableRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/async/Observable;I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 4
    .param p1, "builderFactory"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p3, "templateType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/android/camera/one/v2/core/RequestBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .local p2, "exposure":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .line 177
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p1}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 178
    .local v0, "aeSettableBuilder":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 180
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 182
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 184
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 186
    invoke-virtual {v0, p3}, Lcom/android/camera/one/v2/core/RequestTemplate;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    return-object v1
.end method

.method private runNormalTouchExposureProcess()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer;->tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v1

    .line 111
    .local v1, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v3}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isTouchAeAdjAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mTouchExposure:Lcom/android/camera/async/ConcurrentState;

    iget v5, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mTemplateType:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->createAESettableRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/async/Observable;I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 122
    .local v0, "aeSettableBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/camera/one/v2/core/Request;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v1, v3, v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v0    # "aeSettableBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    .line 129
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/camera/product_utils/ProductUtil;->DUALCAM_LINK_ENABLE:Z

    if-nez v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer;->tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v2

    .line 131
    .local v2, "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    if-eqz v2, :cond_0

    .line 140
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v3}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isTouchAeAdjAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mTouchExposure:Lcom/android/camera/async/ConcurrentState;

    iget v5, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveTemplateType:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->createAESettableRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/async/Observable;I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 142
    .restart local v0    # "aeSettableBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/camera/one/v2/core/Request;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .end local v0    # "aeSettableBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_3
    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto :goto_0

    .line 126
    .end local v2    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    throw v3

    .line 146
    .restart local v2    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catchall_1
    move-exception v3

    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    throw v3
.end method

.method private runSpecificTouchExposureProcess(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V
    .locals 5
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "builderFactory"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 153
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    if-eqz p2, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/android/camera/one/v2/core/FrameServer;->tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v1

    .line 157
    .local v1, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isTouchAeAdjAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mTouchExposure:Lcom/android/camera/async/ConcurrentState;

    invoke-direct {p0, p2, v2, p3}, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->createAESettableRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/async/Observable;I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 168
    .local v0, "aeSettableBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/one/v2/core/Request;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v0    # "aeSettableBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCurrentCameraId()Lcom/android/camera/async/Observable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    .local v0, "currentCameraId":I
    sget-object v1, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentCameraId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mTemplateType:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->runSpecificTouchExposureProcess(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    .line 105
    .end local v0    # "currentCameraId":I
    :goto_0
    return-void

    .line 96
    .restart local v0    # "currentCameraId":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v3, p0, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->mSlaveTemplateType:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->runSpecificTouchExposureProcess(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)V

    goto :goto_0

    .line 99
    :cond_1
    sget-object v1, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "run TouchExposureCommand fail : no match condition."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v0    # "currentCameraId":I
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/one/v2/autofocus/TouchExposureCommand;->runNormalTouchExposureProcess()V

    goto :goto_0
.end method
