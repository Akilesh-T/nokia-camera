.class Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalConnListener;
.super Ljava/lang/Object;
.source "LiveMsgManager.java"

# interfaces
.implements Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalConnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalConnListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .prologue
    .line 61
    const-string v1, "tag"

    const-string v2, "onConnected: ----success="

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalConnListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$000(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalConnListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$000(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;

    move-object v0, v1

    .line 63
    .local v0, "listener":Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;
    :goto_0
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;->onConnected()V

    .line 65
    :cond_0
    return-void

    .line 62
    .end local v0    # "listener":Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisconnected(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected: ----code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",desc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalConnListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$000(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$InternalConnListener;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$000(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;

    move-object v0, v1

    .line 71
    .local v0, "listener":Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;
    :goto_0
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;->onDisConnected()V

    .line 73
    :cond_0
    return-void

    .line 70
    .end local v0    # "listener":Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
