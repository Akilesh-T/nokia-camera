.class public Lcom/sina/sinalivesdk/request/GetMessageRequest;
.super Lcom/sina/sinalivesdk/request/BaseRequest;


# static fields
.field private static final serialVersionUID:J = 0xc43f354c90d0d67L


# instance fields
.field private request_id:Ljava/lang/String;

.field private room_id:Ljava/lang/String;

.field private start_offset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseRequest;-><init>()V

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/GetMessageRequest;->initRequestId()V

    return-void
.end method

.method private initRequestId()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->request_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHttpRequestParams()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source=7501641714&room_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->room_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&start_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->start_offset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&request_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->request_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "room_id"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->room_id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "start_time"

    iget-wide v2, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->start_offset:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "source"

    const-string v2, "7501641714"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "request_id"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->request_id:Ljava/lang/String;

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

.method public getRoom_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->room_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_offset()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->start_offset:J

    return-wide v0
.end method

.method public setRoom_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->room_id:Ljava/lang/String;

    return-void
.end method

.method public setStart_offset(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/request/GetMessageRequest;->start_offset:J

    return-void
.end method
