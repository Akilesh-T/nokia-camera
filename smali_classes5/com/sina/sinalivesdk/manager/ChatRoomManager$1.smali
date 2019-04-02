.class Lcom/sina/sinalivesdk/manager/ChatRoomManager$1;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Lcom/sina/sinalivesdk/models/JoinRoomModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Z


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$1;->a:Z

    invoke-direct {p0, p2}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;-><init>(Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    return-void
.end method


# virtual methods
.method public getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/JoinRoomModel;
    .locals 1

    invoke-static {p1}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$ChatRoomAction;->parseJoinRoomModel(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/JoinRoomModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$1;->getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/JoinRoomModel;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I
    .locals 8
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

    const/4 v1, 0x3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;->handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$1;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/sina/sinalivesdk/refactor/messages/PostData;->getRequest()Lcom/sina/sinalivesdk/refactor/messages/PostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/sina/sinalivesdk/refactor/messages/JoinRoomMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$1;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$1;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/models/JoinRoomModel;

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/JoinRoomModel;->getRoom_info()Lcom/sina/sinalivesdk/models/RoomProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getSetting()Lcom/sina/sinalivesdk/models/RoomSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->getHeartbeat_interval()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/sina/sinalivesdk/refactor/push/d;->a(J)V

    mul-int/lit16 v2, v0, 0x3e8

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->cancleAlarm(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getAlarmManager()Lcom/sina/sinalivesdk/manager/PushAlarmManager;

    move-result-object v0

    int-to-long v2, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sina/sinalivesdk/manager/PushAlarmManager;->registerAlarm(IJJ)V

    :cond_0
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

    :cond_1
    return p1
.end method
