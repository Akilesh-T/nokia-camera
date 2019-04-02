.class Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->onStreamingStoped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "stage"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p2, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "params"    # Ljava/lang/Object;

    .prologue
    .line 543
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopLiveBroadcast result : Stage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ErrorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$1500(Lcom/android/camera/video/StreamingFacadeImpl;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 545
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    invoke-static {v2, v0, v1}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->access$2400(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;J)V

    .line 546
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v2, v2, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2$1;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$2;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method
