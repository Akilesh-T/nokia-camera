.class public Lcom/sina/sinalivesdk/request/FollowAnchorRequest;
.super Lcom/sina/sinalivesdk/request/BaseUserRequest;


# static fields
.field private static final serialVersionUID:J = -0x11a4933e639f71e7L


# instance fields
.field private owner_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseUserRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperationType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getOwner_id()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/request/FollowAnchorRequest;->owner_id:J

    return-wide v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "owner_uid"

    iget-wide v2, p0, Lcom/sina/sinalivesdk/request/FollowAnchorRequest;->owner_id:J

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

.method public setOwner_id(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/request/FollowAnchorRequest;->owner_id:J

    return-void
.end method
