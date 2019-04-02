.class public Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$ChatRoomAction;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseForbidenUserMode(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;
    .locals 12

    new-instance v2, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;

    invoke-direct {v2}, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "room_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->setRoom_id(Ljava/lang/String;)V

    const-string v1, "members_shutted"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance v5, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct {v5}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    const-string v6, "uid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "shutted_until"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "user_system"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "nickname"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "avatar"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "level"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v9}, Lcom/sina/sinalivesdk/models/UserModel;->setNickname(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/sina/sinalivesdk/models/UserModel;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/sina/sinalivesdk/models/UserModel;->setLevel(I)V

    invoke-virtual {v5, v8}, Lcom/sina/sinalivesdk/models/UserModel;->setUser_system(Ljava/lang/String;)V

    int-to-long v8, v6

    invoke-virtual {v5, v8, v9}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    int-to-long v6, v7

    invoke-virtual {v5, v6, v7}, Lcom/sina/sinalivesdk/models/UserModel;->setShutted_until(J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Lcom/sina/sinalivesdk/models/ForbiddenUserListModel;->setMembers_shutted(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseHistoryMessages(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/HistoryMessagesModel;
    .locals 19

    new-instance v5, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;

    invoke-direct {v5}, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->setRawData(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "start_offset"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v3, "end_offset"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v6, v7}, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->setStart_offset(J)V

    invoke-virtual {v5, v8, v9}, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->setEnd_offset(J)V

    const-string v3, "list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    new-instance v8, Lcom/sina/sinalivesdk/models/HistoryPartMessages;

    invoke-direct {v8}, Lcom/sina/sinalivesdk/models/HistoryPartMessages;-><init>()V

    const-string v4, "offset"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/sina/sinalivesdk/models/HistoryPartMessages;->setOffset(J)V

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_1

    new-instance v11, Lcom/sina/sinalivesdk/models/MessageModel;

    invoke-direct {v11}, Lcom/sina/sinalivesdk/models/MessageModel;-><init>()V

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v12, "msg_type"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "mid"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v13, "content"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v16, "msg_behavior"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string v17, "extension"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "created_at"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    invoke-virtual {v11, v14, v15}, Lcom/sina/sinalivesdk/models/MessageModel;->setMid(J)V

    invoke-virtual {v11, v12}, Lcom/sina/sinalivesdk/models/MessageModel;->setMimeType(I)V

    invoke-virtual {v11, v13}, Lcom/sina/sinalivesdk/models/MessageModel;->setContent(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/sina/sinalivesdk/models/MessageModel;->setMsg_behavior(I)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sina/sinalivesdk/models/MessageModel;->setMsg_extension(Ljava/lang/String;)V

    const-string v12, "sender_info"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserCommonInfo;->parseUserInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/sina/sinalivesdk/models/MessageModel;->setSender(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_0
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v10}, Lcom/sina/sinalivesdk/models/HistoryPartMessages;->setDatas(Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v5, v7}, Lcom/sina/sinalivesdk/models/HistoryMessagesModel;->setList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    return-object v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static parseJoinChatRoom(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;
    .locals 7

    new-instance v1, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;

    invoke-direct {v1}, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "room_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->setRoom_id(J)V

    const-string v2, "owner_info"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "avatar"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct {v6}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    invoke-virtual {v6, v4, v5}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    invoke-virtual {v6, v3}, Lcom/sina/sinalivesdk/models/UserModel;->setNickname(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/sina/sinalivesdk/models/UserModel;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->setOwner_info(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_0
    const-string v2, "total_member_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "is_saved"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->setTotal_member_count(I)V

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/models/JoinChatRoomRsbModel;->setIs_saved(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseJoinRoomModel(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/JoinRoomModel;
    .locals 5

    new-instance v1, Lcom/sina/sinalivesdk/models/JoinRoomModel;

    invoke-direct {v1}, Lcom/sina/sinalivesdk/models/JoinRoomModel;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sina/sinalivesdk/models/JoinRoomModel;->setRawData(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "room_info"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$RoomCommonInfo;->parseRoomInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/RoomProfileModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/models/JoinRoomModel;->setRoom_info(Lcom/sina/sinalivesdk/models/RoomProfileModel;)V

    :cond_0
    const-string v2, "owner_info"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserCommonInfo;->parseUserInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/models/JoinRoomModel;->setUser_info(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_1
    const-string v2, "is_shutted"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "shutted_until"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "role"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2}, Lcom/sina/sinalivesdk/models/JoinRoomModel;->setIs_shutted(I)V

    invoke-virtual {v1, v3}, Lcom/sina/sinalivesdk/models/JoinRoomModel;->setShutted_until(I)V

    invoke-virtual {v1, v0}, Lcom/sina/sinalivesdk/models/JoinRoomModel;->setRole(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseRoomList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sina/sinalivesdk/models/RoomProfileModel;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "rooms"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance v4, Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-direct {v4}, Lcom/sina/sinalivesdk/models/RoomProfileModel;-><init>()V

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "introduction"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "notification"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pic_url"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v9, "owner_id"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v9, "create_time"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v9, "max_member_num"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v9, "member_num"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v9, "play_count"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setRoom_id(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setIntroduction(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setNotification(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-object v2
.end method

.method public static parseRoomProfileList(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/RoomProfileListModel;
    .locals 11

    new-instance v2, Lcom/sina/sinalivesdk/models/RoomProfileListModel;

    invoke-direct {v2}, Lcom/sina/sinalivesdk/models/RoomProfileListModel;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "member_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->setMember_num(I)V

    const-string v1, "rooms"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance v5, Lcom/sina/sinalivesdk/models/RoomProfileModel;

    invoke-direct {v5}, Lcom/sina/sinalivesdk/models/RoomProfileModel;-><init>()V

    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "introduction"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "notification"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "owner_id"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v10, "create_at"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "member_num"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v10, "onlines"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v10, "max_olines"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v10, "praise_count"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v10, "play_count"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setRoom_id(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setIntroduction(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/sina/sinalivesdk/models/RoomProfileModel;->setNotification(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Lcom/sina/sinalivesdk/models/RoomProfileListModel;->setList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseUserList(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/RoomUserListModel;
    .locals 5

    new-instance v2, Lcom/sina/sinalivesdk/models/RoomUserListModel;

    invoke-direct {v2}, Lcom/sina/sinalivesdk/models/RoomUserListModel;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "member_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sina/sinalivesdk/models/RoomUserListModel;->setMember_num(I)V

    const-string v1, "members"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserCommonInfo;->parseUserInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/UserModel;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Lcom/sina/sinalivesdk/models/RoomUserListModel;->setUserlist(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static praseLiveList(Ljava/lang/String;)Lcom/sina/sinalivesdk/models/AnchorLiveListModel;
    .locals 18

    new-instance v4, Lcom/sina/sinalivesdk/models/AnchorLiveListModel;

    invoke-direct {v4}, Lcom/sina/sinalivesdk/models/AnchorLiveListModel;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "total_num"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "room_list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    new-instance v8, Lcom/sina/sinalivesdk/models/AnchorLiveModel;

    invoke-direct {v8}, Lcom/sina/sinalivesdk/models/AnchorLiveModel;-><init>()V

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    const-string v9, "room_id"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->setRoom_id(Ljava/lang/String;)V

    const-string v9, "owner_info"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v10, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct {v10}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    const-string v11, "uid"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v11, "avatar"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "level"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "nick_name"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v12, v13}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    invoke-virtual {v10, v11}, Lcom/sina/sinalivesdk/models/UserModel;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lcom/sina/sinalivesdk/models/UserModel;->setLevel(I)V

    invoke-virtual {v10, v9}, Lcom/sina/sinalivesdk/models/UserModel;->setNickname(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->setOwner_info(Lcom/sina/sinalivesdk/models/UserModel;)V

    :cond_0
    const-string v9, "room_info"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v9, "cover_url"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "msg_num"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "praise_num"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "total_time"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v16, "live_url"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v9}, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->setCover_url(Ljava/lang/String;)V

    invoke-virtual {v8, v10, v11}, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->setMsg_mum(J)V

    invoke-virtual {v8, v12, v13}, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->setPraise_num(J)V

    invoke-virtual {v8, v14, v15}, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->setTotal_time(J)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->setLive_url(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/sina/sinalivesdk/models/AnchorLiveModel;->setStatus(I)V

    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v4, v7}, Lcom/sina/sinalivesdk/models/AnchorLiveListModel;->setLivelist(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/sina/sinalivesdk/models/AnchorLiveListModel;->setTotal_num(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-object v4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
