.class public Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;
.super Lcom/sina/sinalivesdk/refactor/messages/PostMessage;


# instance fields
.field private c:Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V

    iput-object p2, p0, Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;->c:Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    const/16 v1, 0x9

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;->a:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;-><init>(IILcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;->b:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    return-void
.end method


# virtual methods
.method public build(Z)Lcom/sina/sinalivesdk/refactor/messages/PostData;
    .locals 6

    const-string v0, "GetRoomProfileMessage"

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;->c:Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;

    invoke-virtual {v1}, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->getRequestJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-direct {v3}, Lcom/sina/sinalivesdk/protobuf/RequestSet;-><init>()V

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    const-string v1, "request"

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;->c:Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/request/GetRoomProfileRequest;->getRequestJson()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/sina/sinalivesdk/protobuf/RequestField;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->put(Lcom/sina/sinalivesdk/protobuf/RequestField;)V

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/PostData;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/GetRoomProfileMessage;->b:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    const/4 v5, 0x1

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sina/sinalivesdk/refactor/messages/PostData;-><init>(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;Lcom/sina/sinalivesdk/protobuf/RequestSet;ZZ)V

    return-object v0
.end method

.method public requestName()Ljava/lang/String;
    .locals 1

    const-string v0, "GetRoomProfileMessage"

    return-object v0
.end method
