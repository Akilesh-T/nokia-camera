.class Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$600(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$600(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$600(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/lang/Thread;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$602(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$200(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 225
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$700(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->reset()V

    .line 226
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$802(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Z)Z

    .line 227
    const-string v1, "SrsFlvMuxer"

    const-string v2, "SrsFlvMuxer closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$900(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    .line 231
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SrsFlvMuxer"

    const-string v2, "SrsFlvMuxer join timeout."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->access$600(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
