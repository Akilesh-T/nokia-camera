.class public Lcom/sina/sinalivesdk/request/SendMsgRequest;
.super Lcom/sina/sinalivesdk/request/BaseUserRequest;


# static fields
.field private static final serialVersionUID:J = 0x3e7539e5152dbL


# instance fields
.field private content:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseUserRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/SendMsgRequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "content"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/SendMsgRequest;->content:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    iget v2, p0, Lcom/sina/sinalivesdk/request/SendMsgRequest;->type:I

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

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/SendMsgRequest;->type:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/SendMsgRequest;->content:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/SendMsgRequest;->type:I

    return-void
.end method
