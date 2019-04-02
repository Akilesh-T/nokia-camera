.class Lcom/android/camera/video/DualSightVideoFacadeImpl$2;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstResultsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field final synthetic this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

.field final synthetic val$captureSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic val$deviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field final synthetic val$localLifetime:Lcom/android/camera/async/Lifetime;

.field final synthetic val$mainThread:Lcom/android/camera/async/MainThread;

.field final synthetic val$recordListener:Lcom/android/camera/session/VideoRecordListener;

.field final synthetic val$remainingStorageBytes:J

.field final synthetic val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DualSightVideoFacadeImpl;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;JLcom/android/camera/session/CaptureSession;Lcom/android/camera/async/MainThread;Lcom/android/camera/session/VideoRecordListener;Lcom/android/camera/async/SafeCloseable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    iput-object p2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$localLifetime:Lcom/android/camera/async/Lifetime;

    iput-object p3, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$deviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iput-wide p4, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$remainingStorageBytes:J

    iput-object p6, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    iput-object p7, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    iput-object p8, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    iput-object p9, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->releaseMediaRecorder()V

    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    .line 456
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing media recorder : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 458
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "release MediaRecorder"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 459
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 460
    const-string v1, "MediaRecorder reset"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 462
    const-string v1, "MediaRecorder release"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 463
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 464
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 466
    .end local v0    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    return-void

    .line 456
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBurstCompleted()V
    .locals 5

    .prologue
    .line 423
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onBurstCompleted"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 426
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    const-string v4, "stopRecording"

    invoke-virtual {v2, v4}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 428
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 429
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 430
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 431
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 432
    const-string v2, "MediaRecorder stop ok"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    invoke-interface {v2}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordEnd()V

    .line 434
    const-string v2, "recordListener.onVideoRecordEnd"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 440
    :try_start_2
    invoke-direct {p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->releaseMediaRecorder()V

    .line 441
    const-string v2, "MediaRecorder release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 444
    :goto_0
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$5;

    invoke-direct {v4, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$5;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 452
    .end local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    return-void

    .line 435
    .restart local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v4, "stop fail"

    invoke-static {v2, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    const-string v2, "MediaRecorder stop fail"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    const/4 v4, -0x1

    invoke-interface {v2, v4}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 440
    :try_start_4
    invoke-direct {p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->releaseMediaRecorder()V

    .line 441
    const-string v2, "MediaRecorder release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 440
    .restart local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-direct {p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->releaseMediaRecorder()V

    .line 441
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
    .line 402
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

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

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;

    invoke-direct {v2, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$4;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 418
    :cond_0
    monitor-exit v1

    .line 419
    return-void

    .line 418
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
    const/4 v13, 0x0

    .line 238
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onBurstStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 241
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    const-string v1, "startRecording"

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    .line 242
    .local v8, "guard":Lcom/android/camera/stats/profiler/Profile;
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 243
    const-string v0, "MediaRecorder init"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaptureMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$5;->$SwitchMap$com$android$camera$one$OneCameraCaptureSetting$CaptureMode:[I

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 268
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOW CaptureMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW CaptureMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOW CaptureMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->onBurstError(Ljava/lang/Exception;)V

    .line 398
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 250
    const-string v0, "setAudioSource"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 252
    const-string v0, "setVideoSource"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$500(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 254
    const-string v0, "setProfile"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$500(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$500(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 256
    const-string v0, "setVideoSize"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$600(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 258
    const-string v0, "setInputSurface"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSurroundSoundSetting()Lcom/android/camera/async/Observable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$700(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$700(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$800(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$localLifetime:Lcom/android/camera/async/Lifetime;

    iget-object v3, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSurroundSoundSetting()Lcom/android/camera/async/Observable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$deviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/one/OneCameraCharacteristics;->configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z

    move-result v12

    .line 262
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

    .line 263
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

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

    .line 273
    .end local v12    # "ozoInUsed":Z
    :cond_0
    const-string v0, "CaptureMode base setting done"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "CaptureMode base setting done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$900(Lcom/android/camera/video/DualSightVideoFacadeImpl;)I

    move-result v0

    if-lez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$900(Lcom/android/camera/video/DualSightVideoFacadeImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 278
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$remainingStorageBytes:J

    const-wide/32 v2, 0x2aea540

    sub-long v10, v0, v2

    .line 279
    .local v10, "maxFileSize":J
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1000(Lcom/android/camera/video/DualSightVideoFacadeImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1000(Lcom/android/camera/video/DualSightVideoFacadeImpl;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1000(Lcom/android/camera/video/DualSightVideoFacadeImpl;)J

    move-result-wide v10

    .line 282
    :cond_2
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

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

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 285
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "setMaxFileSize done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 294
    .local v9, "loc":Landroid/location/Location;
    if-eqz v9, :cond_3

    .line 295
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 296
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "setLocation done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getExternalUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getVideoFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 301
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile done : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getExternalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    :goto_2
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$500(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$500(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$deviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 312
    const-string v0, "MediaRecorder setting ready."

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MediaRecorder setting ready."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 317
    const-string v0, "MediaRecorder prepare done."

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MediaRecorder prepare done."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$1;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 371
    const-string v0, "MediaRecorder listener setup"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MediaRecorder listener setup"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 376
    const-string v0, "MediaRecorder start OK"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "MediaRecorder start OK"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 385
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1202(Lcom/android/camera/video/DualSightVideoFacadeImpl;J)J

    .line 386
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1200(Lcom/android/camera/video/DualSightVideoFacadeImpl;)J

    move-result-wide v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v3, v1}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordStart(JF)V

    .line 387
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0, v13}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1302(Lcom/android/camera/video/DualSightVideoFacadeImpl;Z)Z

    .line 389
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$3;

    invoke-direct {v1, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$3;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 286
    .end local v9    # "loc":Landroid/location/Location;
    :catch_0
    move-exception v7

    .line 287
    .local v7, "exception":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

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

    .line 303
    .end local v7    # "exception":Ljava/lang/RuntimeException;
    .restart local v9    # "loc":Landroid/location/Location;
    :cond_4
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile done : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 319
    :catch_1
    move-exception v6

    .line 320
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "MediaRecorder prepare fail."

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    invoke-virtual {p0, v6}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->onBurstError(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 378
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 379
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "MediaRecorder start fail"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Could not start media recorder. "

    invoke-static {v0, v1, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    invoke-virtual {p0, v6}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->onBurstError(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
