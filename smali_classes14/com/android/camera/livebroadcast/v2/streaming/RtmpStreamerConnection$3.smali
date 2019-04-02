.class Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;
.super Ljava/lang/Object;
.source "RtmpStreamerConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->onConnectionSuccessRtmp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$002(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$500(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$500(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onStreamingStarted()V

    .line 192
    :cond_1
    return-void
.end method
