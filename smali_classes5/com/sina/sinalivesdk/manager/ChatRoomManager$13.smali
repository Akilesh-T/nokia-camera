.class Lcom/sina/sinalivesdk/manager/ChatRoomManager$13;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sina/sinalivesdk/models/RoomProfileModel;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$13;->getRequestResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRequestResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/RoomProfileModel;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$ChatRoomAction;->parseRoomList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
