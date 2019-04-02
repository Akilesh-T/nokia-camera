.class Lcom/android/camera/video/VideoFacadeImpl$1;
.super Ljava/lang/Object;
.source "VideoFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstResultsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoFacadeImpl;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field final synthetic this$0:Lcom/android/camera/video/VideoFacadeImpl;

.field final synthetic val$captureSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic val$deviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field final synthetic val$imageOrientationDegrees:I

.field final synthetic val$localLifetime:Lcom/android/camera/async/Lifetime;

.field final synthetic val$mainThread:Lcom/android/camera/async/MainThread;

.field final synthetic val$recordListener:Lcom/android/camera/session/VideoRecordListener;

.field final synthetic val$remainingStorageBytes:J


# direct methods
.method constructor <init>(Lcom/android/camera/video/VideoFacadeImpl;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;JLcom/android/camera/session/CaptureSession;ILcom/android/camera/async/MainThread;Lcom/android/camera/session/VideoRecordListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    iput-object p2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$localLifetime:Lcom/android/camera/async/Lifetime;

    iput-object p3, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$deviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iput-wide p4, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$remainingStorageBytes:J

    iput-object p6, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    iput p7, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$imageOrientationDegrees:I

    iput-object p8, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$mainThread:Lcom/android/camera/async/MainThread;

    iput-object p9, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/video/VideoFacadeImpl$1;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl$1;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/camera/video/VideoFacadeImpl$1;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/video/VideoFacadeImpl$1;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl$1;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    .line 454
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing media recorder : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 456
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "release MediaRecorder"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 457
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 458
    const-string v1, "MediaRecorder reset"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 460
    const-string v1, "MediaRecorder release"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 461
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 462
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 464
    .end local v0    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    return-void

    .line 454
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBurstCompleted()V
    .locals 5

    .prologue
    .line 421
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onBurstCompleted"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    const-string v4, "stopRecording"

    invoke-virtual {v2, v4}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 426
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 427
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 428
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 429
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 430
    const-string v2, "MediaRecorder stop ok"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    invoke-interface {v2}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordEnd()V

    .line 432
    const-string v2, "recordListener.onVideoRecordEnd"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 438
    :try_start_2
    invoke-direct {p0}, Lcom/android/camera/video/VideoFacadeImpl$1;->releaseMediaRecorder()V

    .line 439
    const-string v2, "MediaRecorder release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 442
    :goto_0
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/video/VideoFacadeImpl$1$5;

    invoke-direct {v4, p0}, Lcom/android/camera/video/VideoFacadeImpl$1$5;-><init>(Lcom/android/camera/video/VideoFacadeImpl$1;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 450
    .end local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    return-void

    .line 433
    .restart local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v4, "stop fail"

    invoke-static {v2, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    const-string v2, "MediaRecorder stop fail"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    const/4 v4, -0x1

    invoke-interface {v2, v4}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 438
    :try_start_4
    invoke-direct {p0}, Lcom/android/camera/video/VideoFacadeImpl$1;->releaseMediaRecorder()V

    .line 439
    const-string v2, "MediaRecorder release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 438
    .restart local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-direct {p0}, Lcom/android/camera/video/VideoFacadeImpl$1;->releaseMediaRecorder()V

    .line 439
    const-string v4, "MediaRecorder release"

    invoke-interface {v1, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onBurstError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 400
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstError : error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", VideoFilename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/video/VideoFacadeImpl$1$4;

    invoke-direct {v2, p0}, Lcom/android/camera/video/VideoFacadeImpl$1$4;-><init>(Lcom/android/camera/video/VideoFacadeImpl$1;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 416
    :cond_0
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBurstStarted()V
    .locals 14

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x5

    const/4 v13, 0x0

    const/4 v3, 0x2

    .line 180
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onBurstStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    const-string v1, "startRecording"

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    .line 184
    .local v8, "guard":Lcom/android/camera/stats/profiler/Profile;
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 185
    const-string v0, "MediaRecorder init"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaptureMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/VideoFacadeImpl;->access$100(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/android/camera/video/VideoFacadeImpl$4;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$100(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 258
    const-string v0, "setAudioSource"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 260
    const-string v0, "setVideoSource"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 262
    const-string v0, "setProfile"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 264
    const-string v0, "setVideoSize"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$400(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 266
    const-string v0, "setInputSurface"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    const-string v0, "CaptureMode base setting done"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CaptureMode base setting done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$700(Lcom/android/camera/video/VideoFacadeImpl;)I

    move-result v0

    if-lez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$700(Lcom/android/camera/video/VideoFacadeImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 274
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$remainingStorageBytes:J

    const-wide/32 v2, 0x2aea540

    sub-long v10, v0, v2

    .line 275
    .local v10, "maxFileSize":J
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$800(Lcom/android/camera/video/VideoFacadeImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$800(Lcom/android/camera/video/VideoFacadeImpl;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$800(Lcom/android/camera/video/VideoFacadeImpl;)J

    move-result-wide v10

    .line 278
    :cond_2
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxFileSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 281
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "setMaxFileSize done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 290
    .local v9, "loc":Landroid/location/Location;
    if-eqz v9, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 292
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "setLocation done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getExternalUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getVideoFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 297
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile done : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getExternalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    :goto_2
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$imageOrientationDegrees:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 304
    const-string v0, "MediaRecorder setting ready."

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MediaRecorder setting ready."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 309
    const-string v0, "MediaRecorder prepare done."

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MediaRecorder prepare done."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/android/camera/video/VideoFacadeImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/video/VideoFacadeImpl$1$1;-><init>(Lcom/android/camera/video/VideoFacadeImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/android/camera/video/VideoFacadeImpl$1$2;

    invoke-direct {v1, p0}, Lcom/android/camera/video/VideoFacadeImpl$1$2;-><init>(Lcom/android/camera/video/VideoFacadeImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 363
    const-string v0, "MediaRecorder listener setup"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MediaRecorder listener setup"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 368
    const-string v0, "MediaRecorder start OK"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MediaRecorder start OK"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 377
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/video/VideoFacadeImpl;->access$1002(Lcom/android/camera/video/VideoFacadeImpl;J)J

    .line 378
    sget-object v0, Lcom/android/camera/video/VideoFacadeImpl$4;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$100(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 384
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$1000(Lcom/android/camera/video/VideoFacadeImpl;)J

    move-result-wide v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v3, v1}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordStart(JF)V

    .line 387
    :goto_3
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0, v13}, Lcom/android/camera/video/VideoFacadeImpl;->access$1102(Lcom/android/camera/video/VideoFacadeImpl;Z)Z

    .line 389
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/video/VideoFacadeImpl$1$3;

    invoke-direct {v1, p0}, Lcom/android/camera/video/VideoFacadeImpl$1$3;-><init>(Lcom/android/camera/video/VideoFacadeImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 396
    :goto_4
    return-void

    .line 190
    .end local v9    # "loc":Landroid/location/Location;
    .end local v10    # "maxFileSize":J
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 191
    const-string v0, "setVideoSource"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 193
    const-string v0, "setProfile"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 195
    const-string v0, "setVideoSize"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$300(Lcom/android/camera/video/VideoFacadeImpl;)I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 197
    const-string v0, "setCaptureRate"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$400(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 199
    const-string v0, "setInputSurface"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :pswitch_1
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProfile quality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 207
    const-string v0, "setVideoSource"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 209
    const-string v0, "setOutputFormat"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 211
    const-string v0, "setVideoEncoder"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 216
    const-string v0, "setVideoSize"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$300(Lcom/android/camera/video/VideoFacadeImpl;)I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 218
    const-string v0, "setCaptureRate"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 220
    const-string v0, "setVideoFrameRate"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    packed-switch v0, :pswitch_data_2

    .line 230
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v2, v5, v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 233
    :goto_5
    const-string v0, "setVideoEncodingBitRate"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$400(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 235
    const-string v0, "setInputSurface"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_5

    .line 238
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 239
    const-string v0, "setAudioSource"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 241
    const-string v0, "setVideoSource"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 243
    const-string v0, "setProfile"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 245
    const-string v0, "setVideoSize"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$400(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 247
    const-string v0, "setInputSurface"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$100(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSurroundSoundSetting()Lcom/android/camera/async/Observable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$500(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$500(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$600(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$localLifetime:Lcom/android/camera/async/Lifetime;

    iget-object v3, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/VideoFacadeImpl;->access$100(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSurroundSoundSetting()Lcom/android/camera/async/Observable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$deviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/one/OneCameraCharacteristics;->configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z

    move-result v12

    .line 251
    .local v12, "ozoInUsed":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ozoInUsed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ozoInUsed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v12    # "ozoInUsed":Z
    .restart local v10    # "maxFileSize":J
    :catch_0
    move-exception v7

    .line 283
    .local v7, "exception":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxFileSize error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 299
    .end local v7    # "exception":Ljava/lang/RuntimeException;
    .restart local v9    # "loc":Landroid/location/Location;
    :cond_4
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile done : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 311
    :catch_1
    move-exception v6

    .line 312
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "MediaRecorder prepare fail."

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    invoke-virtual {p0, v6}, Lcom/android/camera/video/VideoFacadeImpl$1;->onBurstError(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 370
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 371
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "MediaRecorder start fail"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/android/camera/video/VideoFacadeImpl;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not start media recorder. "

    invoke-static {v0, v1, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    invoke-virtual {p0, v6}, Lcom/android/camera/video/VideoFacadeImpl$1;->onBurstError(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 381
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$1000(Lcom/android/camera/video/VideoFacadeImpl;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoFacadeImpl;->access$300(Lcom/android/camera/video/VideoFacadeImpl;)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/VideoFacadeImpl;->access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v4

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-interface {v0, v2, v3, v1}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordStart(JF)V

    goto/16 :goto_3

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 378
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 222
    :pswitch_data_2
    .packed-switch 0x7d2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
