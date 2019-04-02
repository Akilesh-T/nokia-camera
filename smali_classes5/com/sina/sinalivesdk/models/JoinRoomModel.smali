.class public Lcom/sina/sinalivesdk/models/JoinRoomModel;
.super Ljava/lang/Object;


# instance fields
.field private is_shutted:I

.field private rawData:Ljava/lang/String;

.field private role:I

.field private room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

.field private shutted_until:I

.field private user_info:Lcom/sina/sinalivesdk/models/UserModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIs_shutted()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->is_shutted:I

    return v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->role:I

    return v0
.end method

.method public getRoom_info()Lcom/sina/sinalivesdk/models/RoomProfileModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    return-object v0
.end method

.method public getShutted_until()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->shutted_until:I

    return v0
.end method

.method public getUser_info()Lcom/sina/sinalivesdk/models/UserModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-object v0
.end method

.method public setIs_shutted(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->is_shutted:I

    return-void
.end method

.method public setRawData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->rawData:Ljava/lang/String;

    return-void
.end method

.method public setRole(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->role:I

    return-void
.end method

.method public setRoom_info(Lcom/sina/sinalivesdk/models/RoomProfileModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    return-void
.end method

.method public setShutted_until(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->shutted_until:I

    return-void
.end method

.method public setUser_info(Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "room_id"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getRoom_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "introduction"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getIntroduction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "notification"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getNotification()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pic_url"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getPic_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "status"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getStatus()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "update_time"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getUpdate_time()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "created_at"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getCreated_at()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "room_info"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "uid"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getUid()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "nickname"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "followers_count"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getFollowers_count()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "avatar"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "level"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getLevel()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "role"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getJoin_time()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "join_time"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getJoin_time()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "shutted_until"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getShutted_until()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "is_followed"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getIs_fllowed()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "is_vip"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getIs_vip()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "big_v"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/JoinRoomModel;->user_info:Lcom/sina/sinalivesdk/models/UserModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getBig_v()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "owner_info"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
