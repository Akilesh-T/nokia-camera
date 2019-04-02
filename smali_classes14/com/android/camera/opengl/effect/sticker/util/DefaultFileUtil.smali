.class public Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;
.super Ljava/lang/Object;
.source "DefaultFileUtil.java"


# static fields
.field public static final ZIP:Ljava/lang/String; = ".zip"

.field public static mStickerPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 14
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 54
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 55
    invoke-static {p1}, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :cond_0
    const/4 v6, 0x0

    .line 62
    .local v6, "outputStream":Ljava/io/OutputStream;
    const/16 v9, 0x1000

    :try_start_1
    new-array v1, v9, [B

    .line 64
    .local v1, "fileReader":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v9

    int-to-long v2, v9

    .line 65
    .local v2, "fileSize":J
    const-wide/16 v4, 0x0

    .line 67
    .local v4, "fileSizeDownloaded":J
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v7, "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 71
    .local v8, "read":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 79
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    const/4 v6, 0x0

    .line 81
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    const/4 v9, 0x1

    .line 85
    if-eqz p0, :cond_1

    .line 86
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_1
    if-eqz v6, :cond_2

    .line 90
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 94
    .end local v1    # "fileReader":[B
    .end local v2    # "fileSize":J
    .end local v4    # "fileSizeDownloaded":J
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "read":I
    :cond_2
    :goto_1
    return v9

    .line 75
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

    .line 76
    int-to-long v12, v8

    add-long/2addr v4, v12

    .line 77
    goto :goto_0

    .line 82
    .end local v1    # "fileReader":[B
    .end local v2    # "fileSize":J
    .end local v4    # "fileSizeDownloaded":J
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "read":I
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    if-eqz p0, :cond_4

    .line 86
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_4
    if-eqz v6, :cond_5

    .line 90
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_5
    move v9, v10

    .line 83
    goto :goto_1

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz p0, :cond_6

    .line 86
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_6
    if-eqz v6, :cond_7

    .line 90
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_7
    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 93
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move v9, v10

    .line 94
    goto :goto_1

    .line 85
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

    .line 82
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static copyPreloadResourceFile(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v5, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->mStickerPath:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sticker"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0001"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->getDiskCacheDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->mStickerPath:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->mStickerPath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 28
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "sticker"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "fileLists":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sticker"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 31
    .local v4, "input":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->mStickerPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 33
    .end local v2    # "fileLists":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 113
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
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->getDiskCachePath(Landroid/content/Context;)Ljava/lang/String;

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
    .line 43
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const-string v0, "beauty"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 104
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
