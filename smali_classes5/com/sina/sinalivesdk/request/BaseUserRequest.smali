.class public abstract Lcom/sina/sinalivesdk/request/BaseUserRequest;
.super Lcom/sina/sinalivesdk/request/BaseRequest;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private extension:Ljava/lang/String;

.field private offset:J

.field private room_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseRequest;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->offset:J

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->offset:J

    return-wide v0
.end method

.method public abstract getOperationType()I
.end method

.method public getRequestJson()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/sina/sinalivesdk/manager/UserManager;->instance()Lcom/sina/sinalivesdk/manager/UserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/request/BaseUserRequest;->getRequestObject()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "uid"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/UserManager;->getUid()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "nickname"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/UserManager;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "avatar"

    invoke-virtual {v0}, Lcom/sina/sinalivesdk/manager/UserManager;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "room_id"

    iget-object v3, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->room_id:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "operation_type"

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/request/BaseUserRequest;->getOperationType()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "offset"

    iget-wide v4, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->offset:J

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "extension"

    iget-object v3, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->extension:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "requester_info"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public abstract getRequestObject()Lorg/json/JSONObject;
.end method

.method public getRoom_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->room_id:Ljava/lang/String;

    return-object v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->extension:Ljava/lang/String;

    return-void
.end method

.method public setOffset(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->offset:J

    return-void
.end method

.method public setRoom_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/BaseUserRequest;->room_id:Ljava/lang/String;

    return-void
.end method
