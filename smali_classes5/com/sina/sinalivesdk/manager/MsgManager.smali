.class public Lcom/sina/sinalivesdk/manager/MsgManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SendGiftMessage(Lcom/sina/sinalivesdk/request/SendGiftRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/SendGiftRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/GiftResponseModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/SendGiftMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/SendGiftMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/SendGiftRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$3;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$3;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/SendGiftMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public addToCart(Lcom/sina/sinalivesdk/request/AddToCartRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/AddToCartRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/AddToCartMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/AddToCartMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/AddToCartRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$8;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$8;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/AddToCartMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public followAnchor(Lcom/sina/sinalivesdk/request/FollowAnchorRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/FollowAnchorRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/FocusAnchorMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/FocusAnchorMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/FollowAnchorRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$5;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$5;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/FocusAnchorMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public forBidMessage(Lcom/sina/sinalivesdk/request/ForBidMsgRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/ForBidMsgRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/ForBiddenMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/ForBiddenMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/ForBidMsgRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$6;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$6;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ForBiddenMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public getReplayMessage(Lcom/sina/sinalivesdk/request/GetMessageRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/GetMessageRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/HistoryMessagesModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/GetMsgMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/GetMsgMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/GetMessageRequest;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/GetMsgMessage;->setIsHttpRequest(Z)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$12;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$12;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/GetMsgMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public like(Lcom/sina/sinalivesdk/request/LikeRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/LikeRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/LikeMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/LikeMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/LikeRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$2;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$2;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/LikeMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public reward(Lcom/sina/sinalivesdk/request/RewardRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/RewardRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/RewardMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/RewardMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/RewardRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$9;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$9;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/RewardMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public sendCommentLikeMsg(Lcom/sina/sinalivesdk/request/CommentLikeRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/CommentLikeRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/CommentLikeMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/CommentLikeMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/CommentLikeRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$13;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$13;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/CommentLikeMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public sendCommonSDKMessage(Lcom/sina/sinalivesdk/request/CommonSDKRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/CommonSDKRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/CommonSDKMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/CommonSDKMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/CommonSDKRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$10;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$10;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/CommonSDKMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public sendDiyMessage(Lcom/sina/sinalivesdk/request/DiyMsgRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/DiyMsgRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/PushMessageModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/SendDiyMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/SendDiyMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/DiyMsgRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$14;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$14;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/SendDiyMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public sendMessage(Lcom/sina/sinalivesdk/request/SendMsgRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/SendMsgRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Lcom/sina/sinalivesdk/models/PushMessageModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/DMTextMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/DMTextMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/SendMsgRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$1;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$1;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/DMTextMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public setAdmin(Lcom/sina/sinalivesdk/request/AdminRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/AdminRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/SetAdminMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/SetAdminMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/AdminRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$11;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$11;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/SetAdminMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public setMessageTop(Lcom/sina/sinalivesdk/request/SetTopRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/SetTopRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/SetTopMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/SetTopMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/SetTopRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$4;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$4;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/SetTopMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method

.method public share(Lcom/sina/sinalivesdk/request/ShareRequest;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/request/ShareRequest;",
            "Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/ShareChatRoomMessage;

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sina/sinalivesdk/refactor/messages/ShareChatRoomMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/ShareRequest;)V

    new-instance v1, Lcom/sina/sinalivesdk/manager/MsgManager$7;

    invoke-direct {v1, p0, p2}, Lcom/sina/sinalivesdk/manager/MsgManager$7;-><init>(Lcom/sina/sinalivesdk/manager/MsgManager;Lcom/sina/sinalivesdk/interfaces/WBIMLiveValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/ShareChatRoomMessage;->setResponseHelper(Lcom/sina/sinalivesdk/refactor/post/ResponseHelper;)V

    invoke-static {}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getInstance()Lcom/sina/sinalivesdk/WBIMLiveClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/WBIMLiveClient;->getPostEngine()Lcom/sina/sinalivesdk/refactor/post/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/refactor/post/f;->a(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;)V

    return-void
.end method
