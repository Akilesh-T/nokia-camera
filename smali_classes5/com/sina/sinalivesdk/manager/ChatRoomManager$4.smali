.class Lcom/sina/sinalivesdk/manager/ChatRoomManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;


# instance fields
.field private synthetic a:Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;

.field private synthetic b:Z


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;Z)V
    .locals 0

    iput-object p2, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$4;->a:Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;

    iput-boolean p3, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, ""

    sput-object v0, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONTAINER_ID:J

    const/4 v0, 0x0

    sput v0, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONTAINER_TYPE:I

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$4;->a:Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;->getResponseHelper()Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$4;->a:Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;->getHeader()Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->getRequestId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;Ljava/lang/String;)I

    const-string v0, "ChatRoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "socket connect error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectSuccess()V
    .locals 4

    const-string v0, "ChatRoomManager"

    const-string v1, "socket connect success, set roomID to "

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$4;->a:Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->putRequest(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$4;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->getInstance()Lcom/sina/sinalivesdk/util/WBIMLiveLog;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->setSendTime(J)V

    :cond_0
    return-void
.end method
