.class public Lcom/sina/sinalivesdk/request/ModifyRoomRequest;
.super Lcom/sina/sinalivesdk/request/BaseRequest;


# static fields
.field private static final serialVersionUID:J = 0x6d06b9b2ef7e559fL


# instance fields
.field private allow_praise:I

.field private introduction:Ljava/lang/String;

.field private max_member:I

.field private name:Ljava/lang/String;

.field private notification:Ljava/lang/String;

.field private room_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllow_praise()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->allow_praise:I

    return v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getMax_member()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->max_member:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->notification:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "room_id"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->room_id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "name"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "operation_type"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "introduction"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->introduction:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "notification"

    iget-object v2, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->notification:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_member"

    iget v2, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->max_member:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "allow_praise"

    iget v2, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->allow_praise:I

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

.method public getRoom_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->room_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAllow_praise(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->allow_praise:I

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setMax_member(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->max_member:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setNotification(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->notification:Ljava/lang/String;

    return-void
.end method

.method public setRoom_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/request/ModifyRoomRequest;->room_id:Ljava/lang/String;

    return-void
.end method
