.class public Lcom/sina/sinalivesdk/manager/DispatchManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/sina/sinalivesdk/manager/DispatchManager;
    .locals 1

    sget-object v0, Lcom/sina/sinalivesdk/manager/DispatchManager$LazyHolder;->a:Lcom/sina/sinalivesdk/manager/DispatchManager;

    return-object v0
.end method


# virtual methods
.method public sendChatRoomDispach(Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/DispatchModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/ChatRoomDispatchMsg;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/ChatRoomDispatchMsg;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/DispatchManager$1;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/DispatchManager$1;-><init>(Lcom/sina/sinalivesdk/manager/DispatchManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ChatRoomDispatchMsg;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public sendDispath(Lcom/sina/sinalivesdk/request/DispathRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/DispathRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/DispatchModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/DMDispathMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/DMDispathMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/DispathRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/DispatchManager$2;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/DispatchManager$2;-><init>(Lcom/sina/sinalivesdk/manager/DispatchManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/DMDispathMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method
