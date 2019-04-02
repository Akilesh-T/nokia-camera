.class Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->onBurstError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 421
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-virtual {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->isBurstRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-virtual {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->stopBurst()Z

    .line 424
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    const-string v3, "stopStreaming on BurstError"

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 426
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 427
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->stop()V

    .line 428
    const-string v2, "MediaStreamer stop ok"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-static {v2, v3}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1400(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V

    .line 434
    const-string v2, "MediaStreamer release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 437
    :goto_0
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v2}, Lcom/android/camera/video/StreamingFacadeImpl;->access$500(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    sget-object v3, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->STOPPING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    sget-object v4, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 438
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    invoke-static {v2, v3}, Lcom/android/camera/video/StreamingFacadeImpl;->access$600(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/SafeCloseable;)V

    .line 439
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$recordListener:Lcom/android/camera/session/VideoRecordListener;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordError(I)V

    .line 441
    .end local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    return-void

    .line 429
    .restart local v1    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "stop fail"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    const-string v2, "MediaStreamer stop fail"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-static {v2, v3}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1400(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V

    .line 434
    const-string v2, "MediaStreamer release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$1;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-static {v3, v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1400(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V

    .line 434
    const-string v3, "MediaStreamer release"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    throw v2
.end method
