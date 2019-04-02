.class Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;
.super Ljava/lang/Object;
.source "StreamerConnection.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/streaming/StreamerConnection;-><init>(Landroid/app/Activity;Landroid/media/CamcorderProfile;Lcom/android/camera/async/Observable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

.field final synthetic val$videoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->val$videoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "RtmpSender - onConnected"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$100(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$100(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$200(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/laifeng/sopcastsdk/controller/StreamController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->start()V

    .line 96
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$300(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$300(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onStreamingStarted()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$600(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v2, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1$1;-><init>(Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 109
    :cond_1
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConnecting()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "RtmpSender - onConnecting"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onDisConnected()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "RtmpSender - onDisConnected"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$300(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$300(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onConnectionFailed()V

    .line 119
    :cond_0
    return-void
.end method

.method public onNetBad()V
    .locals 5

    .prologue
    .line 147
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "RtmpSender - onNetBad"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$700(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    iget-object v3, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->val$videoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    iget v3, v3, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->minBps:I

    if-lt v2, v3, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$700(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)I

    move-result v2

    add-int/lit8 v0, v2, -0x64

    .line 150
    .local v0, "bps":I
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$200(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/laifeng/sopcastsdk/controller/StreamController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$200(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/laifeng/sopcastsdk/controller/StreamController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setVideoBps(I)Z

    move-result v1

    .line 152
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2, v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$702(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;I)I

    .line 154
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BPS_CHANGE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$700(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    .end local v0    # "bps":I
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$300(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$300(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onConnectionWeak()V

    goto :goto_0
.end method

.method public onNetGood()V
    .locals 5

    .prologue
    .line 132
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "RtmpSender - onNetGood"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$700(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iget-object v3, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->val$videoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    iget v3, v3, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->maxBps:I

    if-gt v2, v3, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$700(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)I

    move-result v2

    add-int/lit8 v0, v2, 0x32

    .line 135
    .local v0, "bps":I
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$200(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/laifeng/sopcastsdk/controller/StreamController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$200(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/laifeng/sopcastsdk/controller/StreamController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setVideoBps(I)Z

    move-result v1

    .line 137
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2, v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$702(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;I)I

    .line 139
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BPS_CHANGE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$700(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    .end local v0    # "bps":I
    .end local v1    # "result":Z
    :cond_0
    return-void
.end method

.method public onPublishFail()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "RtmpSender - onPublishFail"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$300(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$300(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onConnectionFailed()V

    .line 128
    :cond_0
    return-void
.end method
