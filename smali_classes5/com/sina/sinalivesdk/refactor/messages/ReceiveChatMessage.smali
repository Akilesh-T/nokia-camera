.class public Lcom/sina/sinalivesdk/refactor/messages/ReceiveChatMessage;
.super Lcom/sina/sinalivesdk/refactor/messages/PushMessage;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sina/sinalivesdk/refactor/messages/PushMessage;-><init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;J)V

    return-void
.end method


# virtual methods
.method public parse(Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;Z)I"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sina/sinalivesdk/refactor/messages/PushMessage;->parse(Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/sina/sinalivesdk/refactor/push/a/c;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "msg_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    const-string v1, "ReceiveChatMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flag:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->flag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " json:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserAction;->paserPushMessage(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/PushMessageModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setMsg_type(I)V

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setNeedack(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->requestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/PushMessageCallBackHandler;->notifyAllMessageListener(ILcom/sina/sinalivesdk/models/PushMessageModel;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public requestName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReceiveChatMessageHandler"

    return-object v0
.end method
