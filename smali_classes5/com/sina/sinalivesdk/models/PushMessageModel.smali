.class public Lcom/sina/sinalivesdk/models/PushMessageModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x37ae427eff015680L


# instance fields
.field private admin_info:Lcom/sina/sinalivesdk/models/UserModel;

.field private biz_type:I

.field private create_at:J

.field private exit_or_enter_room:I

.field private gift_info:Lcom/sina/sinalivesdk/models/GiftModel;

.field private inc_praises:J

.field private live_status:I

.field private msg:Lcom/sina/sinalivesdk/models/MessageModel;

.field private msg_type:I

.field private needack:Z

.field private owner_info:Lcom/sina/sinalivesdk/models/UserModel;

.field private praise_interval:I

.field private praise_num:I

.field private praises_count:I

.field private rawData:Ljava/lang/String;

.field private room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

.field private shut_info:Lcom/sina/sinalivesdk/models/ShutInfoModel;

.field private sys_msg_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdmin_info()Lcom/sina/sinalivesdk/models/UserModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->admin_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-object v0
.end method

.method public getBiz_type()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->biz_type:I

    return v0
.end method

.method public getCreate_at()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->create_at:J

    return-wide v0
.end method

.method public getExit_or_enter_room()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->exit_or_enter_room:I

    return v0
.end method

.method public getGift_info()Lcom/sina/sinalivesdk/models/GiftModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->gift_info:Lcom/sina/sinalivesdk/models/GiftModel;

    return-object v0
.end method

.method public getInc_praises()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->inc_praises:J

    return-wide v0
.end method

.method public getLive_status()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->live_status:I

    return v0
.end method

.method public getMsg()Lcom/sina/sinalivesdk/models/MessageModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    return-object v0
.end method

.method public getMsg_type()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg_type:I

    return v0
.end method

.method public getOwner_info()Lcom/sina/sinalivesdk/models/UserModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->owner_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-object v0
.end method

.method public getPraise_interval()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->praise_interval:I

    return v0
.end method

.method public getPraise_num()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->praise_num:I

    return v0
.end method

.method public getPraises_count()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->praises_count:I

    return v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom_info()Lcom/sina/sinalivesdk/models/RoomProfileModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    return-object v0
.end method

.method public getShut_info()Lcom/sina/sinalivesdk/models/ShutInfoModel;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->shut_info:Lcom/sina/sinalivesdk/models/ShutInfoModel;

    return-object v0
.end method

.method public getSys_msg_type()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->sys_msg_type:I

    return v0
.end method

.method public isNeedack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->needack:Z

    return v0
.end method

.method public setAdmin_info(Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->admin_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-void
.end method

.method public setBiz_type(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->biz_type:I

    return-void
.end method

.method public setCreate_at(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->create_at:J

    return-void
.end method

.method public setExit_or_enter_room(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->exit_or_enter_room:I

    return-void
.end method

.method public setGift_info(Lcom/sina/sinalivesdk/models/GiftModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->gift_info:Lcom/sina/sinalivesdk/models/GiftModel;

    return-void
.end method

.method public setInc_praises(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->inc_praises:J

    return-void
.end method

.method public setLive_status(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->live_status:I

    return-void
.end method

.method public setMsg(Lcom/sina/sinalivesdk/models/MessageModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    return-void
.end method

.method public setMsg_type(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg_type:I

    return-void
.end method

.method public setNeedack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->needack:Z

    return-void
.end method

.method public setOwner_info(Lcom/sina/sinalivesdk/models/UserModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->owner_info:Lcom/sina/sinalivesdk/models/UserModel;

    return-void
.end method

.method public setPraise_interval(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->praise_interval:I

    return-void
.end method

.method public setPraise_num(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->praise_num:I

    return-void
.end method

.method public setPraises_count(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->praises_count:I

    return-void
.end method

.method public setRawData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->rawData:Ljava/lang/String;

    return-void
.end method

.method public setRoom_info(Lcom/sina/sinalivesdk/models/RoomProfileModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    return-void
.end method

.method public setShut_info(Lcom/sina/sinalivesdk/models/ShutInfoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->shut_info:Lcom/sina/sinalivesdk/models/ShutInfoModel;

    return-void
.end method

.method public setSys_msg_type(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->sys_msg_type:I

    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "uid"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getUid()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "nickname"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "followers_count"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getFollowers_count()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "avatar"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "level"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getLevel()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "role"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getRole()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "join_time"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getJoin_time()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "shutted_until"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getShutted_until()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "isfollwed"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getIs_fllowed()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "is_vip"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getIs_vip()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "big_v"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/MessageModel;->getSender()Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/UserModel;->getBig_v()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "sender_info"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "room_id"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getRoom_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "introduction"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getIntroduction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "notification"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getNotification()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pic_url"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getPic_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "status"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getStatus()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "update_time"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getUpdate_time()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "created_at"

    iget-object v3, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getCreated_at()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "allow_comment"

    iget-object v4, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->room_info:Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->getSetting()Lcom/sina/sinalivesdk/models/RoomSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->getAllow_comment()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "setting"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "room_info"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    :try_start_2
    const-string v0, "room_id"

    iget-object v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/models/MessageModel;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "msg_type"

    iget v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg_type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mid"

    iget-object v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/models/MessageModel;->getMid()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "content"

    iget-object v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/models/MessageModel;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extension"

    iget-object v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/models/MessageModel;->getMsg_extension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "msg_behavior"

    iget-object v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->msg:Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-virtual {v2}, Lcom/sina/sinalivesdk/models/MessageModel;->getMsg_behavior()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "praises_count"

    iget v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->praises_count:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "inc_praises"

    iget-wide v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->inc_praises:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "live_status"

    iget v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->live_status:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "exit_or_enter_room"

    iget v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->exit_or_enter_room:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "create_at"

    iget-wide v2, p0, Lcom/sina/sinalivesdk/models/PushMessageModel;->create_at:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
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

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
