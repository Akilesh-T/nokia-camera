.class public Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;
.super Lcom/sina/sinalivesdk/request/BaseRequest;


# static fields
.field private static final serialVersionUID:J = 0x372f225L


# instance fields
.field private container_id:J

.field private container_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainer_id()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;->container_id:J

    return-wide v0
.end method

.method public getContainer_type()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;->container_type:I

    return v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "container_id"

    iget-wide v2, p0, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;->container_id:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "container_type"

    iget v2, p0, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;->container_type:I

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

.method public setContainer_id(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;->container_id:J

    return-void
.end method

.method public setContainer_type(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/ChatDispatcherRequest;->container_type:I

    return-void
.end method
