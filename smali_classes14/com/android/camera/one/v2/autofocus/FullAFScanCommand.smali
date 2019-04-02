.class final Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;
.super Ljava/lang/Object;
.source "FullAFScanCommand.java"

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

.field private final mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mSlaveTemplateType:I

.field private final mTemplateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FullAFScanCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;IILcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 2
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
    .param p9, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 77
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 78
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 79
    iput p7, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mTemplateType:I

    .line 80
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 81
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 82
    iput-object p6, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 83
    iput p8, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveTemplateType:I

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    iput-object p9, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 86
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 87
    return-void
.end method

.method private createAFCancelRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 4
    .param p1, "builderFactory"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "templateType"    # I
    .param p3, "afScanResult"    # Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 360
    invoke-interface {p1, p2}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 361
    .local v0, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    if-eqz p3, :cond_0

    .line 362
    invoke-static {p3}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 364
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 366
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 368
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 369
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 368
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 370
    return-object v0
.end method

.method private createAFIdleRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 6
    .param p1, "builderFactory"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "templateType"    # I
    .param p3, "triggerResultListener"    # Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 296
    invoke-interface {p1, p2}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 297
    .local v0, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    if-eqz p3, :cond_0

    .line 298
    invoke-static {p3}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 300
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 302
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 304
    if-eq p2, v5, :cond_1

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->triggerFlashIfNeedWhenAF()Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    sget-object v2, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand$1;->$SwitchMap$com$android$camera$one$OneCamera$PhotoCaptureParameters$Flash:[I

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFlashSetting()Lcom/android/camera/async/Observable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 322
    :cond_1
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 323
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 322
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 324
    return-object v0

    .line 307
    :pswitch_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 308
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 307
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 309
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 312
    :pswitch_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 313
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :pswitch_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 317
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 316
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 318
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createAFTriggerRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 5
    .param p1, "builderFactory"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "templateType"    # I
    .param p3, "afScanResult"    # Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 329
    invoke-interface {p1, p2}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 330
    .local v0, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-static {p3}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 331
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 333
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 335
    if-eq p2, v4, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->triggerFlashIfNeedWhenAF()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    sget-object v2, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand$1;->$SwitchMap$com$android$camera$one$OneCamera$PhotoCaptureParameters$Flash:[I

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFlashSetting()Lcom/android/camera/async/Observable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 353
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 355
    return-object v0

    .line 338
    :pswitch_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 338
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 340
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    :pswitch_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 344
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :pswitch_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 348
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 349
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private runNormalAfScanProcess(Lcom/android/camera/stats/profiler/Profile;)V
    .locals 21
    .param p1, "guard"    # Lcom/android/camera/stats/profiler/Profile;
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
    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/one/v2/core/FrameServer;->tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v8

    .line 119
    .local v8, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const-string v16, "session created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 120
    if-nez v8, :cond_0

    .line 221
    :goto_0
    return-void

    .line 126
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    :try_start_0
    new-instance v4, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v4}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 129
    .local v4, "afScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    const-string v16, "AFTriggerResult created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mTemplateType:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFIdleRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v7

    .line 133
    .local v7, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const-string v16, "idleBuilder created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 134
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget-object v17, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 136
    const-string v16, "idleBuilder submited"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mTemplateType:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFCancelRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v5

    .line 147
    .local v5, "cancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const-string v16, "cancelBuilder created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 148
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget-object v17, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 150
    const-string v16, "cancelBuilder submited"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mTemplateType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFIdleRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v7

    .line 154
    const-string v16, "idleBuilder created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 155
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget-object v17, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 157
    const-string v16, "idleBuilder submited"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mTemplateType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFTriggerRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v15

    .line 161
    .local v15, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const-string v16, "triggerBuilder created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 162
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v15}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget-object v17, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 164
    const-string v16, "triggerBuilder submited"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    sget-boolean v16, Lcom/android/camera/product_utils/ProductUtil;->DUALCAM_LINK_ENABLE:Z

    if-nez v16, :cond_1

    .line 168
    sget-object v16, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v17, "need trigger slave af."

    invoke-static/range {v16 .. v17}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/one/v2/core/FrameServer;->tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .local v13, "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/16 v17, 0x0

    .line 170
    :try_start_1
    const-string v16, "slaveSession created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 171
    new-instance v9, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v9}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 172
    .local v9, "slaveAfScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    const-string v16, "slave AFTriggerResult created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveTemplateType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFIdleRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v12

    .line 175
    .local v12, "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const-string v16, "slaveIdleBuilder created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 176
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    invoke-virtual {v12}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v19

    aput-object v19, v16, v18

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget-object v18, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 178
    const-string v16, "slaveIdleBuilder submited"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveTemplateType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFCancelRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v10

    .line 181
    .local v10, "slaveCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const-string v16, "slaveCancelBuilder created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 182
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    invoke-virtual {v10}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v19

    aput-object v19, v16, v18

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget-object v18, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 184
    const-string v16, "slaveCancelBuilder submited"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveTemplateType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFIdleRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v12

    .line 187
    const-string v16, "slaveIdleBuilder created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 188
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    invoke-virtual {v12}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v19

    aput-object v19, v16, v18

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget-object v18, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 190
    const-string v16, "slaveIdleBuilder submited"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveTemplateType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFTriggerRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v14

    .line 193
    .local v14, "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const-string v16, "slaveTriggerBuilder created"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 194
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/android/camera/one/v2/core/Request;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v19

    aput-object v19, v16, v18

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    sget-object v18, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 196
    const-string v16, "slaveTriggerBuilder submited"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 199
    const-wide/16 v18, 0x1388

    :try_start_2
    sget-object v16, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z

    move-result v11

    .line 200
    .local v11, "slaveFocused":Z
    sget-object v16, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "slaveFocused = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "slaveFocused : "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    .end local v11    # "slaveFocused":Z
    :goto_1
    if-eqz v13, :cond_1

    if-eqz v17, :cond_3

    :try_start_3
    invoke-interface {v13}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    .end local v9    # "slaveAfScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    .end local v10    # "slaveCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v12    # "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v13    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v14    # "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :cond_1
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x1388

    sget-object v17, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    sget-object v16, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Focused = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Focused : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    :goto_3
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_0

    .line 202
    .restart local v9    # "slaveAfScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    .restart local v10    # "slaveCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v12    # "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v13    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v14    # "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_0
    move-exception v6

    .line 203
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v16, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "wait slave AF error : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "wait slave AF error : "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1

    .line 169
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "slaveAfScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    .end local v10    # "slaveCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v12    # "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v14    # "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_1
    move-exception v16

    :try_start_6
    throw v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    :catchall_0
    move-exception v17

    move-object/from16 v20, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v20

    :goto_4
    if-eqz v13, :cond_2

    if-eqz v17, :cond_4

    :try_start_7
    invoke-interface {v13}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :goto_5
    :try_start_8
    throw v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 219
    .end local v4    # "afScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    .end local v5    # "cancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v7    # "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v13    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .end local v15    # "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catchall_1
    move-exception v16

    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    throw v16

    .line 206
    .restart local v4    # "afScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    .restart local v5    # "cancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v7    # "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v9    # "slaveAfScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    .restart local v10    # "slaveCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v12    # "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v13    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    .restart local v14    # "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v15    # "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_2
    move-exception v16

    :try_start_9
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_3
    invoke-interface {v13}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_2

    .end local v9    # "slaveAfScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    .end local v10    # "slaveCancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v12    # "slaveIdleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v14    # "slaveTriggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_3
    move-exception v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    invoke-interface {v13}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto :goto_5

    .line 214
    .end local v13    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_4
    move-exception v6

    .line 215
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v16, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "wait AF error : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "wait AF error : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 206
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "slaveSession":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catchall_2
    move-exception v16

    goto :goto_4
.end method

.method private runSpecificAfScanProcess(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/stats/profiler/Profile;)V
    .locals 10
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "builderFactory"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "templateType"    # I
    .param p4, "guard"    # Lcom/android/camera/stats/profiler/Profile;
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
    const/4 v7, 0x0

    .line 224
    if-nez p1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    if-eqz p2, :cond_0

    .line 227
    invoke-interface {p1}, Lcom/android/camera/one/v2/core/FrameServer;->tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v4

    .line 228
    .local v4, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const-string v6, "session created"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 229
    if-eqz v4, :cond_0

    .line 236
    iget-object v6, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    :try_start_0
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;

    invoke-direct {v0}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;-><init>()V

    .line 239
    .local v0, "afScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    const-string v6, "AFTriggerResult created"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 242
    const/4 v6, 0x0

    invoke-direct {p0, p2, p3, v6}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFIdleRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 243
    .local v3, "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const-string v6, "idleBuilder created"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 244
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/camera/one/v2/core/Request;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v4, v6, v7}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 246
    const-string v6, "idleBuilder submited"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 256
    const/4 v6, 0x0

    invoke-direct {p0, p2, p3, v6}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFCancelRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v1

    .line 257
    .local v1, "cancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const-string v6, "cancelBuilder created"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 258
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/camera/one/v2/core/Request;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v4, v6, v7}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 260
    const-string v6, "cancelBuilder submited"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, p2, p3, v0}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFIdleRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v3

    .line 264
    const-string v6, "idleBuilder created"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 265
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/camera/one/v2/core/Request;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v4, v6, v7}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 267
    const-string v6, "idleBuilder submited"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, p2, p3, v0}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->createAFTriggerRequest(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/one/v2/autofocus/AFTriggerResult;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v5

    .line 271
    .local v5, "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    const-string v6, "triggerBuilder created"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 272
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/camera/one/v2/core/Request;

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v4, v6, v7}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 274
    const-string v6, "triggerBuilder submited"

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    iget-object v6, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v8, 0x1388

    sget-object v7, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9, v7}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->get(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    sget-object v6, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Focused = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Focused : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :goto_1
    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_0

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wait AF error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait AF error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p4, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 286
    .end local v0    # "afScanResult":Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
    .end local v1    # "cancelBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "idleBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v5    # "triggerBuilder":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catchall_0
    move-exception v6

    invoke-interface {v4}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    throw v6
.end method


# virtual methods
.method public isFocused()Z
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mIsFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5
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
    .line 96
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "FullAFScanCommand"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 97
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCurrentCameraId()Lcom/android/camera/async/Observable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    .local v0, "currentCameraId":I
    sget-object v2, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentCameraId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v4, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mTemplateType:I

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->runSpecificAfScanProcess(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/stats/profiler/Profile;)V

    .line 112
    .end local v0    # "currentCameraId":I
    :goto_0
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 113
    :goto_1
    return-void

    .line 102
    .restart local v0    # "currentCameraId":I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    iget v4, p0, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->mSlaveTemplateType:I

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->runSpecificAfScanProcess(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;ILcom/android/camera/stats/profiler/Profile;)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object v2, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "run FullAFScanCommand fail : no match condition."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    const-string v2, "run FullAFScanCommand fail : no match condition."

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    .end local v0    # "currentCameraId":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/autofocus/FullAFScanCommand;->runNormalAfScanProcess(Lcom/android/camera/stats/profiler/Profile;)V

    goto :goto_0
.end method
