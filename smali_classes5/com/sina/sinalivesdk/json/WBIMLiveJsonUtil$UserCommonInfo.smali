.class public Lcom/sina/sinalivesdk/json/WBIMLiveJsonUtil$UserCommonInfo;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseUserInfo(Lorg/json/JSONObject;)Lcom/sina/sinalivesdk/models/UserModel;
    .locals 23

    new-instance v2, Lcom/sina/sinalivesdk/models/UserModel;

    invoke-direct {v2}, Lcom/sina/sinalivesdk/models/UserModel;-><init>()V

    const-string v3, "uid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "avatar"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "level"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "nickname"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "followers_count"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "join_time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "role"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "shutted_until"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v13, "is_followed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v16, "is_vip"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const-string v17, "big_v"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "user_system"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "attention_count"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const-string v20, "statuses_count"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    const-string v21, "description"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "verified_reason"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v2, v4, v5}, Lcom/sina/sinalivesdk/models/UserModel;->setUid(J)V

    invoke-virtual {v2, v3}, Lcom/sina/sinalivesdk/models/UserModel;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/sina/sinalivesdk/models/UserModel;->setLevel(I)V

    invoke-virtual {v2, v7}, Lcom/sina/sinalivesdk/models/UserModel;->setNickname(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lcom/sina/sinalivesdk/models/UserModel;->setFollowers_count(J)V

    invoke-virtual {v2, v10, v11}, Lcom/sina/sinalivesdk/models/UserModel;->setJoin_time(J)V

    invoke-virtual {v2, v12}, Lcom/sina/sinalivesdk/models/UserModel;->setRole(I)V

    invoke-virtual {v2, v14, v15}, Lcom/sina/sinalivesdk/models/UserModel;->setShutted_until(J)V

    invoke-virtual {v2, v13}, Lcom/sina/sinalivesdk/models/UserModel;->setIs_fllowed(I)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/UserModel;->setIs_vip(I)V

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/UserModel;->setBig_v(I)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/UserModel;->setUser_system(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/UserModel;->setAttention_count(I)V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/UserModel;->setStatuses_count(I)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/UserModel;->setDescription(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sina/sinalivesdk/models/UserModel;->setVerified_reason(Ljava/lang/String;)V

    return-object v2
.end method
