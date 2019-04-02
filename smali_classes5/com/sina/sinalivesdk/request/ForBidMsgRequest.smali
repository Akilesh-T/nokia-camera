.class public Lcom/sina/sinalivesdk/request/ForBidMsgRequest;
.super Lcom/sina/sinalivesdk/request/BaseUserRequest;


# static fields
.field private static final serialVersionUID:J = -0x4365dda912958f05L


# instance fields
.field private members:[Lcom/sina/sinalivesdk/models/UserModel;

.field private shut_time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseUserRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperationType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->members:[Lcom/sina/sinalivesdk/models/UserModel;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "uid"

    iget-object v5, p0, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->members:[Lcom/sina/sinalivesdk/models/UserModel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/sina/sinalivesdk/models/UserModel;->getUid()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "user_system"

    iget-object v5, p0, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->members:[Lcom/sina/sinalivesdk/models/UserModel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/sina/sinalivesdk/models/UserModel;->getUser_system()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "nickname"

    iget-object v5, p0, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->members:[Lcom/sina/sinalivesdk/models/UserModel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/sina/sinalivesdk/models/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "avatar"

    iget-object v5, p0, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->members:[Lcom/sina/sinalivesdk/models/UserModel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/sina/sinalivesdk/models/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "members"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "shut_time"

    iget v2, p0, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->shut_time:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setMembers([Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->members:[Lcom/sina/sinalivesdk/models/UserModel;

    return-void
.end method

.method public setShut_time(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/ForBidMsgRequest;->shut_time:I

    return-void
.end method
