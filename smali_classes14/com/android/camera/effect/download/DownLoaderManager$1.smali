.class Lcom/android/camera/effect/download/DownLoaderManager$1;
.super Ljava/lang/Object;
.source "DownLoaderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/download/DownLoaderManager;->downloadAnimojiFileRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/download/DownLoaderManager;

.field final synthetic val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/download/DownLoaderManager;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/effect/download/DownLoaderManager;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iput-object p2, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 289
    const/4 v6, 0x0

    .line 290
    .local v6, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v0, 0x0

    .line 291
    .local v0, "dataFromNetworkArray":[B
    const/4 v3, 0x0

    .line 293
    .local v3, "errorInputStream":Ljava/io/InputStream;
    const-string v10, "DownLoaderManager"

    const-string v11, "run(downloadAnimojiFileRunnable) "

    invoke-static {v10, v11}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v5, v10, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    .line 296
    .local v5, "fileName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 297
    invoke-static {v5}, Lcom/android/camera/effect/download/DownLoaderManager;->isNeedDownloadAnimojiAgain(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 365
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const-string v11, "ANIMOJI_DOWNLOAD"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iget-object v11, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v11, v11, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, "GET"

    invoke-static {v10, v11, v12}, Lcom/android/camera/effect/download/DownLoaderManager;->access$000(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 306
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 307
    .local v8, "resultCode":I
    const/4 v9, 0x0

    .line 308
    .local v9, "resultMessage":Ljava/lang/String;
    const-string v10, "DownLoaderManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resultCode(downloadAnimojiFileRunnable) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",resultMessage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/16 v10, 0xc8

    if-ne v10, v8, :cond_a

    .line 312
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-static {v10, v6}, Lcom/android/camera/effect/download/DownLoaderManager;->access$100(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/net/HttpURLConnection;)[B

    move-result-object v0

    .line 314
    if-eqz v0, :cond_9

    .line 315
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    sget-object v11, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-static {v10, v0, v5, v11}, Lcom/android/camera/effect/download/DownLoaderManager;->access$200(Lcom/android/camera/effect/download/DownLoaderManager;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 317
    .local v7, "isWrittenToDisk":Z
    if-eqz v7, :cond_6

    .line 318
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    const-string v13, "ANIMOJI_DOWNLOAD"

    invoke-static {v10, v11, v12, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->access$300(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/io/File;Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 319
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const-string v11, "ANIMOJI_DOWNLOAD"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iget-object v11, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v11, v11, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v12, v12, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v12}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ok"

    invoke-static {v10, v11, v12, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .end local v7    # "isWrittenToDisk":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 353
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    :goto_2
    const/4 v3, 0x0

    .line 359
    :cond_1
    if-eqz v6, :cond_2

    .line 360
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 363
    :cond_2
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-virtual {v10}, Lcom/android/camera/effect/download/DownLoaderManager;->executePostResultRunnable()V

    goto/16 :goto_0

    .line 322
    .restart local v7    # "isWrittenToDisk":Z
    :cond_3
    :try_start_2
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const-string v11, "ANIMOJI_DOWNLOAD"

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iget-object v11, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v11, v11, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v12, v12, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v12}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "checksum error"

    invoke-static {v10, v11, v12, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 346
    .end local v7    # "isWrittenToDisk":Z
    .end local v8    # "resultCode":I
    .end local v9    # "resultMessage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const-string v11, "ANIMOJI_DOWNLOAD"

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iget-object v11, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v11, v11, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v12, v12, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v12}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    if-eqz v3, :cond_4

    .line 353
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v3, 0x0

    .line 359
    :cond_4
    if-eqz v6, :cond_5

    .line 360
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 363
    :cond_5
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-virtual {v10}, Lcom/android/camera/effect/download/DownLoaderManager;->executePostResultRunnable()V

    goto/16 :goto_0

    .line 327
    .restart local v7    # "isWrittenToDisk":Z
    .restart local v8    # "resultCode":I
    .restart local v9    # "resultMessage":Ljava/lang/String;
    :cond_6
    :try_start_5
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const-string v11, "ANIMOJI_DOWNLOAD"

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iget-object v11, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v11, v11, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v12, v12, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v12}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "write into file error"

    invoke-static {v10, v11, v12, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 351
    .end local v7    # "isWrittenToDisk":Z
    .end local v8    # "resultCode":I
    .end local v9    # "resultMessage":Ljava/lang/String;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_7

    .line 353
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 357
    :goto_4
    const/4 v3, 0x0

    .line 359
    :cond_7
    if-eqz v6, :cond_8

    .line 360
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 363
    :cond_8
    iget-object v11, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-virtual {v11}, Lcom/android/camera/effect/download/DownLoaderManager;->executePostResultRunnable()V

    throw v10

    .line 331
    .restart local v8    # "resultCode":I
    .restart local v9    # "resultMessage":Ljava/lang/String;
    :cond_9
    :try_start_7
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const-string v11, "ANIMOJI_DOWNLOAD"

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 332
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iget-object v11, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v11, v11, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v12, v12, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v12}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v12

    const-string v13, "read data from network error"

    invoke-static {v10, v11, v12, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 335
    :cond_a
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 336
    invoke-static {v3}, Lcom/android/camera/effect/util/EffectUtil;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "errorMessage":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonEffectCloudError(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectClouldErrorInfo;

    move-result-object v2

    .line 339
    .local v2, "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    if-eqz v2, :cond_b

    .line 340
    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectClouldErrorInfo;->getError()Ljava/lang/String;

    move-result-object v9

    .line 342
    :cond_b
    const-string v10, "DownLoaderManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorMessage(downloadAnimojiFileRunnable) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",resultMessage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/effect/util/EffectLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    const-string v11, "ANIMOJI_DOWNLOAD"

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/camera/effect/download/DownLoaderManager;->sendBeautyDownEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    iget-object v10, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->this$0:Lcom/android/camera/effect/download/DownLoaderManager;

    iget-object v11, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v11, v11, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v11}, Lcom/android/camera/effect/util/EffectDataInfo;->getShelfId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/effect/download/DownLoaderManager$1;->val$itemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v12, v12, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v12}, Lcom/android/camera/effect/util/EffectDataInfo;->getResourceId()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/android/camera/effect/download/DownLoaderManager;->access$400(Lcom/android/camera/effect/download/DownLoaderManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 354
    .end local v2    # "effectClouldErrorInfo":Lcom/android/camera/effect/util/EffectClouldErrorInfo;
    .end local v4    # "errorMessage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 354
    .end local v8    # "resultCode":I
    .end local v9    # "resultMessage":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 355
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 354
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 355
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4
.end method
