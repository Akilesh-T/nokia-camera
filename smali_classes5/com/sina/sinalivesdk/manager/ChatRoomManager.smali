.class public Lcom/sina/sinalivesdk/manager/ChatRoomManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkChatRoom(Lcom/sina/sinalivesdk/request/CheckRoomRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/CheckRoomRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/JoinRoomModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/request/CheckRoomRequest;->getRoom_id()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sina/sinalivesdk/refactor/messages/CheckRoomMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/sina/sinalivesdk/refactor/messages/CheckRoomMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/CheckRoomRequest;)V

    new-instance v2, Lcom/sina/sinalivesdk/manager/ChatRoomManager$6;

    invoke-direct {v2, p0, p2, v0}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$6;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/CheckRoomMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->putRequest(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public createLiveRoom(Lcom/sina/sinalivesdk/request/CreateRoomRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/CreateRoomRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/CreateChatRoomMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/CreateChatRoomMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/CreateRoomRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/ChatRoomManager$7;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$7;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/CreateChatRoomMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public exitLiveRoom(Lcom/sina/sinalivesdk/request/ExitRoomRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/ExitRoomRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    const-string v1, ""

    sput-object v1, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONTAINER_ID:J

    const/4 v1, 0x0

    sput v1, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONTAINER_TYPE:I

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/refactor/push/d;->m()V

    invoke-static {}, Lcom/sina/sinalivesdk/manager/FilterManager;->instance()Lcom/sina/sinalivesdk/manager/FilterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/manager/FilterManager;->clear()V

    new-instance v1, Lcom/sina/sinalivesdk/refactor/messages/ExitRoomMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/sina/sinalivesdk/refactor/messages/ExitRoomMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/ExitRoomRequest;)V

    new-instance v2, Lcom/sina/sinalivesdk/manager/ChatRoomManager$5;

    invoke-direct {v2, p0, p2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$5;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/refactor/messages/ExitRoomMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->putRequest(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public fetchLiveRoomForbiddenList(Lcom/sina/sinalivesdk/request/FetchRoomForbiddenListRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/FetchRoomForbiddenListRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/GetForbidenUserListMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/GetForbidenUserListMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/FetchRoomForbiddenListRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/ChatRoomManager$11;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$11;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/GetForbidenUserListMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public fetchLiveRoomUserList(Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/RoomUserListModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/GetRoomUserListMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/GetRoomUserListMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/FetchRoomUserListRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/ChatRoomManager$10;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$10;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/GetRoomUserListMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public getChatRoomProfile(Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/RoomProfileListModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/ChatRoomManager$12;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$12;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public joinChatRoom(Lcom/sina/sinalivesdk/request/JoinChatRoomRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/JoinChatRoomRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sina/sinalivesdk/util/Constants;->IS_CHAT_ROOM:Z

    invoke-static {}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->getInstance()Lcom/sina/sinalivesdk/util/WBIMLiveLog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->canRecord()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/request/JoinChatRoomRequest;->getContainer_id()J

    move-result-wide v2

    sput-wide v2, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONTAINER_ID:J

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/request/JoinChatRoomRequest;->getContainer_type()I

    move-result v2

    sput v2, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONTAINER_TYPE:I

    sget-object v2, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONNECT_BUSINESS:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONNECT_BUSINESS:Ljava/lang/String;

    const-string v3, "live"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getConnectorManager()Lcom/sina/sinalivesdk/manager/ConnectorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/manager/ConnectorManager;->shutDownConnection()V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/refactor/post/f;->d()V

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/post/a;->b()Lcom/sina/sinalivesdk/refactor/post/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/refactor/post/a;->a()V

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v2, "chatroom"

    sput-object v2, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONNECT_BUSINESS:Ljava/lang/String;

    new-instance v2, Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/JoinChatRoomRequest;)V

    new-instance v3, Lcom/sina/sinalivesdk/manager/ChatRoomManager$3;

    invoke-direct {v3, p0, p2, v1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$3;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;Z)V

    invoke-virtual {v2, v3}, Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getConnListener()Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    move-result-object v0

    new-instance v4, Lcom/sina/sinalivesdk/manager/ChatRoomManager$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$4;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/refactor/messages/JoinChatRoomMsg;Z)V

    invoke-virtual {v3, v0, v4}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public joinLiveRoom(Lcom/sina/sinalivesdk/request/JoinRoomRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/JoinRoomRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/JoinRoomModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sina/sinalivesdk/request/JoinRoomRequest;->getRoom_id()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/sina/sinalivesdk/util/Constants;->IS_CHAT_ROOM:Z

    invoke-static {}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->getInstance()Lcom/sina/sinalivesdk/util/WBIMLiveLog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/util/WBIMLiveLog;->canRecord()Z

    move-result v2

    sget-object v3, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONNECT_BUSINESS:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONNECT_BUSINESS:Ljava/lang/String;

    const-string v4, "chatroom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getConnectorManager()Lcom/sina/sinalivesdk/manager/ConnectorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/manager/ConnectorManager;->isPushConnectionAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getConnectorManager()Lcom/sina/sinalivesdk/manager/ConnectorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/manager/ConnectorManager;->shutDownConnection()V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/post/f;->d()V

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/post/a;->b()Lcom/sina/sinalivesdk/refactor/post/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/refactor/post/a;->a()V

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v3, "live"

    sput-object v3, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONNECT_BUSINESS:Ljava/lang/String;

    new-instance v3, Lcom/sina/sinalivesdk/refactor/messages/JoinRoomMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/sina/sinalivesdk/refactor/messages/JoinRoomMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/JoinRoomRequest;)V

    new-instance v4, Lcom/sina/sinalivesdk/manager/ChatRoomManager$1;

    invoke-direct {v4, p0, p2, v2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$1;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;Z)V

    invoke-virtual {v3, v4}, Lcom/sina/sinalivesdk/refactor/messages/JoinRoomMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getConnListener()Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;

    move-result-object v1

    new-instance v5, Lcom/sina/sinalivesdk/manager/ChatRoomManager$2;

    invoke-direct {v5, p0, v0, v3, v2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$2;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Ljava/lang/String;Lcom/sina/sinalivesdk/refactor/messages/JoinRoomMessage;Z)V

    invoke-virtual {v4, v1, v5}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/interfaces/WBIMLiveConnListener;Lcom/sina/sinalivesdk/interfaces/WBIMLiveSocketConetListener;)V

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public modifyLiveRoom(Lcom/sina/sinalivesdk/request/ModifyRoomRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/ModifyRoomRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/ModifyRoomMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/ModifyRoomMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/ModifyRoomRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/ChatRoomManager$9;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$9;-><init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ModifyRoomMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method
