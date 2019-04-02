.class Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;
.super Ljava/lang/Object;
.source "FacebookAgent.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    const/4 v5, 0x0

    .line 654
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$500(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1$1;-><init>(Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 660
    invoke-static {}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopLiveBroadcast response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/livebroadcast/facebook/FacebookError;->getErrorMessage(Lcom/facebook/FacebookRequestError;)I

    move-result v0

    .line 662
    .local v0, "errorMsg":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->this$0:Lcom/android/camera/livebroadcast/facebook/FacebookAgent;

    .line 665
    invoke-static {v4}, Lcom/android/camera/livebroadcast/facebook/FacebookAgent;->access$300(Lcom/android/camera/livebroadcast/facebook/FacebookAgent;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 672
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1$1;->this$2:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;

    iget-object v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9$1;->this$1:Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;

    iget-boolean v4, v4, Lcom/android/camera/livebroadcast/facebook/FacebookAgent$9;->val$delete:Z

    .line 670
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 668
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
