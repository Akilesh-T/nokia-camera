.class public Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;
.super Lcom/sina/sinalivesdk/request/BaseRequest;


# static fields
.field private static final serialVersionUID:J = 0x3abc564fb19c9a41L


# instance fields
.field private count:I

.field private cursor:I

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;->count:I

    return v0
.end method

.method public getCursor()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;->cursor:I

    return v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "uid"

    iget-wide v2, p0, Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;->uid:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "operation_type"

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "cursor"

    iget v2, p0, Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;->cursor:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "count"

    iget v2, p0, Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;->count:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;->uid:J

    return-wide v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;->count:I

    return-void
.end method

.method public setCursor(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;->cursor:I

    return-void
.end method

.method public setUid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/request/GetAnchorLiveListRequest;->uid:J

    return-void
.end method
