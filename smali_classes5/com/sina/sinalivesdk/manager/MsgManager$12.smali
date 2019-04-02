.class Lcom/sina/sinalivesdk/manager/MsgManager$12;
.super Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sina/sinalivesdk/refactor/post/ResponseHelper",
        "<",
        "Lcom/sina/sinalivesdk/models/HistoryMessagesModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;-><init>(Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    return-void
.end method


# virtual methods
.method public getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/HistoryMessagesModel;
    .locals 3

    const-string v0, "GetMsgMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$ChatRoomAction;->parseHistoryMessages(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/HistoryMessagesModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sina/sinalivesdk/manager/MsgManager$12;->getRequestResult(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/HistoryMessagesModel;

    move-result-object v0

    return-object v0
.end method
