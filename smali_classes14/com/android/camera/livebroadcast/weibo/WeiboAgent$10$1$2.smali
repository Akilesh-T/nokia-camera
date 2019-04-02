.class Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;
.super Ljava/lang/Object;
.source "WeiboAgent.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 636
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLive - onComplete : response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2$1;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 644
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    iget-object v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-boolean v3, v3, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$delete:Z

    .line 646
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    .line 644
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 651
    invoke-static {}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLive WeiboException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$700(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2$2;-><init>(Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->this$0:Lcom/android/camera/livebroadcast/weibo/WeiboAgent;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->STOP:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1$2;->this$2:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10$1;->this$1:Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;

    iget-object v2, v2, Lcom/android/camera/livebroadcast/weibo/WeiboAgent$10;->val$statusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/android/camera/livebroadcast/weibo/WeiboAgent;->access$900(Lcom/android/camera/livebroadcast/weibo/WeiboAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 659
    return-void
.end method
