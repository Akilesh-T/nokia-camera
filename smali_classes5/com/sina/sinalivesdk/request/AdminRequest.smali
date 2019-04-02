.class public Lcom/sina/sinalivesdk/request/AdminRequest;
.super Lcom/sina/sinalivesdk/request/BaseUserRequest;


# static fields
.field private static final serialVersionUID:J = -0x5a4a84cb6482928aL


# instance fields
.field private avatar:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private type:I

.field private uid:J

.field private user_system:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseUserRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "uid"

    iget-wide v2, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->uid:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "user_system"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->user_system:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    iget v2, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "nickname"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "avatar"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->type:I

    return v0
.end method

.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->uid:J

    return-wide v0
.end method

.method public getUser_system()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->user_system:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->type:I

    return-void
.end method

.method public setUid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->uid:J

    return-void
.end method

.method public setUser_system(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/AdminRequest;->user_system:Ljava/lang/String;

    return-void
.end method
