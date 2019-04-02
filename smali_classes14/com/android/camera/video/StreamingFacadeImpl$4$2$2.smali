.class Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$4$2;->onCountDownFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

.field final synthetic val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;
    .param p1, "x1"    # J

    .prologue
    .line 485
    invoke-direct {p0, p1, p2}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->logLiveStream(J)V

    return-void
.end method

.method private logLiveStream(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 594
    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    .line 595
    .local v3, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v4, "default_scope"

    const-string v5, "pref_live_broadcast_choose_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "accountType":Ljava/lang/String;
    const/4 v2, 0x1

    .line 598
    .local v2, "platform":I
    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0803fe

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    const/4 v2, 0x1

    .line 606
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/stats/UsageStatistics;->getCurrentMode()I

    move-result v1

    .line 608
    .local v1, "currentMode":I
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v4

    invoke-virtual {v4, v1, p1, p2, v2}, Lcom/android/camera/stats/UsageStatistics;->liveStreamingDoneEvent(IJI)V

    .line 610
    return-void

    .line 600
    .end local v1    # "currentMode":I
    :cond_1
    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0803ff

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 601
    const/4 v2, 0x2

    goto :goto_0

    .line 602
    :cond_2
    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f080400

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    const/4 v2, 0x3

    goto :goto_0
.end method


# virtual methods
.method public onConnectionFailed()V
    .locals 2

    .prologue
    .line 567
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onConnectionFailed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$3;

    invoke-direct {v1, p0}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$3;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 578
    return-void
.end method

.method public onConnectionWeak()V
    .locals 2

    .prologue
    .line 582
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onConnectionWeak"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$4;

    invoke-direct {v1, p0}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$4;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 590
    return-void
.end method

.method public onStreamingStarted()V
    .locals 6

    .prologue
    .line 488
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamingStarted : rtmpPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->val$mediaStreamer:Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->getRtmpPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isStarted:Lcom/android/camera/async/ConcurrentState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    new-instance v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;

    invoke-direct {v2, p0}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$1;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;)V

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->val$params:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isClosed:Lcom/android/camera/async/ConcurrentState;

    iget-object v5, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/livebroadcast/AccountAgent;->startLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;Lcom/android/camera/async/Observable;I)V

    .line 535
    return-void
.end method

.method public onStreamingStoped()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 539
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onStreamingStoped"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    new-instance v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2;

    invoke-direct {v2, p0}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;)V

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v3, v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->val$params:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isStarted:Lcom/android/camera/async/ConcurrentState;

    .line 561
    invoke-virtual {v4}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    .line 540
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/livebroadcast/AccountAgent;->stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;ZI)V

    .line 562
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$isStarted:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 563
    return-void

    :cond_0
    move v4, v6

    .line 561
    goto :goto_0
.end method
