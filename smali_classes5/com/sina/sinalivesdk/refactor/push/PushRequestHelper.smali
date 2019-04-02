.class public Lcom/sina/sinalivesdk/refactor/push/PushRequestHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendHeartBeatMessage(Lcom/sina/sinalivesdk/request/HeartBeatRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/HeartBeatRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/HeartbeatMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sina/sinalivesdk/refactor/messages/HeartbeatMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/HeartBeatRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/refactor/push/z;

    invoke-direct {v1, p1}, Lcom/sina/sinalivesdk/refactor/push/z;-><init>(Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/HeartbeatMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPushEngine()Lcom/sina/sinalivesdk/refactor/push/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/push/d;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method
