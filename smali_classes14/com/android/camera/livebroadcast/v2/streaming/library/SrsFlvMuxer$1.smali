.class Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->start(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

.field final synthetic val$rtmpUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->val$rtmpUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 175
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->val$rtmpUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    move-result-object v2

    invoke-interface {v2}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionSuccessRtmp()V

    .line 179
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$200(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .line 182
    .local v1, "frame":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_sequenceHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2, v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$302(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .line 185
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$300(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$400(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v1    # "frame":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$600(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "frame":Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2, v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$502(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .line 188
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$500(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$400(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$300(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 192
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2, v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$400(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_0

    .line 193
    :cond_5
    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$500(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2, v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$400(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
