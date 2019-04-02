.class public Lcom/android/camera/effect/util/EffectFileUtil;
.super Ljava/lang/Object;
.source "EffectFileUtil.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->sendEffectResultToServer()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->getEffectPreloadResourceVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->copyPreloadJsonFile()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->copyPreloadResourceFile()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->setEffectPreloadResourceVersion()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 14
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 242
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 243
    invoke-static {p1}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    :cond_0
    const/4 v6, 0x0

    .line 250
    .local v6, "outputStream":Ljava/io/OutputStream;
    const/16 v9, 0x1000

    :try_start_1
    new-array v1, v9, [B

    .line 252
    .local v1, "fileReader":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v9

    int-to-long v2, v9

    .line 253
    .local v2, "fileSize":J
    const-wide/16 v4, 0x0

    .line 255
    .local v4, "fileSizeDownloaded":J
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v7, "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 259
    .local v8, "read":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 267
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    const/4 v6, 0x0

    .line 269
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    const/4 v9, 0x1

    .line 273
    if-eqz p0, :cond_1

    .line 274
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 277
    :cond_1
    if-eqz v6, :cond_2

    .line 278
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 282
    .end local v1    # "fileReader":[B
    .end local v2    # "fileSize":J
    .end local v4    # "fileSizeDownloaded":J
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "read":I
    :cond_2
    :goto_1
    return v9

    .line 263
    .restart local v1    # "fileReader":[B
    .restart local v2    # "fileSize":J
    .restart local v4    # "fileSizeDownloaded":J
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :cond_3
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v7, v1, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    int-to-long v12, v8

    add-long/2addr v4, v12

    .line 265
    goto :goto_0

    .line 270
    .end local v1    # "fileReader":[B
    .end local v2    # "fileSize":J
    .end local v4    # "fileSizeDownloaded":J
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "read":I
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    if-eqz p0, :cond_4

    .line 274
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 277
    :cond_4
    if-eqz v6, :cond_5

    .line 278
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_5
    move v9, v10

    .line 271
    goto :goto_1

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz p0, :cond_6

    .line 274
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 277
    :cond_6
    if-eqz v6, :cond_7

    .line 278
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_7
    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 281
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move v9, v10

    .line 282
    goto :goto_1

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileReader":[B
    .restart local v2    # "fileSize":J
    .restart local v4    # "fileSizeDownloaded":J
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 270
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 288
    const/4 v2, 0x0

    .line 289
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 291
    .local v4, "outputStream":Ljava/io/OutputStream;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v7, v8

    .line 334
    :goto_0
    return v7

    .line 296
    :cond_1
    invoke-static {p1}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 297
    invoke-static {p1}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 305
    :cond_2
    const/16 v7, 0x1000

    :try_start_0
    new-array v1, v7, [B

    .line 307
    .local v1, "fileReader":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 312
    .local v6, "read":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 319
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 320
    const/4 v4, 0x0

    .line 321
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    const/4 v7, 0x1

    .line 325
    if-eqz v3, :cond_3

    .line 326
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 329
    :cond_3
    if-eqz v4, :cond_4

    .line 330
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    move-object v2, v3

    .line 321
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 316
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v5, v1, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 322
    .end local v6    # "read":I
    :catch_0
    move-exception v0

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 325
    .end local v1    # "fileReader":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_6

    .line 326
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 329
    :cond_6
    if-eqz v4, :cond_7

    .line 330
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_7
    move v7, v8

    .line 323
    goto :goto_0

    .line 325
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_8

    .line 326
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 329
    :cond_8
    if-eqz v4, :cond_9

    .line 330
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_9
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 333
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    move v7, v8

    .line 334
    goto :goto_0

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "read":I
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 325
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "read":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 322
    .end local v1    # "fileReader":[B
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "fileReader":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private static copyPreloadJsonFile()V
    .locals 5

    .prologue
    .line 107
    :try_start_0
    sget-object v2, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "preload_sticker_data.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 108
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "preload_sticker_data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectFileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    :try_start_1
    sget-object v2, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "preload_animoji_data.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "preload_animoji_data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectFileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "merge_sticker_data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "preload_sticker_data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "merge_sticker_data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectFileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "merge_animoji_data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "preload_animoji_data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "merge_animoji_data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectFileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    :goto_3
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "preload_sticker_data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "merge_sticker_data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectFileUtil;->mergePreloadJsonFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 140
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "preload_animoji_data.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "merge_animoji_data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/util/EffectFileUtil;->mergePreloadJsonFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static copyPreloadResourceFile()V
    .locals 8

    .prologue
    .line 149
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "preload_sticker_data.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteDefaultResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v5, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "sticker"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "fileLists":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 154
    sget-object v5, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sticker"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 155
    .local v3, "input":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/effect/util/EffectFileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 164
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "preload_sticker_data.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteDefaultResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v5, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "theme"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 168
    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 169
    sget-object v5, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 170
    .restart local v3    # "input":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/effect/util/EffectFileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v4

    .line 171
    .local v4, "success":Z
    if-eqz v4, :cond_1

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/ZipUtils;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "success":Z
    :catch_1
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "preload_animoji_data.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/camera/effect/util/EffectFileUtil;->deleteDefaultResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v5, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "animoji"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 186
    const/4 v2, 0x0

    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 187
    sget-object v5, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animoji"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 188
    .restart local v3    # "input":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/effect/util/EffectFileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 190
    .end local v3    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    return-void
.end method

.method private static createDefaultDir()V
    .locals 4

    .prologue
    .line 79
    sget-object v1, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectFileUtil;->getDiskCacheDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 85
    :cond_0
    sget-object v1, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sticker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectFileUtil;->getDiskCacheDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheDir":Ljava/io/File;
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .restart local v0    # "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_1
    sget-object v1, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectFileUtil;->getDiskCacheDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheDir":Ljava/io/File;
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v0    # "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 97
    :cond_2
    sget-object v1, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animoji"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/util/EffectFileUtil;->getDiskCacheDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheDir":Ljava/io/File;
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v0    # "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_3
    return-void
.end method

.method public static delAllFile(Ljava/lang/String;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "flag":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v1

    .line 370
    .end local v1    # "flag":Z
    .local v2, "flag":I
    :goto_0
    return v2

    .line 350
    .end local v2    # "flag":I
    .restart local v1    # "flag":Z
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v1

    .line 351
    .restart local v2    # "flag":I
    goto :goto_0

    .line 353
    .end local v2    # "flag":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, "tempList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 355
    .local v4, "temp":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 356
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 357
    new-instance v4, Ljava/io/File;

    .end local v4    # "temp":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v4    # "temp":Ljava/io/File;
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 362
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 364
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/effect/util/EffectFileUtil;->delAllFile(Ljava/lang/String;)Z

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/effect/util/EffectFileUtil;->delFolder(Ljava/lang/String;)Z

    .line 367
    const/4 v1, 0x1

    .line 355
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 359
    :cond_4
    new-instance v4, Ljava/io/File;

    .end local v4    # "temp":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "temp":Ljava/io/File;
    goto :goto_2

    :cond_5
    move v2, v1

    .line 370
    .restart local v2    # "flag":I
    goto/16 :goto_0
.end method

.method public static delFolder(Ljava/lang/String;)Z
    .locals 5
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 381
    :try_start_0
    invoke-static {p0}, Lcom/android/camera/effect/util/EffectFileUtil;->delAllFile(Ljava/lang/String;)Z

    move-result v2

    .line 382
    .local v2, "isDeleteAllFile":Z
    move-object v1, p0

    .line 383
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v4, "myFilePath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 392
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "isDeleteAllFile":Z
    .end local v4    # "myFilePath":Ljava/io/File;
    :goto_0
    return v3

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static deleteDefaultResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "preloadJsonFilePath"    # Ljava/lang/String;
    .param p1, "downloadPath"    # Ljava/lang/String;

    .prologue
    .line 218
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 226
    :cond_0
    return-void

    .line 221
    :cond_1
    invoke-static {p0}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 222
    .local v2, "preloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/util/EffectDataInfo;

    .line 223
    .local v0, "info":Lcom/android/camera/effect/util/EffectDataInfo;
    invoke-virtual {v0}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/effect/util/EffectFileUtil;->delFolder(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 402
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 406
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDiskCacheDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subFileName"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/camera/effect/util/EffectFileUtil;->getDiskCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDiskCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    const-string v0, "beauty"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getEffectPreloadResourceVersion()I
    .locals 3

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, "version":I
    sget-object v2, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    .local v0, "defaultPrefs":Landroid/content/SharedPreferences;
    const-string v2, "effect_preload_resource_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 487
    return v1
.end method

.method public static initFiles(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sput-object p0, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    .line 49
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/util/EffectFileUtil;->createDefaultDir()V

    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/effect/util/EffectFileUtil$1;

    invoke-direct {v1}, Lcom/android/camera/effect/util/EffectFileUtil$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 234
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static mergePreloadJsonFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "preloadJsonFilePath"    # Ljava/lang/String;
    .param p1, "mergeJsonFilePath"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p0}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 197
    .local v5, "preloadInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    invoke-static {p1}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 198
    .local v4, "mergeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/util/EffectDataInfo;

    .line 199
    .local v2, "info":Lcom/android/camera/effect/util/EffectDataInfo;
    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectDataInfo;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "from":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v7, "preload"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 201
    :cond_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    .end local v1    # "from":Ljava/lang/String;
    .end local v2    # "info":Lcom/android/camera/effect/util/EffectDataInfo;
    :cond_2
    invoke-static {v5}, Lcom/android/camera/effect/util/EffectGsonTool;->toJsonArrayEffectDI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "jsonString":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 215
    :goto_1
    return-void

    .line 210
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 214
    :cond_4
    invoke-static {v3, p1}, Lcom/android/camera/effect/util/EffectFileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 427
    const/4 v2, 0x0

    .line 429
    .local v2, "inputStream":Ljava/io/InputStream;
    if-nez p0, :cond_0

    .line 451
    :goto_0
    return-object v6

    .line 433
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 435
    .local v5, "out":Ljava/lang/StringBuffer;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 436
    .local v0, "b":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "n":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 437
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 440
    .end local v0    # "b":[B
    .end local v4    # "n":I
    .end local v5    # "out":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 441
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 453
    const/4 v2, 0x0

    .line 442
    goto :goto_0

    .line 439
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "b":[B
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "n":I
    .restart local v5    # "out":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 448
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 453
    const/4 v2, 0x0

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    move-object v6, v7

    .line 439
    goto :goto_0

    .line 449
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 451
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 449
    .end local v0    # "b":[B
    .end local v4    # "n":I
    .end local v5    # "out":Ljava/lang/StringBuffer;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 444
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 448
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 453
    const/4 v2, 0x0

    .line 445
    goto :goto_0

    .line 449
    :catch_4
    move-exception v1

    .line 450
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 447
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 448
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 453
    const/4 v2, 0x0

    throw v7

    .line 449
    :catch_5
    move-exception v1

    .line 450
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 447
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 443
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 440
    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "oldname"    # Ljava/lang/String;
    .param p1, "newname"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, "oldfile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "newfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    .end local v0    # "newfile":Ljava/io/File;
    .end local v1    # "oldfile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 416
    .restart local v0    # "newfile":Ljava/io/File;
    .restart local v1    # "oldfile":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method private static sendEffectResultToServer()V
    .locals 2

    .prologue
    .line 67
    sget-object v1, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :try_start_0
    sget-object v1, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/effect/download/DownLoaderManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/effect/download/DownLoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/download/DownLoaderManager;->postRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setEffectPreloadResourceVersion()V
    .locals 4

    .prologue
    .line 491
    sget-object v2, Lcom/android/camera/effect/util/EffectFileUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 492
    .local v0, "defaultPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 493
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "effect_preload_resource_version_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    return-void
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 458
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v3, "saveFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 461
    .local v1, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .local v2, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 464
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    const/4 v4, 0x1

    .line 472
    if-eqz v2, :cond_0

    .line 474
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 480
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    :goto_1
    return v4

    .line 475
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 466
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 467
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 472
    if-eqz v2, :cond_3

    .line 474
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v2

    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 475
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 476
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 477
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 469
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 470
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 472
    if-eqz v1, :cond_1

    .line 474
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 475
    :catch_4
    move-exception v0

    .line 476
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_2

    .line 474
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 477
    :cond_2
    :goto_5
    throw v4

    .line 475
    :catch_5
    move-exception v0

    .line 476
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 469
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :cond_3
    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
