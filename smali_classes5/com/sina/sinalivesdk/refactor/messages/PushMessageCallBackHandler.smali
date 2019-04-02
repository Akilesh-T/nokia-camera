.class Lcom/sina/sinalivesdk/refactor/messages/PushMessageCallBackHandler;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyAllMessageListener(ILcom/sina/sinalivesdk/models/PushMessageModel;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getMessageListeners()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/models/PushMessageModel;->isNeedack()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sina/sinalivesdk/manager/FilterManager;->instance()Lcom/sina/sinalivesdk/manager/FilterManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/models/PushMessageModel;->getMsg()Lcom/sina/sinalivesdk/models/MessageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/models/MessageModel;->getMid()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sina/sinalivesdk/manager/FilterManager;->filterId(J)Z

    move-result v0

    const-string v1, "hcl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "need filter:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/interfaces/WBIMLiveListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/sina/sinalivesdk/interfaces/WBIMLiveListener;->onNewMessage(ILcom/sina/sinalivesdk/models/PushMessageModel;Ljava/lang/String;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static notifyChatRoomMsgListner(Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getChatMsgListener()Lcom/sina/sinalivesdk/interfaces/WBIMChatMsgListener;

    move-result-object v0

    const-string v1, "DST"

    const-string v2, "reciiveRoomMsg2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->proto()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/sina/sinalivesdk/manager/FilterManager;->instance()Lcom/sina/sinalivesdk/manager/FilterManager;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-static {p1, v2, v4, v5}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/util/HashMap;IJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    invoke-virtual {v1, v2, v3}, Lcom/sina/sinalivesdk/manager/FilterManager;->filterId(J)Z

    move-result v1

    const-string v2, "DST"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "need filter:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v0, "DST"

    const-string v1, "reciiveRoomMsg5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    const-string v1, "DST"

    const-string v2, "reciiveRoomMsg4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p0, p1}, Lcom/sina/sinalivesdk/interfaces/WBIMChatMsgListener;->onNewMessage(Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;)V

    goto :goto_0
.end method
