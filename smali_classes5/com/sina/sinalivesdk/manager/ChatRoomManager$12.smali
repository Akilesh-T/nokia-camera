.class Lcom/sina/sinalivesdk/manager/ChatRoomManager$12;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Lcom/sina/sinalivesdk/models/RoomProfileListModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;-><init>(Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    return-void
.end method


# virtual methods
.method public getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/RoomProfileListModel;
    .locals 1

    invoke-static {p1}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$ChatRoomAction;->parseRoomProfileList(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/RoomProfileListModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$12;->getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/RoomProfileListModel;

    move-result-object v0

    return-object v0
.end method
