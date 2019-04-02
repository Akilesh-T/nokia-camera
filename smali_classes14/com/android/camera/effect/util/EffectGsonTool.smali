.class public Lcom/android/camera/effect/util/EffectGsonTool;
.super Ljava/lang/Object;
.source "EffectGsonTool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectGsonTool"

.field private static final USE_GSON_TOOL:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/util/EffectGsonTool;->USE_GSON_TOOL:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromJsonArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v5, "EffectGsonTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromJsonArray jsonString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v5, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 37
    .local v0, "array":Lcom/google/gson/JsonArray;
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 38
    .local v2, "elem":Lcom/google/gson/JsonElement;
    invoke-virtual {v3, v2, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v0    # "array":Lcom/google/gson/JsonArray;
    .end local v2    # "elem":Lcom/google/gson/JsonElement;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const-string v5, "EffectGsonTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromJsonArray Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 27
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/util/EffectDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    sget-object v24, Lcom/android/camera/effect/util/EffectGsonTool;->USE_GSON_TOOL:Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 63
    const-class v24, Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v15

    :cond_0
    :goto_0
    move-object/from16 v16, v15

    .line 152
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .local v16, "list":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    :goto_1
    return-object v16

    .line 65
    .end local v16    # "list":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .restart local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    :cond_1
    if-nez p0, :cond_2

    move-object/from16 v16, v15

    .line 66
    .restart local v16    # "list":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    goto :goto_1

    .line 69
    .end local v16    # "list":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "array":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v24

    if-lez v24, :cond_0

    .line 71
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_0

    .line 72
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 73
    .local v12, "jsonObject":Lorg/json/JSONObject;
    new-instance v10, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-direct {v10}, Lcom/android/camera/effect/util/EffectDataInfo;-><init>()V

    .line 74
    .local v10, "info":Lcom/android/camera/effect/util/EffectDataInfo;
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 75
    .local v11, "iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 76
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 77
    .local v13, "key":Ljava/lang/String;
    const-string v24, "key"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 78
    const-string v24, "key"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 79
    .local v14, "key_value":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 80
    invoke-virtual {v10, v14}, Lcom/android/camera/effect/util/EffectDataInfo;->setKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 146
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v10    # "info":Lcom/android/camera/effect/util/EffectDataInfo;
    .end local v11    # "iterator":Ljava/util/Iterator;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "key_value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 148
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const-string v24, "EffectGsonTool"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "fromJsonArrayEffectDI Exception : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "array":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v10    # "info":Lcom/android/camera/effect/util/EffectDataInfo;
    .restart local v11    # "iterator":Ljava/util/Iterator;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "key":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v24, "from"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 83
    const-string v24, "from"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "from":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 85
    invoke-virtual {v10, v6}, Lcom/android/camera/effect/util/EffectDataInfo;->setFrom(Ljava/lang/String;)V

    goto :goto_3

    .line 87
    .end local v6    # "from":Ljava/lang/String;
    :cond_5
    const-string v24, "iconUrl"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 88
    const-string v24, "iconUrl"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "iconUrl":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 90
    invoke-virtual {v10, v9}, Lcom/android/camera/effect/util/EffectDataInfo;->setIconUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 92
    .end local v9    # "iconUrl":Ljava/lang/String;
    :cond_6
    const-string v24, "resourceUrl"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 93
    const-string v24, "resourceUrl"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 94
    .local v18, "resourceUrl":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 95
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setResourceUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 97
    .end local v18    # "resourceUrl":Ljava/lang/String;
    :cond_7
    const-string v24, "stickerResourceUrl"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 98
    const-string v24, "stickerResourceUrl"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 99
    .local v21, "stickerResourceUrl":Ljava/lang/String;
    if-eqz v21, :cond_3

    .line 100
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setStickerResourceUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 102
    .end local v21    # "stickerResourceUrl":Ljava/lang/String;
    :cond_8
    const-string v24, "themeResourceUrl"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 103
    const-string v24, "themeResourceUrl"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 104
    .local v23, "themeResourceUrl":Ljava/lang/String;
    if-eqz v23, :cond_3

    .line 105
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setThemeResourceUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 107
    .end local v23    # "themeResourceUrl":Ljava/lang/String;
    :cond_9
    const-string v24, "cloudAbandoned"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 108
    const-string v24, "cloudAbandoned"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 109
    .local v4, "cloudAbandoned":Z
    invoke-virtual {v10, v4}, Lcom/android/camera/effect/util/EffectDataInfo;->setCloudAbandoned(Z)V

    goto/16 :goto_3

    .line 110
    .end local v4    # "cloudAbandoned":Z
    :cond_a
    const-string v24, "shelfId"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 111
    const-string v24, "shelfId"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 112
    .local v19, "shelfId":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 113
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setShelfId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 115
    .end local v19    # "shelfId":Ljava/lang/String;
    :cond_b
    const-string v24, "resourceId"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 116
    const-string v24, "resourceId"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 117
    .local v17, "resourceId":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 118
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setResourceId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 120
    .end local v17    # "resourceId":Ljava/lang/String;
    :cond_c
    const-string v24, "iconCheckSum"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 121
    const-string v24, "iconCheckSum"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "iconCheckSum":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 123
    invoke-virtual {v10, v8}, Lcom/android/camera/effect/util/EffectDataInfo;->setIconCheckSum(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 125
    .end local v8    # "iconCheckSum":Ljava/lang/String;
    :cond_d
    const-string v24, "stickerCheckSum"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 126
    const-string v24, "stickerCheckSum"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 127
    .local v20, "stickerCheckSum":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 128
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setStickerCheckSum(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 130
    .end local v20    # "stickerCheckSum":Ljava/lang/String;
    :cond_e
    const-string v24, "themeCheckSum"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 131
    const-string v24, "themeCheckSum"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 132
    .local v22, "themeCheckSum":Ljava/lang/String;
    if-eqz v22, :cond_3

    .line 133
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setThemeCheckSum(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 135
    .end local v22    # "themeCheckSum":Ljava/lang/String;
    :cond_f
    const-string v24, "animojiCheckSum"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 136
    const-string v24, "animojiCheckSum"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "animojiCheckSum":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {v10, v2}, Lcom/android/camera/effect/util/EffectDataInfo;->setAnimojiCheckSum(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 142
    .end local v2    # "animojiCheckSum":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    :cond_10
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method public static fromJsonEffectCDI(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectCloudDataInfo;
    .locals 46
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v19, Lcom/android/camera/effect/util/EffectCloudDataInfo;

    invoke-direct/range {v19 .. v19}, Lcom/android/camera/effect/util/EffectCloudDataInfo;-><init>()V

    .line 217
    .local v19, "info":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    sget-object v43, Lcom/android/camera/effect/util/EffectGsonTool;->USE_GSON_TOOL:Ljava/lang/Boolean;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v43

    if-eqz v43, :cond_1

    .line 218
    invoke-static {}, Lcom/android/camera/effect/util/EffectGsonTool;->getGson()Lcom/google/gson/Gson;

    move-result-object v43

    const-class v44, Lcom/android/camera/effect/util/EffectCloudDataInfo;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "info":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    check-cast v19, Lcom/android/camera/effect/util/EffectCloudDataInfo;

    .restart local v19    # "info":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    :cond_0
    :goto_0
    move-object/from16 v20, v19

    .line 312
    .end local v19    # "info":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    .local v20, "info":Ljava/lang/Object;
    :goto_1
    return-object v20

    .line 220
    .end local v20    # "info":Ljava/lang/Object;
    .restart local v19    # "info":Lcom/android/camera/effect/util/EffectCloudDataInfo;
    :cond_1
    if-nez p0, :cond_2

    move-object/from16 v20, v19

    .line 221
    .restart local v20    # "info":Ljava/lang/Object;
    goto :goto_1

    .line 224
    .end local v20    # "info":Ljava/lang/Object;
    :cond_2
    :try_start_0
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .local v22, "jsonObject":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 226
    .local v17, "id":I
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->setId(I)V

    .line 227
    const-string v43, "code"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "code":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->setCode(Ljava/lang/String;)V

    .line 229
    const-string v43, "progress"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 230
    .local v31, "progress":I
    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->setProgress(I)V

    .line 231
    const-string v43, "version"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v41

    .line 232
    .local v41, "version":I
    move-object/from16 v0, v19

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->setVersion(I)V

    .line 233
    const-string v43, "revision"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 234
    .local v35, "revision":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->setRevision(Ljava/lang/String;)V

    .line 235
    const-string v43, "category"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->setCategory(Ljava/lang/String;)V

    .line 237
    const-string v43, "type"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 238
    .local v37, "type":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->setType(Ljava/lang/String;)V

    .line 239
    const-string v43, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 240
    .local v28, "name":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->setName(Ljava/lang/String;)V

    .line 243
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v34, "resorucesBeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;>;"
    const-string v43, "resoruces"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 245
    .local v3, "array":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-lez v43, :cond_0

    .line 246
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_7

    .line 247
    new-instance v32, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;

    invoke-direct/range {v32 .. v32}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;-><init>()V

    .line 248
    .local v32, "resorucesBean":Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v33

    .line 249
    .local v33, "resorucesBeanJSONObject":Lorg/json/JSONObject;
    const-string v43, "id"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 250
    .local v18, "id_Resoruces":I
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->setId(I)V

    .line 251
    const-string v43, "code"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, "code_Resoruces":Ljava/lang/String;
    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->setCode(Ljava/lang/String;)V

    .line 253
    const-string v43, "version"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v42

    .line 254
    .local v42, "version_Resoruces":I
    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->setVersion(I)V

    .line 255
    const-string v43, "revision"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 256
    .local v36, "revision_Resoruces":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->setRevision(Ljava/lang/String;)V

    .line 257
    const-string v43, "category"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "category_Resoruces":Ljava/lang/String;
    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->setCategory(Ljava/lang/String;)V

    .line 259
    const-string v43, "type"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 260
    .local v39, "type_Resoruces":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->setType(Ljava/lang/String;)V

    .line 261
    const-string v43, "name"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 262
    .local v30, "name_Resoruces":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->setName(Ljava/lang/String;)V

    .line 265
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v27, "metadataBeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;>;"
    const-string v43, "metadata"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 267
    .local v5, "arrayMetadata":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-lez v43, :cond_4

    .line 268
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v21

    move/from16 v1, v43

    if-ge v0, v1, :cond_3

    .line 269
    new-instance v25, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;

    invoke-direct/range {v25 .. v25}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;-><init>()V

    .line 270
    .local v25, "mesorucesBean":Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 271
    .local v26, "metadataBeanJSONObject":Lorg/json/JSONObject;
    const-string v43, "key"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 272
    .local v23, "key_Metadata":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;->setKey(Ljava/lang/String;)V

    .line 273
    const-string v43, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 274
    .local v40, "value_Metadata":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;->setValue(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 277
    .end local v23    # "key_Metadata":Ljava/lang/String;
    .end local v25    # "mesorucesBean":Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;
    .end local v26    # "metadataBeanJSONObject":Lorg/json/JSONObject;
    .end local v40    # "value_Metadata":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->setMetadata(Ljava/util/List;)V

    .line 281
    .end local v21    # "j":I
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v15, "filesBeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;>;"
    const-string v43, "files"

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 283
    .local v4, "arrayFiles":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v43

    if-lez v43, :cond_6

    .line 284
    const/16 v21, 0x0

    .restart local v21    # "j":I
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v43

    move/from16 v0, v21

    move/from16 v1, v43

    if-ge v0, v1, :cond_5

    .line 285
    new-instance v13, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;

    invoke-direct {v13}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;-><init>()V

    .line 286
    .local v13, "filesBean":Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 287
    .local v14, "filesBeanJSONObject":Lorg/json/JSONObject;
    const-string v43, "type"

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 288
    .local v38, "type_Files":Ljava/lang/String;
    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->setType(Ljava/lang/String;)V

    .line 289
    const-string v43, "contentType"

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 290
    .local v11, "contentType_Files":Ljava/lang/String;
    invoke-virtual {v13, v11}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->setContentType(Ljava/lang/String;)V

    .line 291
    const-string v43, "name"

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 292
    .local v29, "name_Files":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->setName(Ljava/lang/String;)V

    .line 293
    const-string v43, "link"

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 294
    .local v24, "link_Files":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->setLink(Ljava/lang/String;)V

    .line 295
    const-string v43, "checksum"

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, "checksum_Files":Ljava/lang/String;
    invoke-virtual {v13, v8}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->setChecksum(Ljava/lang/String;)V

    .line 297
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 299
    .end local v8    # "checksum_Files":Ljava/lang/String;
    .end local v11    # "contentType_Files":Ljava/lang/String;
    .end local v13    # "filesBean":Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;
    .end local v14    # "filesBeanJSONObject":Lorg/json/JSONObject;
    .end local v24    # "link_Files":Ljava/lang/String;
    .end local v29    # "name_Files":Ljava/lang/String;
    .end local v38    # "type_Files":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->setFiles(Ljava/util/List;)V

    .line 301
    .end local v21    # "j":I
    :cond_6
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 303
    .end local v4    # "arrayFiles":Lorg/json/JSONArray;
    .end local v5    # "arrayMetadata":Lorg/json/JSONArray;
    .end local v7    # "category_Resoruces":Ljava/lang/String;
    .end local v10    # "code_Resoruces":Ljava/lang/String;
    .end local v15    # "filesBeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;>;"
    .end local v18    # "id_Resoruces":I
    .end local v27    # "metadataBeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$MetadataBean;>;"
    .end local v30    # "name_Resoruces":Ljava/lang/String;
    .end local v32    # "resorucesBean":Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;
    .end local v33    # "resorucesBeanJSONObject":Lorg/json/JSONObject;
    .end local v36    # "revision_Resoruces":Ljava/lang/String;
    .end local v39    # "type_Resoruces":Ljava/lang/String;
    .end local v42    # "version_Resoruces":I
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->setResoruces(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 306
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v6    # "category":Ljava/lang/String;
    .end local v9    # "code":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v17    # "id":I
    .end local v22    # "jsonObject":Lorg/json/JSONObject;
    .end local v28    # "name":Ljava/lang/String;
    .end local v31    # "progress":I
    .end local v34    # "resorucesBeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;>;"
    .end local v35    # "revision":Ljava/lang/String;
    .end local v37    # "type":Ljava/lang/String;
    .end local v41    # "version":I
    :catch_0
    move-exception v12

    .line 308
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    const-string v43, "EffectGsonTool"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "fromJsonEffectCDI Exception : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static fromJsonEffectCloudError(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    .locals 9
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    sget-object v6, Lcom/android/camera/effect/util/EffectGsonTool;->USE_GSON_TOOL:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    invoke-static {}, Lcom/android/camera/effect/util/EffectGsonTool;->getGson()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/android/camera/effect/util/EffectClouldErrorInfo;

    invoke-virtual {v6, p0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    check-cast v2, Lcom/android/camera/effect/util/EffectClouldErrorInfo;

    .restart local v2    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    :goto_0
    move-object v3, v2

    .line 179
    .end local v2    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    .local v3, "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    :goto_1
    return-object v3

    .line 160
    .end local v3    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    .restart local v2    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    :cond_0
    if-nez p0, :cond_1

    move-object v3, v2

    .line 161
    .end local v2    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    .restart local v3    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    goto :goto_1

    .line 164
    .end local v3    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    .restart local v2    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    :cond_1
    const/4 v4, 0x0

    .line 165
    .local v4, "error":Ljava/lang/String;
    const/4 v0, 0x0

    .line 166
    .local v0, "description":Ljava/lang/String;
    new-instance v2, Lcom/android/camera/effect/util/EffectClouldErrorInfo;

    .end local v2    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    invoke-direct {v2}, Lcom/android/camera/effect/util/EffectClouldErrorInfo;-><init>()V

    .line 168
    .restart local v2    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "error"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {v2, v4}, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->setError(Ljava/lang/String;)V

    .line 171
    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {v2, v0}, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 175
    const-string v6, "EffectGsonTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromJsonEffectCloudError Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getGson()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method private static toJsonArray(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    .line 51
    .local v2, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 57
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_0
    return-object v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const-string v3, "EffectGsonTool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toJsonArray Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toJsonArrayEffectDI(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/util/EffectDataInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    const/4 v4, 0x0

    .line 184
    .local v4, "jsonString":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/effect/util/EffectGsonTool;->USE_GSON_TOOL:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    invoke-static {p0}, Lcom/android/camera/effect/util/EffectGsonTool;->toJsonArray(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 212
    :goto_0
    return-object v4

    .line 188
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 189
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/util/EffectDataInfo;

    .line 190
    .local v1, "info":Lcom/android/camera/effect/util/EffectDataInfo;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 191
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "key"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v6, "from"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v6, "iconUrl"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v6, "resourceUrl"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v6, "stickerResourceUrl"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getStickerResourceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v6, "themeResourceUrl"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getThemeResourceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v6, "cloudAbandoned"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->isCloudAbandoned()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 198
    const-string v6, "shelfId"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v6, "resourceId"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v6, "iconCheckSum"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getIconCheckSum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v6, "stickerCheckSum"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getStickerCheckSum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v6, "themeCheckSum"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getThemeCheckSum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v6, "animojiCheckSum"

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getAnimojiCheckSum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 207
    .end local v1    # "info":Lcom/android/camera/effect/util/EffectDataInfo;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const-string v5, "EffectGsonTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toJsonArrayEffectDI Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static toJsonJsonRequestBody(Lcom/android/camera/effect/download/JsonRequestBody;)Ljava/lang/String;
    .locals 7
    .param p0, "info"    # Lcom/android/camera/effect/download/JsonRequestBody;

    .prologue
    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, "jsonString":Ljava/lang/String;
    sget-object v4, Lcom/android/camera/effect/util/EffectGsonTool;->USE_GSON_TOOL:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    invoke-static {}, Lcom/android/camera/effect/util/EffectGsonTool;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v3, v2

    .line 351
    .end local v2    # "jsonString":Ljava/lang/String;
    .local v3, "jsonString":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 320
    .end local v3    # "jsonString":Ljava/lang/String;
    .restart local v2    # "jsonString":Ljava/lang/String;
    :cond_0
    if-nez p0, :cond_1

    move-object v3, v2

    .line 321
    .end local v2    # "jsonString":Ljava/lang/String;
    .restart local v3    # "jsonString":Ljava/lang/String;
    goto :goto_1

    .line 324
    .end local v3    # "jsonString":Ljava/lang/String;
    .restart local v2    # "jsonString":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 325
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "uuid"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v4, "category"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v4, "type"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v4, "branchVersion"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getBranchVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v4, "region"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v4, "brand"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getBrand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v4, "project"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getProject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v4, "model"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v4, "version"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v4, "subVersion"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getSubVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v4, "skuid"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getSkuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v4, "deviceId"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v4, "mcc1"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getMcc1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v4, "mnc1"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getMnc1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v4, "mcc2"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getMcc2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v4, "mnc2"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getMnc2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v4, "appName"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v4, "appVersion"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v4, "reason"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/JsonRequestBody;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 345
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    const-string v4, "EffectGsonTool"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toJsonJsonRequestBody Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static toJsonResultPostData(Lcom/android/camera/effect/download/ResultPostData;)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # Lcom/android/camera/effect/download/ResultPostData;

    .prologue
    .line 355
    const/4 v5, 0x0

    .line 356
    .local v5, "jsonString":Ljava/lang/String;
    sget-object v8, Lcom/android/camera/effect/util/EffectGsonTool;->USE_GSON_TOOL:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 357
    invoke-static {}, Lcom/android/camera/effect/util/EffectGsonTool;->getGson()Lcom/google/gson/Gson;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v6, v5

    .line 382
    .end local v5    # "jsonString":Ljava/lang/String;
    .local v6, "jsonString":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 359
    .end local v6    # "jsonString":Ljava/lang/String;
    .restart local v5    # "jsonString":Ljava/lang/String;
    :cond_0
    if-nez p0, :cond_1

    move-object v6, v5

    .line 360
    .end local v5    # "jsonString":Ljava/lang/String;
    .restart local v6    # "jsonString":Ljava/lang/String;
    goto :goto_1

    .line 363
    .end local v6    # "jsonString":Ljava/lang/String;
    .restart local v5    # "jsonString":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 364
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "uuid"

    invoke-virtual {p0}, Lcom/android/camera/effect/download/ResultPostData;->getUUID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    invoke-virtual {p0}, Lcom/android/camera/effect/download/ResultPostData;->getResults()Ljava/util/List;

    move-result-object v7

    .line 367
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 368
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;

    .line 369
    .local v1, "info":Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 370
    .local v4, "jsonObjectBean":Lorg/json/JSONObject;
    const-string v9, "shelfId"

    invoke-virtual {v1}, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->getShelfId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v9, "resourceId"

    invoke-virtual {v1}, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v9, "result"

    invoke-virtual {v1}, Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;->getResult()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 377
    .end local v1    # "info":Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonObjectBean":Lorg/json/JSONObject;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;>;"
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    const-string v8, "EffectGsonTool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toJsonResultPostData Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/download/ResultPostData$ResultPostDataBean;>;"
    :cond_2
    :try_start_1
    const-string v8, "results"

    invoke-virtual {v3, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0
.end method
