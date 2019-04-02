.class public Lcom/sina/sinalivesdk/request/CommonSDKRequest;
.super Lcom/sina/sinalivesdk/request/BaseRequest;


# static fields
.field private static final serialVersionUID:J = -0x68d56393e2b7034aL


# instance fields
.field private content:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private offset:J

.field private room_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->offset:J

    return-wide v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "room_id"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->room_id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "operation_type"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "content"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->content:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extension"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->extension:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "offset"

    iget-wide v2, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->offset:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRoom_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->room_id:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->content:Ljava/lang/String;

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->extension:Ljava/lang/String;

    return-void
.end method

.method public setOffset(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->offset:J

    return-void
.end method

.method public setRoom_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/CommonSDKRequest;->room_id:Ljava/lang/String;

    return-void
.end method
