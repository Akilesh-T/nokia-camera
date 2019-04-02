.class Lcom/android/camera/livebroadcast/streaming/Streaming$1;
.super Ljava/lang/Object;
.source "Streaming.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/streaming/Streaming;->init(Landroid/app/Activity;Lcom/android/camera/pip/opengl/GLRenderer;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/streaming/Streaming;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$1;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 85
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "startError()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$1;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$100(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->stop()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$1;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$200(Lcom/android/camera/livebroadcast/streaming/Streaming;)V

    .line 88
    return-void
.end method

.method public startSuccess()V
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSuccess() with is recording:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$1;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$300(Lcom/android/camera/livebroadcast/streaming/Streaming;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$1;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$300(Lcom/android/camera/livebroadcast/streaming/Streaming;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This recording is halt. Therefore, we stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$1;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$100(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$1;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$100(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming$1;->this$0:Lcom/android/camera/livebroadcast/streaming/Streaming;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->access$100(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->stop()V

    .line 100
    :cond_0
    return-void
.end method
