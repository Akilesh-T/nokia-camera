.class Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$1;
.super Ljava/lang/Object;
.source "LiveMsgManager.java"

# interfaces
.implements Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->joinRoom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
        "<",
        "Lcom/sina/sinalivesdk/models/JoinRoomModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$1;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "others"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onJoinRoomFailed:---code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",desc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", others="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$1;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$000(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$1;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$000(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;

    move-object v0, v1

    .line 189
    .local v0, "listener":Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;
    :goto_0
    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;->onDisConnected()V

    .line 191
    :cond_0
    return-void

    .line 188
    .end local v0    # "listener":Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSuccess(Lcom/sina/sinalivesdk/models/JoinRoomModel;Ljava/lang/String;)V
    .locals 4
    .param p1, "joinRoomModel"    # Lcom/sina/sinalivesdk/models/JoinRoomModel;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onJoinRoomSuccess:  ,joinRoomModel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/weibo/WeiboLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$1;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$000(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$1;->this$0:Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;->access$000(Lcom/android/camera/livebroadcast/weibo/LiveMsgManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;

    move-object v0, v1

    .line 204
    .local v0, "listener":Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;
    :goto_0
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;->onConnected()V

    .line 206
    :cond_0
    return-void

    .line 203
    .end local v0    # "listener":Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$ConnectionListener;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    check-cast p1, Lcom/sina/sinalivesdk/models/JoinRoomModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/livebroadcast/weibo/LiveMsgManager$1;->onSuccess(Lcom/sina/sinalivesdk/models/JoinRoomModel;Ljava/lang/String;)V

    return-void
.end method
