.class public Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$RoomCommonInfo;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseRoomInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/RoomProfileModel;
    .locals 22

    new-instance v2, Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-direct {v2}, Lcom/sina/sinalivesdk/models/RoomProfileModel;-><init>()V

    const-string v3, "room_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "introduction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pic_url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "status"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "created_at"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "udpate_time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "start_time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v16, "end_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v18, "owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    if-eqz v18, :cond_0

    const-string v19, "uid"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    const-string v19, "user_system"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct/range {v19 .. v19}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    invoke-virtual/range {v19 .. v21}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/UserModel;->setUser_system(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setOwner_info(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_0
    const-string v18, "counters"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    if-eqz v18, :cond_1

    const-string v19, "onlines"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const-string v20, "praise_count"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    const-string v21, "play_count"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    new-instance v21, Lcom/sina/sinalivesdk/models/CounterModel;

    invoke-direct/range {v21 .. v21}, Lcom/sina/sinalivesdk/models/CounterModel;-><init>()V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/CounterModel;->setOnlines(I)V

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/CounterModel;->setPraise_count(I)V

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/CounterModel;->setPlay_count(I)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setCounters(Lcom/sina/sinalivesdk/models/CounterModel;)V

    :cond_1
    invoke-virtual {v2, v3}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setRoom_id(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setPic_url(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setType(I)V

    invoke-virtual {v2, v9}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setStatus(I)V

    invoke-virtual {v2, v10, v11}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setCreated_at(J)V

    invoke-virtual {v2, v12, v13}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setUpdate_time(J)V

    invoke-virtual {v2, v14, v15}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setStart_time(J)V

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setEnd_time(J)V

    invoke-virtual {v2, v5}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setIntroduction(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setNotification(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setNotification(Ljava/lang/String;)V

    const-string v3, "setting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/sina/sinalivesdk/models/RoomSettingModel;

    invoke-direct {v4}, Lcom/sina/sinalivesdk/models/RoomSettingModel;-><init>()V

    const-string v5, "praise_url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "allow_comment"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "pay_url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "share_text"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "share_link"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "censor_policy"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "max_onlines"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "allow_praise"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "heartbeat_interval"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "allow_interact"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v5}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setPraise_url(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setAllow_comment(I)V

    invoke-virtual {v4, v11}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setMax_onlines(I)V

    invoke-virtual {v4, v7}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setPay_url(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setCensor_policy(I)V

    invoke-virtual {v4, v9}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setShare_link(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setShare_text(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setAllow_praise(I)V

    invoke-virtual {v4, v13}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setHeartbeat_interval(I)V

    invoke-virtual {v4, v3}, Lcom/sina/sinalivesdk/models/RoomSettingModel;->setAllow_interact(I)V

    invoke-virtual {v2, v4}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setSetting(Lcom/sina/sinalivesdk/models/RoomSettingModel;)V

    :cond_2
    return-object v2
.end method
