.class Lcom/android/camera/video/StreamingFacadeImpl$4$1;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$4;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

.field final synthetic val$params:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/StreamingFacadeImpl$4;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->val$params:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 337
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "abortStage2Lifetime close"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->val$params:Ljava/lang/Object;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$700(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;ZI)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$500(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->STOPPING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    invoke-static {v0, v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$600(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/SafeCloseable;)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$captureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 343
    return-void
.end method
