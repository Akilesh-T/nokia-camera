.class Lcom/android/camera/effect/download/DownLoaderManager$2;
.super Ljava/lang/Object;
.source "DownLoaderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/download/DownLoaderManager;->downloadZIPRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/download/DownLoaderManager;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/download/DownLoaderManager;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iput-object p2, p0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$category:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$category:Ljava/lang/String;

    sget-object v15, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 378
    const-string v1, "STICKER_DOWNLOAD"

    .line 385
    .local v1, "MESSAGER":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 386
    .local v8, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 387
    .local v2, "dataFromNetworkArray":[B
    const/4 v6, 0x0

    .line 388
    .local v6, "errorStickerInputStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 390
    .local v7, "errorThemeInputStream":Ljava/io/InputStream;
    const-string v14, "DownLoaderManager"

    const-string v15, "Resouce ZIP download run(downloadFileRunnable) "

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".zip"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 394
    .local v13, "zipFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v12, v14, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    .line 395
    .local v12, "unZipFileName":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/camera/effect/download/DownLoaderManager;->isNeedDownloadResourceZipAgain(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 396
    const-string v14, "DownLoaderManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "zipFileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", unZipFileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not need to download!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .end local v1    # "MESSAGER":Ljava/lang/String;
    .end local v2    # "dataFromNetworkArray":[B
    .end local v6    # "errorStickerInputStream":Ljava/io/InputStream;
    .end local v7    # "errorThemeInputStream":Ljava/io/InputStream;
    .end local v8    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v12    # "unZipFileName":Ljava/lang/String;
    .end local v13    # "zipFileName":Ljava/lang/String;
    :goto_1
    return-void

    .line 379
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$category:Ljava/lang/String;

    sget-object v15, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 380
    const-string v1, "THEME_DOWNLOAD"

    .restart local v1    # "MESSAGER":Ljava/lang/String;
    goto :goto_0

    .line 382
    .end local v1    # "MESSAGER":Ljava/lang/String;
    :cond_1
    const-string v14, "DownLoaderManager"

    const-string v15, "unknow category!!"

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 399
    .restart local v1    # "MESSAGER":Ljava/lang/String;
    .restart local v2    # "dataFromNetworkArray":[B
    .restart local v6    # "errorStickerInputStream":Ljava/io/InputStream;
    .restart local v7    # "errorThemeInputStream":Ljava/io/InputStream;
    .restart local v8    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v12    # "unZipFileName":Ljava/lang/String;
    .restart local v13    # "zipFileName":Ljava/lang/String;
    :cond_2
    const-string v14, "DownLoaderManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "zipFileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", unZipFileName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getStickerResourceUrl()Ljava/lang/String;

    move-result-object v15

    const-string v16, "GET"

    invoke-static/range {v14 .. v16}, Lcom/android/camera/effect/download/DownLoaderManager;->access$000(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v8

    .line 405
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 406
    .local v10, "resultCode":I
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11

    .line 407
    .local v11, "resultMessage":Ljava/lang/String;
    const-string v14, "DownLoaderManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resultCode(downloadStickerRunnable) = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",resultMessage = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/16 v14, 0xc8

    if-ne v14, v10, :cond_1b

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-static {v14, v8}, Lcom/android/camera/effect/download/DownLoaderManager;->access$100(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/net/HttpURLConnection;)[B

    move-result-object v2

    .line 413
    if-eqz v2, :cond_1a

    .line 414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".zip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v14, v2, v15, v0}, Lcom/android/camera/effect/download/DownLoaderManager;->access$200(Lcom/android/camera/effect/download/DownLoaderManager;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 416
    .local v9, "isWrittenToDisk":Z
    if-eqz v9, :cond_19

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    new-instance v15, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".zip"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    const-string v17, "STICKER_DOWNLOAD"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$300(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/io/File;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "checksum error"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 501
    if-eqz v6, :cond_3

    .line 503
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    const/4 v6, 0x0

    .line 511
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 513
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 517
    const/4 v7, 0x0

    .line 520
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 521
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 525
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-virtual {v14}, Lcom/android/camera/effect/download/DownLoaderManager;->executePostResultRunnable()V

    goto/16 :goto_1

    .line 504
    :catch_0
    move-exception v3

    .line 505
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 507
    const/4 v6, 0x0

    .line 508
    goto :goto_2

    .line 507
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    const/4 v6, 0x0

    throw v14

    .line 514
    :catch_1
    move-exception v3

    .line 515
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 517
    const/4 v7, 0x0

    .line 518
    goto :goto_3

    .line 517
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    const/4 v7, 0x0

    throw v14

    .line 424
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getThemeResourceUrl()Ljava/lang/String;

    move-result-object v15

    const-string v16, "GET"

    invoke-static/range {v14 .. v16}, Lcom/android/camera/effect/download/DownLoaderManager;->access$000(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v8

    .line 425
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 426
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11

    .line 427
    const-string v14, "DownLoaderManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resultCode(downloadThemeFileRunnable) = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",resultMessage = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/16 v14, 0xc8

    if-ne v14, v10, :cond_17

    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-static {v14, v8}, Lcom/android/camera/effect/download/DownLoaderManager;->access$100(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/net/HttpURLConnection;)[B

    move-result-object v2

    .line 435
    if-eqz v2, :cond_16

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".zip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v14, v2, v15, v0}, Lcom/android/camera/effect/download/DownLoaderManager;->access$200(Lcom/android/camera/effect/download/DownLoaderManager;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 437
    if-eqz v9, :cond_12

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    new-instance v15, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".zip"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    const-string v17, "THEME_DOWNLOAD"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$300(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/io/File;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "checksum error"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 501
    if-eqz v6, :cond_7

    .line 503
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 507
    const/4 v6, 0x0

    .line 511
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 513
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 517
    const/4 v7, 0x0

    .line 520
    :cond_8
    :goto_5
    if-eqz v8, :cond_9

    .line 521
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 525
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-virtual {v14}, Lcom/android/camera/effect/download/DownLoaderManager;->executePostResultRunnable()V

    goto/16 :goto_1

    .line 504
    :catch_2
    move-exception v3

    .line 505
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 507
    const/4 v6, 0x0

    .line 508
    goto :goto_4

    .line 507
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v14

    const/4 v6, 0x0

    throw v14

    .line 514
    :catch_3
    move-exception v3

    .line 515
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 517
    const/4 v7, 0x0

    .line 518
    goto :goto_5

    .line 517
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v14

    const/4 v7, 0x0

    throw v14

    .line 445
    :cond_a
    :try_start_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".zip"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/ZipUtils;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "ok"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 501
    .end local v9    # "isWrittenToDisk":Z
    :goto_6
    if-eqz v6, :cond_b

    .line 503
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 507
    const/4 v6, 0x0

    .line 511
    :cond_b
    :goto_7
    if-eqz v7, :cond_c

    .line 513
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 517
    const/4 v7, 0x0

    .line 520
    :cond_c
    :goto_8
    if-eqz v8, :cond_d

    .line 521
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 525
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-virtual {v14}, Lcom/android/camera/effect/download/DownLoaderManager;->executePostResultRunnable()V

    goto/16 :goto_1

    .line 450
    .restart local v9    # "isWrittenToDisk":Z
    :cond_e
    :try_start_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "unzip error"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_6

    .line 495
    .end local v9    # "isWrittenToDisk":Z
    .end local v10    # "resultCode":I
    .end local v11    # "resultMessage":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 496
    .local v3, "e":Ljava/lang/Exception;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v14, "DownLoaderManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 501
    if-eqz v6, :cond_f

    .line 503
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 507
    const/4 v6, 0x0

    .line 511
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_9
    if-eqz v7, :cond_10

    .line 513
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 517
    const/4 v7, 0x0

    .line 520
    :cond_10
    :goto_a
    if-eqz v8, :cond_11

    .line 521
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 525
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-virtual {v14}, Lcom/android/camera/effect/download/DownLoaderManager;->executePostResultRunnable()V

    goto/16 :goto_1

    .line 454
    .restart local v9    # "isWrittenToDisk":Z
    .restart local v10    # "resultCode":I
    .restart local v11    # "resultMessage":Ljava/lang/String;
    :cond_12
    :try_start_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "write into file error"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto/16 :goto_6

    .line 501
    .end local v9    # "isWrittenToDisk":Z
    .end local v10    # "resultCode":I
    .end local v11    # "resultMessage":Ljava/lang/String;
    :catchall_4
    move-exception v14

    if-eqz v6, :cond_13

    .line 503
    :try_start_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 507
    const/4 v6, 0x0

    .line 511
    :cond_13
    :goto_b
    if-eqz v7, :cond_14

    .line 513
    :try_start_13
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 517
    const/4 v7, 0x0

    .line 520
    :cond_14
    :goto_c
    if-eqz v8, :cond_15

    .line 521
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 525
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-virtual {v15}, Lcom/android/camera/effect/download/DownLoaderManager;->executePostResultRunnable()V

    throw v14

    .line 458
    .restart local v9    # "isWrittenToDisk":Z
    .restart local v10    # "resultCode":I
    .restart local v11    # "resultMessage":Ljava/lang/String;
    :cond_16
    :try_start_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "read data from network error"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 462
    :cond_17
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    .line 463
    invoke-static {v7}, Lcom/android/camera/effect/util/EffectUtil;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "errorMessage":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonEffectCloudError(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectClouldErrorInfo;

    move-result-object v4

    .line 466
    .local v4, "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    if-eqz v4, :cond_18

    .line 467
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->getError()Ljava/lang/String;

    move-result-object v11

    .line 469
    :cond_18
    const-string v14, "DownLoaderManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "errorMessage(downloadZIPRunnable) = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",resultMessage = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 476
    .end local v4    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    .end local v5    # "errorMessage":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "write into file error"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 480
    .end local v9    # "isWrittenToDisk":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "read data from network error"

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 484
    :cond_1b
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    .line 485
    invoke-static {v6}, Lcom/android/camera/effect/util/EffectUtil;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 486
    .restart local v5    # "errorMessage":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonEffectCloudError(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectClouldErrorInfo;

    move-result-object v4

    .line 488
    .restart local v4    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    if-eqz v4, :cond_1c

    .line 489
    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->getError()Ljava/lang/String;

    move-result-object v11

    .line 491
    :cond_1c
    const-string v14, "DownLoaderManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "errorMessage(downloadZIPRunnable) = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",resultMessage = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v1, v15, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v15, v15, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v15}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/effect/download/DownLoaderManager$2;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto/16 :goto_6

    .line 504
    .end local v4    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    .end local v5    # "errorMessage":Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 505
    .local v3, "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 507
    const/4 v6, 0x0

    .line 508
    goto/16 :goto_7

    .line 507
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v14

    const/4 v6, 0x0

    throw v14

    .line 514
    :catch_6
    move-exception v3

    .line 515
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_16
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 517
    const/4 v7, 0x0

    .line 518
    goto/16 :goto_8

    .line 517
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_6
    move-exception v14

    const/4 v7, 0x0

    throw v14

    .line 504
    .end local v10    # "resultCode":I
    .end local v11    # "resultMessage":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    .line 505
    .local v3, "e":Ljava/io/IOException;
    :try_start_17
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 507
    const/4 v6, 0x0

    .line 508
    goto/16 :goto_9

    .line 507
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v14

    const/4 v6, 0x0

    throw v14

    .line 514
    :catch_8
    move-exception v3

    .line 515
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_18
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 517
    const/4 v7, 0x0

    .line 518
    goto/16 :goto_a

    .line 517
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_8
    move-exception v14

    const/4 v7, 0x0

    throw v14

    .line 504
    :catch_9
    move-exception v3

    .line 505
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_19
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 507
    const/4 v6, 0x0

    .line 508
    goto/16 :goto_b

    .line 507
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_9
    move-exception v14

    const/4 v6, 0x0

    throw v14

    .line 514
    :catch_a
    move-exception v3

    .line 515
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 517
    const/4 v7, 0x0

    .line 518
    goto/16 :goto_c

    .line 517
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_a
    move-exception v14

    const/4 v7, 0x0

    throw v14
.end method
