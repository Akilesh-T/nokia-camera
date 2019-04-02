.class public Lcom/sina/sinalivesdk/refactor/messages/ReceiveRoomMsg;
.super Lcom/sina/sinalivesdk/refactor/messages/PushMessage;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sina/sinalivesdk/refactor/messages/PushMessage;-><init>(Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;J)V

    return-void
.end method


# virtual methods
.method public parse(Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)I
    .locals 3
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

    const-string v1, "DST"

    const-string v2, "reciiveRoomMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v0, "DST"

    const-string v1, "reciiveRoomMsg1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3}, Lcom/sina/sinalivesdk/refactor/messages/PushMessageCallBackHandler;->notifyChatRoomMsgListner(Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Z)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReceiveRoomMsg"

    return-object v0
.end method
