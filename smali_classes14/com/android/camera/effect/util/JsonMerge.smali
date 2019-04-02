.class public Lcom/android/camera/effect/util/JsonMerge;
.super Ljava/lang/Object;
.source "JsonMerge.java"


# static fields
.field public static final MERGE_ANIMOJI_TYPE:I = 0x2

.field public static final MERGE_STICKER_THEME_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JsonMerge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dataCompare(ILjava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/util/EffectDataInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/util/EffectDataInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/util/EffectDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "mergeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .local p3, "cloudInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v12, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v17, "preload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v15, "local_cloud":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "cloud_key":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v5, "cloud_sticker_check_sum":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v6, "cloud_theme_check_sum":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v2, "cloud_animoji_check_sum":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 88
    .local v4, "cloud_size":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    if-ge v13, v4, :cond_3

    .line 89
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getStickerCheckSum()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 92
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getStickerCheckSum()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getThemeCheckSum()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 95
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getThemeCheckSum()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getAnimojiCheckSum()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 98
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectDataInfo;->getAnimojiCheckSum()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 102
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 103
    .local v16, "mergeSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_9

    .line 104
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/effect/util/EffectDataInfo;

    .line 105
    .local v11, "info":Lcom/android/camera/effect/util/EffectDataInfo;
    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getFrom()Ljava/lang/String;

    move-result-object v18

    const-string v19, "preload"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 107
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 109
    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 111
    :pswitch_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".zip"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "downloadStickerPath":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".zip"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "downloadThemePath":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-static {v9}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 114
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 115
    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getStickerCheckSum()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 116
    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getThemeCheckSum()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 117
    :cond_6
    invoke-static {v8}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 118
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectFileUtil;->delFolder(Ljava/lang/String;)Z

    .line 119
    invoke-static {v9}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 120
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/camera/effect/util/EffectFileUtil;->delFolder(Ljava/lang/String;)Z

    .line 121
    sget-object v18, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->mStickerUpdateList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->STICKER_THEME_RESOURCE_UPDATE:Z

    goto/16 :goto_2

    .line 125
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setCloudAbandoned(Z)V

    .line 126
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 131
    .end local v8    # "downloadStickerPath":Ljava/lang/String;
    .end local v9    # "downloadThemePath":Ljava/lang/String;
    :pswitch_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "downloadAnimojiPath":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 133
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 134
    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getAnimojiCheckSum()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 135
    invoke-static {v7}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 136
    sget-object v18, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->mAnimojiUpdateList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->ANIMOJI_RESOURCE_UPDATE:Z

    goto/16 :goto_2

    .line 140
    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setCloudAbandoned(Z)V

    .line 141
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 151
    .end local v7    # "downloadAnimojiPath":Ljava/lang/String;
    .end local v11    # "info":Lcom/android/camera/effect/util/EffectDataInfo;
    .end local v14    # "key":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    return-object v12

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private formatCloudData(Lcom/android/camera/effect/util/EffectCloudDataInfo;)Ljava/util/ArrayList;
    .locals 23
    .param p1, "cloudDataInfo"    # Lcom/android/camera/effect/util/EffectCloudDataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/effect/util/EffectCloudDataInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/util/EffectDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v2, "cloudInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    if-nez p1, :cond_1

    .line 222
    :cond_0
    return-object v2

    .line 166
    :cond_1
    const-string v19, "JsonMerge"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EffectCloudDataInfo.Code = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->getCode()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->getId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 168
    .local v14, "shelfId":Ljava/lang/String;
    const-string v19, "JsonMerge"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EffectCloudDataInfo.shelfId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/util/EffectCloudDataInfo;->getResoruces()Ljava/util/List;

    move-result-object v11

    .line 170
    .local v11, "resourceBeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;>;"
    const-string v19, "JsonMerge"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EffectCloudDataInfo.resourceBeans.size() = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;

    .line 172
    .local v10, "resourceBean":Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;
    invoke-virtual {v10}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->getCode()Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "key":Ljava/lang/String;
    const-string v20, "JsonMerge"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EffectCloudDataInfo.ResourceBean = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v6, "cloud"

    .line 175
    .local v6, "from":Ljava/lang/String;
    const/4 v8, 0x0

    .line 176
    .local v8, "iconUrl":Ljava/lang/String;
    const/4 v13, 0x0

    .line 178
    .local v13, "resourceUrl":Ljava/lang/String;
    const/16 v16, 0x0

    .line 179
    .local v16, "stickerResourceUrl":Ljava/lang/String;
    const/16 v18, 0x0

    .line 181
    .local v18, "themeResourceUrl":Ljava/lang/String;
    const/4 v7, 0x0

    .line 182
    .local v7, "iconCheckSum":Ljava/lang/String;
    const/4 v15, 0x0

    .line 183
    .local v15, "stickerCheckSum":Ljava/lang/String;
    const/16 v17, 0x0

    .line 184
    .local v17, "themeCheckSum":Ljava/lang/String;
    const/4 v1, 0x0

    .line 186
    .local v1, "animojiCheckSum":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->getFiles()Ljava/util/List;

    move-result-object v5

    .line 187
    .local v5, "fileBeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;>;"
    invoke-virtual {v10}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean;->getId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, "resourceId":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;

    .line 189
    .local v4, "fileBean":Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Icon"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 190
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getLink()Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getChecksum()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "StickerResource"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 194
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getLink()Ljava/lang/String;

    move-result-object v16

    .line 195
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getChecksum()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "ThemeResource"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 197
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getLink()Ljava/lang/String;

    move-result-object v18

    .line 198
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getChecksum()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 199
    :cond_5
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "AnimojiResource"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 200
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getLink()Ljava/lang/String;

    move-result-object v13

    .line 201
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;->getChecksum()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 205
    .end local v4    # "fileBean":Lcom/android/camera/effect/util/EffectCloudDataInfo$ResorucesBean$FilesBean;
    :cond_6
    new-instance v3, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-direct {v3}, Lcom/android/camera/effect/util/EffectDataInfo;-><init>()V

    .line 206
    .local v3, "effectDataInfo":Lcom/android/camera/effect/util/EffectDataInfo;
    invoke-virtual {v3, v14}, Lcom/android/camera/effect/util/EffectDataInfo;->setShelfId(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v3, v12}, Lcom/android/camera/effect/util/EffectDataInfo;->setResourceId(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3, v9}, Lcom/android/camera/effect/util/EffectDataInfo;->setKey(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3, v6}, Lcom/android/camera/effect/util/EffectDataInfo;->setFrom(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3, v8}, Lcom/android/camera/effect/util/EffectDataInfo;->setIconUrl(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v3, v13}, Lcom/android/camera/effect/util/EffectDataInfo;->setResourceUrl(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setStickerResourceUrl(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setThemeResourceUrl(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3, v7}, Lcom/android/camera/effect/util/EffectDataInfo;->setIconCheckSum(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v3, v15}, Lcom/android/camera/effect/util/EffectDataInfo;->setStickerCheckSum(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/util/EffectDataInfo;->setThemeCheckSum(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v3, v1}, Lcom/android/camera/effect/util/EffectDataInfo;->setAnimojiCheckSum(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public startMergeJsonFile(I)V
    .locals 17
    .param p1, "type"    # I

    .prologue
    .line 20
    const-string v14, "JsonMerge"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "startMergeJsonFile  start  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v13, 0x0

    .line 23
    .local v13, "merge_data_path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 24
    .local v5, "cloud_data_path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 26
    .local v4, "cloud_data_original_path":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 42
    :goto_0
    invoke-static {v13}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 43
    .local v12, "mergeJsonString":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 44
    .local v11, "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_0

    .line 45
    const-string v15, "JsonMerge"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Before mergeDataInfos  getKey = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v14}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/android/camera/effect/util/EffectLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 28
    .end local v8    # "i":I
    .end local v11    # "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .end local v12    # "mergeJsonString":Ljava/lang/String;
    :pswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "merge_sticker_data.json"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 29
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "cloud_sticker_data.json"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 30
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "cloud_sticker_data_original.json"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    goto :goto_0

    .line 33
    :pswitch_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "merge_animoji_data.json"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 34
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "cloud_animoji_data.json"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "cloud_animoji_data_original.json"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 36
    goto/16 :goto_0

    .line 49
    .restart local v8    # "i":I
    .restart local v11    # "mergeDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .restart local v12    # "mergeJsonString":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "cloudOriginalJsonString":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonEffectCDI(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectCloudDataInfo;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/effect/util/JsonMerge;->formatCloudData(Lcom/android/camera/effect/util/EffectCloudDataInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 51
    .local v2, "cloudDataInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    invoke-static {v2}, Lcom/android/camera/effect/util/EffectGsonTool;->toJsonArrayEffectDI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "jsonOriginalString":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v7, "fileCloud":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 54
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 56
    :cond_1
    invoke-static {v9, v5}, Lcom/android/camera/effect/util/EffectFileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_2

    .line 58
    const-string v15, "JsonMerge"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cloudDataInfos  getKey = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v14}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 61
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11, v2}, Lcom/android/camera/effect/util/JsonMerge;->dataCompare(ILjava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 62
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 63
    const-string v15, "JsonMerge"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "After mergeDataInfos  getKey = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v14}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 67
    :cond_3
    invoke-static {v11}, Lcom/android/camera/effect/util/EffectGsonTool;->toJsonArrayEffectDI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "jsonString":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 70
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 72
    :cond_4
    invoke-static {v10, v13}, Lcom/android/camera/effect/util/EffectFileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    const-string v14, "JsonMerge"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "startMergeJsonFile  end  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
