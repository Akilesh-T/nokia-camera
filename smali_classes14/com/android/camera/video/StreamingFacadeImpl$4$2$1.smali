.class Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstResultsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$4$2;->onCountDownFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mError:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

.field final synthetic val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstCompleted()V
    .locals 6

    .prologue
    .line 449
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onBurstCompleted"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 450
    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    const-string v4, "stopStreaming"

    invoke-virtual {v2, v4}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 454
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_1
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 455
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->stop()V

    .line 456
    const-string v2, "MediaStreamer stop ok"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    invoke-interface {v2}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordEnd()V

    .line 458
    const-string v2, "recordListener.onVideoRecordEnd"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 464
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-static {v2, v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1400(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V

    .line 465
    const-string v2, "MediaStreamer release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 468
    :goto_0
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$2;

    invoke-direct {v4, p0}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$2;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 476
    .end local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    return-void

    .line 459
    .restart local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v4, "stop fail"

    invoke-static {v2, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    const-string v2, "MediaStreamer stop fail"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    const/4 v4, -0x1

    invoke-interface {v2, v4}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 464
    :try_start_4
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-static {v2, v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1400(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V

    .line 465
    const-string v2, "MediaStreamer release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 464
    .restart local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catchall_1
    move-exception v2

    :try_start_5
    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v5, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-static {v4, v5}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1400(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V

    .line 465
    const-string v4, "MediaStreamer release"

    invoke-interface {v1, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onBurstError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 414
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstError : error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 444
    :cond_0
    monitor-exit v1

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBurstStarted()V
    .locals 4

    .prologue
    .line 397
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "onBurstStarted"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 398
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->mError:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 399
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    const-string v3, "startStreaming"

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 402
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->start()V

    .line 403
    const-string v2, "MediaStreamer start OK"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "MediaStreamer start fail"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "Could not start MediaStreamer. "

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->onBurstError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
