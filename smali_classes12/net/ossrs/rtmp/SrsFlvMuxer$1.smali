.class Lnet/ossrs/rtmp/SrsFlvMuxer$1;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/rtmp/SrsFlvMuxer;->start(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

.field final synthetic val$rtmpUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 156
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    iput-object p2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->val$rtmpUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 159
    const/4 v2, -0x1

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 160
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    iget-object v3, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->val$rtmpUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$000(Lnet/ossrs/rtmp/SrsFlvMuxer;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$100(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    move-result-object v2

    invoke-interface {v2}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionSuccessRtmp()V

    .line 164
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    :try_start_0
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$200(Lnet/ossrs/rtmp/SrsFlvMuxer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .line 167
    .local v1, "frame":Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;
    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->is_sequenceHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v2, v1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$302(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .line 170
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    iget-object v3, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v3}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$300(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$400(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v1    # "frame":Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$600(Lnet/ossrs/rtmp/SrsFlvMuxer;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "frame":Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v2, v1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$502(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .line 173
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    iget-object v3, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v3}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$500(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$400(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$300(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 177
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v2, v1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$400(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_0

    .line 178
    :cond_5
    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$500(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer$1;->this$0:Lnet/ossrs/rtmp/SrsFlvMuxer;

    invoke-static {v2, v1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->access$400(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
