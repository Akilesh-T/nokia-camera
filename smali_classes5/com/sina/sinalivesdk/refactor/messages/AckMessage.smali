.class public Lcom/sina/sinalivesdk/refactor/messages/AckMessage;
.super Lcom/sina/sinalivesdk/refactor/messages/PostMessage;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sina/sinalivesdk/refactor/messages/PostMessage;-><init>(Lcom/sina/sinalivesdk/WBIMLiveClient;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->c:Ljava/util/List;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/PollRequestHeader;

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->a:Lcom/sina/sinalivesdk/refactor/services/IAuthProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/sina/sinalivesdk/refactor/messages/PollRequestHeader;-><init>(IILcom/sina/sinalivesdk/refactor/services/IAuthProvider;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->b:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    const-string v0, "AckMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "constructor, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->requestInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addInfo(Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build(Z)Lcom/sina/sinalivesdk/refactor/messages/PostData;
    .locals 14

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/PostData;

    move-object v1, p0

    move-object v3, v2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sina/sinalivesdk/refactor/messages/PostData;-><init>(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;Lcom/sina/sinalivesdk/protobuf/RequestSet;ZZ)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/sina/sinalivesdk/manager/UserManager;->instance()Lcom/sina/sinalivesdk/manager/UserManager;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "uid"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/UserManager;->getUid()J

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "nickname"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/UserManager;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "avatar"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/UserManager;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Lcom/sina/sinalivesdk/protobuf/RequestSet;

    move v1, v4

    :goto_2
    :try_start_1
    array-length v0, v8

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "client_time"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->getClientTime()J

    move-result-wide v12

    invoke-virtual {v9, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "ack_trans"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->getAckTrans()J

    move-result-wide v12

    invoke-virtual {v9, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v9, "trans:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->getAckTrans()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;->getClientTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v9, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v0, "ack"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "requester_info"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    const-string v0, "AckMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "build, requestId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->requestId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ACK data infos="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/sinalivesdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sina/sinalivesdk/protobuf/RequestSet;

    invoke-direct {v3}, Lcom/sina/sinalivesdk/protobuf/RequestSet;-><init>()V

    new-instance v0, Lcom/sina/sinalivesdk/protobuf/RequestField;

    const-string v1, "ack"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/sina/sinalivesdk/protobuf/RequestField;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/sina/sinalivesdk/protobuf/RequestSet;->put(Lcom/sina/sinalivesdk/protobuf/RequestField;)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->b:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;->markFlag(I)Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    new-instance v0, Lcom/sina/sinalivesdk/refactor/messages/PostData;

    iget-object v2, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->b:Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sina/sinalivesdk/refactor/messages/PostData;-><init>(Lcom/sina/sinalivesdk/refactor/messages/PostMessage;Lcom/sina/sinalivesdk/refactor/messages/RequestHeader;Lcom/sina/sinalivesdk/protobuf/RequestSet;ZZ)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public requestName()Ljava/lang/String;
    .locals 1

    const-string v0, "AckMessage"

    return-object v0
.end method

.method public setInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/sinalivesdk/refactor/messages/AckMessage$AckInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/messages/AckMessage;->c:Ljava/util/List;

    return-void
.end method
