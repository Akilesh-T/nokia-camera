.class public Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserAction;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static paserMessage(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/MessageModel;
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/models/MessageModel;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "room_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sender_info"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserCommonInfo;->parseUserInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sina/sinalivesdk/models/MessageModel;->setSender(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_0
    const-string v3, "mid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sina/sinalivesdk/models/MessageModel;->setMid(J)V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extension"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "created_at"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v3}, Lcom/sina/sinalivesdk/models/MessageModel;->setContent(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/sina/sinalivesdk/models/MessageModel;->setMsg_extension(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/MessageModel;->setRoomId(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/sina/sinalivesdk/models/MessageModel;->setLocalTime(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static paserPushMessage(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/PushMessageModel;
    .locals 27

    new-instance v4, Lcom/sina/sinalivesdk/models/PushMessageModel;

    invoke-direct {v4}, Lcom/sina/sinalivesdk/models/PushMessageModel;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setRawData(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-direct {v6}, Lcom/sina/sinalivesdk/models/MessageModel;-><init>()V

    const-string v2, "room_id"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mid"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v2}, Lcom/sina/sinalivesdk/models/MessageModel;->setRoomId(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Lcom/sina/sinalivesdk/models/MessageModel;->setMid(J)V

    const-string v2, "content"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extension"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "offset"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v7, "msg_behavior"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v10, "praise_status"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "praises_count"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "inc_praises"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "praise_interval"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "praise_num"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const-string v16, "biz_type"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string v17, "content_css"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    if-eqz v17, :cond_0

    const-string v18, "suffix"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "suffix_color"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "content_color"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "prefix"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "prefix_color"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "bg_color"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "bg_alpha"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "nick_color"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "icon"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v26, Lcom/sina/sinalivesdk/models/ContentCssModel;

    invoke-direct/range {v26 .. v26}, Lcom/sina/sinalivesdk/models/ContentCssModel;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/ContentCssModel;->setSuffix(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/ContentCssModel;->setSuffix_color(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/ContentCssModel;->setContent_color(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/ContentCssModel;->setPrefix(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/ContentCssModel;->setPrefix_color(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/ContentCssModel;->setBg_color(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/ContentCssModel;->setBg_alpha(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/ContentCssModel;->setNick_color(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sina/sinalivesdk/models/ContentCssModel;->setIcon(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/sina/sinalivesdk/models/MessageModel;->setContent_css(Lcom/sina/sinalivesdk/models/ContentCssModel;)V

    :cond_0
    invoke-virtual {v6, v7}, Lcom/sina/sinalivesdk/models/MessageModel;->setMsg_behavior(I)V

    invoke-virtual {v6, v2}, Lcom/sina/sinalivesdk/models/MessageModel;->setContent(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/sina/sinalivesdk/models/MessageModel;->setMsg_extension(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/sina/sinalivesdk/models/MessageModel;->setPraise_status(I)V

    invoke-virtual {v6, v8, v9}, Lcom/sina/sinalivesdk/models/MessageModel;->setOffset(J)V

    invoke-virtual {v4, v11}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setPraises_count(I)V

    invoke-virtual {v4, v12, v13}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setInc_praises(J)V

    invoke-virtual {v4, v14}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setPraise_interval(I)V

    invoke-virtual {v4, v15}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setPraise_num(I)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setBiz_type(I)V

    const-string v2, "sender_info"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserCommonInfo;->parseUserInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/sina/sinalivesdk/models/MessageModel;->setSender(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_1
    const-string v2, "owner_info"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v3, "user_system"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "coins"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    new-instance v2, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct {v2}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    invoke-virtual {v2, v8, v9}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    invoke-virtual {v2, v3}, Lcom/sina/sinalivesdk/models/UserModel;->setUser_system(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Lcom/sina/sinalivesdk/models/UserModel;->setCoins(J)V

    invoke-virtual {v4, v2}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setOwner_info(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_2
    const-string v2, "gift_info"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "total_num"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "inc_interval"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "inc_num"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    new-instance v11, Lcom/sina/sinalivesdk/models/GiftModel;

    invoke-direct {v11}, Lcom/sina/sinalivesdk/models/GiftModel;-><init>()V

    invoke-virtual {v11, v3}, Lcom/sina/sinalivesdk/models/GiftModel;->setId(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Lcom/sina/sinalivesdk/models/GiftModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lcom/sina/sinalivesdk/models/GiftModel;->setType(I)V

    invoke-virtual {v11, v9}, Lcom/sina/sinalivesdk/models/GiftModel;->setTotal_num(I)V

    invoke-virtual {v11, v10}, Lcom/sina/sinalivesdk/models/GiftModel;->setInc_interval(I)V

    invoke-virtual {v11, v2}, Lcom/sina/sinalivesdk/models/GiftModel;->setInc_num(I)V

    invoke-virtual {v4, v11}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setGift_info(Lcom/sina/sinalivesdk/models/GiftModel;)V

    :cond_3
    const-string v2, "sys_msg_type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setSys_msg_type(I)V

    const-string v2, "live_status"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setLive_status(I)V

    const-string v2, "exit_or_enter_room"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setExit_or_enter_room(I)V

    const-string v2, "room_info"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$RoomCommonInfo;->parseRoomInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/RoomProfileModel;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setRoom_info(Lcom/sina/sinalivesdk/models/RoomProfileModel;)V

    :cond_4
    const-string v2, "shut_info"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v7, Lcom/sina/sinalivesdk/models/ShutInfoModel;

    invoke-direct {v7}, Lcom/sina/sinalivesdk/models/ShutInfoModel;-><init>()V

    const-string v3, "shutted_until"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/sina/sinalivesdk/models/ShutInfoModel;->setShutted_until(I)V

    const-string v3, "members"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserCommonInfo;->parseUserInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_6
    invoke-virtual {v7, v9}, Lcom/sina/sinalivesdk/models/ShutInfoModel;->setMembers(Ljava/util/ArrayList;)V

    :cond_7
    invoke-virtual {v4, v7}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setShut_info(Lcom/sina/sinalivesdk/models/ShutInfoModel;)V

    :cond_8
    const-string v2, "admin_info"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v3, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct {v3}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    const-string v7, "type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/sina/sinalivesdk/models/UserModel;->setAdmin_info_type(I)V

    const-string v7, "uid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v7, "user_system"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v8, v9}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    invoke-virtual {v3, v2}, Lcom/sina/sinalivesdk/models/UserModel;->setUser_system(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setAdmin_info(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_9
    const-string v2, "created_at"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/sina/sinalivesdk/models/MessageModel;->setLocalTime(J)V

    invoke-virtual {v4, v6}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setMsg(Lcom/sina/sinalivesdk/models/MessageModel;)V

    invoke-virtual {v4, v2, v3}, Lcom/sina/sinalivesdk/models/PushMessageModel;->setCreate_at(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static paserSendGiftResponse(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/MessageModel;
    .locals 4

    new-instance v1, Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-direct {v1}, Lcom/sina/sinalivesdk/models/MessageModel;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "sender_info"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserCommonInfo;->parseUserInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/models/MessageModel;->setSender(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_0
    const-string v2, "msg_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sina/sinalivesdk/models/MessageModel;->setMid(J)V

    const-string v2, "gift_body"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
