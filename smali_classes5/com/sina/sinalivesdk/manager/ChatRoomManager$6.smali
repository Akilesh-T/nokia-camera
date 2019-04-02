.class Lcom/sina/sinalivesdk/manager/ChatRoomManager$6;
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
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/manager/ChatRoomManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$6;->a:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$6;->getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/JoinRoomModel;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I
    .locals 1
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

    iget-object v0, p0, Lcom/sina/sinalivesdk/manager/ChatRoomManager$6;->a:Ljava/lang/String;

    sput-object v0, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_ROOM_ID:Ljava/lang/String;

    :cond_0
    return p1
.end method
