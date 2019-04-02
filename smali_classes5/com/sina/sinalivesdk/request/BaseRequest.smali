.class public abstract Lcom/sina/sinalivesdk/request/BaseRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/sinalivesdk/request/RequestResult;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x10465L


# instance fields
.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/sinalivesdk/request/BaseRequest;->state:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sina/sinalivesdk/request/BaseRequest;->errorCode:I

    return-void
.end method


# virtual methods
.method public errorCode()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/BaseRequest;->errorCode:I

    return v0
.end method

.method public errorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/BaseRequest;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method protected getHttpRequestParams()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getRequestJson()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/sina/sinalivesdk/manager/UserManager;->instance()Lcom/sina/sinalivesdk/manager/UserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/request/BaseRequest;->getRequestObject()Lorg/json/JSONObject;

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

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/BaseRequest;->errorCode:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/BaseRequest;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/BaseRequest;->state:I

    return-void
.end method

.method public state()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/BaseRequest;->state:I

    return v0
.end method
