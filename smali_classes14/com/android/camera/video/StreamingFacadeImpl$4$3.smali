.class Lcom/android/camera/video/StreamingFacadeImpl$4$3;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$errorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/StreamingFacadeImpl$4;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iput-object p3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$errorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iput-object p4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->stopBurst()Z

    .line 633
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    if-eq v0, v1, :cond_0

    .line 634
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpect Stage when createLiveBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  abort streaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpect Stage when createLiveBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_0
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when createLiveBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$errorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  abort streaming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$stage:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$errorCode:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->val$result:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v5, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$3;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v5}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2200(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/Observable;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2300(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Lcom/android/camera/livebroadcast/LiveBroadcastManager;I)V

    .line 639
    return-void
.end method
