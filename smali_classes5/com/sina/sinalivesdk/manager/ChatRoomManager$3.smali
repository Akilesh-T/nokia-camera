.class Lcom/sina/sinalivesdk/manager/ChatRoomManager$3;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Z


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$3;->a:Z

    invoke-direct {p0, p2}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;-><init>(Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    return-void
.end method


# virtual methods
.method public getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;
    .locals 4

    invoke-static {p1}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$ChatRoomAction;->parseJoinChatRoom(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->getRoom_id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$3;->getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sina/sinalivesdk/refactor/messages/PostData;",
            ")I"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$3;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->getInstance()Lcom/sina/sinalivesdk/util/WBIMLiveLog;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->setResponseTime(J)V

    invoke-static {}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->getInstance()Lcom/sina/sinalivesdk/util/WBIMLiveLog;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sina/sinalivesdk/refactor/messages/ResponseHeader;->timestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->setServerTime(J)V

    invoke-static {}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->getInstance()Lcom/sina/sinalivesdk/util/WBIMLiveLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->record()V

    :cond_0
    return p1
.end method
