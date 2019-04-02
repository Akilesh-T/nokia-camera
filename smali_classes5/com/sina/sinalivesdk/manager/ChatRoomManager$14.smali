.class Lcom/sina/sinalivesdk/manager/ChatRoomManager$14;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Lcom/sina/sinalivesdk/models/AnchorLiveListModel;",
        ">;"
    }
.end annotation


# virtual methods
.method public getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/AnchorLiveListModel;
    .locals 1

    invoke-static {p1}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$ChatRoomAction;->praseLiveList(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/AnchorLiveListModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$14;->getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/AnchorLiveListModel;

    move-result-object v0

    return-object v0
.end method
