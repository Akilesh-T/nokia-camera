.class Lcom/sina/sinalivesdk/manager/ChatRoomManager$5;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Ljava/lang/Integer;",
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
.method public getRequestResult(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/ChatRoomManager$5;->getRequestResult(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(ILcom/sina/sinalivesdk/refactor/messages/ResponseHeader;Ljava/util/HashMap;Lcom/sina/sinalivesdk/refactor/messages/PostData;)I
    .locals 2
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

    sget-object v0, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONNECT_BUSINESS:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sina/sinalivesdk/util/Constants;->CURRENT_CONNECT_BUSINESS:Ljava/lang/String;

    const-string v1, "chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getConnectorManager()Lcom/sina/sinalivesdk/manager/ConnectorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/ConnectorManager;->shutDownConnection()V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/f;->d()V

    invoke-static {}, Lcom/sina/sinalivesdk/refactor/post/a;->b()Lcom/sina/sinalivesdk/refactor/post/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/post/a;->a()V

    :cond_0
    return p1
.end method
