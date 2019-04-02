.class Lcom/android/camera/video/StreamingFacadeImpl$4$2;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$4;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

.field final synthetic val$abortStage2Lifetime:Lcom/android/camera/async/Lifetime;

.field final synthetic val$localLifetime:Lcom/android/camera/async/Lifetime;

.field final synthetic val$params:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4;Lcom/android/camera/async/Lifetime;Ljava/lang/Object;Lcom/android/camera/async/Lifetime;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/StreamingFacadeImpl$4;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->val$abortStage2Lifetime:Lcom/android/camera/async/Lifetime;

    iput-object p3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->val$params:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->val$localLifetime:Lcom/android/camera/async/Lifetime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountDownFinished()V
    .locals 22

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isClosed:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onCountDownFinished after streaming stop : abort streaming"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 624
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onCountDownFinished : ready to streaming"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$800(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/Lifetime;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->val$abortStage2Lifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v2, v3}, Lcom/android/camera/async/Lifetime;->remove(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$900(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/burst/OrientationLockController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/burst/OrientationLockController;->lockOrientation()V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/camera/livebroadcast/AccountAgent;->setOrientation(IZ)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v3, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1100(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRateSetting()Lcom/android/camera/async/Observable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1002(Lcom/android/camera/video/StreamingFacadeImpl;I)I

    .line 370
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureRate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1000(Lcom/android/camera/video/StreamingFacadeImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 373
    const/4 v8, 0x0

    .line 375
    .local v8, "ozoSettings":Lcom/android/camera/OZO/OZOSettings;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1100(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSurroundSoundSetting()Lcom/android/camera/async/Observable;

    move-result-object v21

    .line 377
    .local v21, "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OZO - setting surroundSoundSetting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v21 .. v21}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 379
    invoke-interface/range {v21 .. v21}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    sget-object v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-virtual {v2, v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    new-instance v8, Lcom/android/camera/OZO/OZOSettings;

    .end local v8    # "ozoSettings":Lcom/android/camera/OZO/OZOSettings;
    invoke-direct {v8}, Lcom/android/camera/OZO/OZOSettings;-><init>()V

    .line 381
    .restart local v8    # "ozoSettings":Lcom/android/camera/OZO/OZOSettings;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1200(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCustomOzoDeviceID()Ljava/lang/String;

    move-result-object v18

    .line 382
    .local v18, "deviceID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1200(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCustomNumMic()I

    move-result v17

    .line 383
    .local v17, "channelCount":I
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OZO - setting deviceID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/camera/OZO/OZOSettings;->setDevice(Ljava/lang/String;)V

    .line 386
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/camera/OZO/OZOSettings;->setChannelCount(I)V

    .line 390
    .end local v17    # "channelCount":I
    .end local v18    # "deviceID":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->val$params:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/android/camera/livebroadcast/AccountAgent;->getRTMPPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1300(Lcom/android/camera/video/StreamingFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isClosed:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v6, v6, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v7, v7, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v7}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1000(Lcom/android/camera/video/StreamingFacadeImpl;)I

    move-result v7

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/media/CamcorderProfile;Lcom/android/camera/async/Observable;IILcom/android/camera/OZO/OZOSettings;)V

    .line 392
    .local v1, "mediaStreamer":Lcom/android/camera/livebroadcast/streaming/MediaStreamer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v9, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$burstIntent:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    new-instance v10, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V

    .line 479
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->getInputSurface()Landroid/view/Surface;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v12, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isStarted:Lcom/android/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v13, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->val$localLifetime:Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    .line 483
    invoke-static {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->from(I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v0, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$imageOrientationDegrees:I

    move/from16 v16, v0

    .line 392
    invoke-static/range {v9 .. v16}, Lcom/android/camera/burst/BurstControllerCreator;->create(Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/burst/BurstResultsListener;Landroid/view/Surface;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/burst/BurstController;

    move-result-object v20

    .line 485
    .local v20, "recordController":Lcom/android/camera/burst/BurstController;
    new-instance v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->setOnStreamingResultListener(Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;)V

    .line 615
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2600(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/android/camera/burst/BurstTaker;->startBurst(Lcom/android/camera/burst/BurstController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 616
    :catch_0
    move-exception v19

    .line 617
    .local v19, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start streaming fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-virtual {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->stopBurst()Z

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$500(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    sget-object v3, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->STOPPING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    sget-object v4, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    invoke-static {v2, v3}, Lcom/android/camera/video/StreamingFacadeImpl;->access$600(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/SafeCloseable;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordError(I)V

    goto/16 :goto_0
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 3
    .param p1, "remainingSeconds"    # I

    .prologue
    .line 350
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemainingSecondsChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    return-void
.end method
