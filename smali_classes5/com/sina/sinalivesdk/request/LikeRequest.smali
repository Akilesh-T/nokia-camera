.class public Lcom/sina/sinalivesdk/request/LikeRequest;
.super Lcom/sina/sinalivesdk/request/BaseUserRequest;


# static fields
.field private static final serialVersionUID:J = 0x79e4aacda767fd58L


# instance fields
.field private inc_praises:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseUserRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getInc_praises()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/LikeRequest;->inc_praises:I

    return v0
.end method

.method public getOperationType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "inc_praises"

    iget v2, p0, Lcom/sina/sinalivesdk/request/LikeRequest;->inc_praises:I

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

.method public setInc_praises(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/LikeRequest;->inc_praises:I

    return-void
.end method
