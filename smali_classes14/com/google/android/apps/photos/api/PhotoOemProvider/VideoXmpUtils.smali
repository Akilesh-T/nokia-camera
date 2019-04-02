.class public Lcom/google/android/apps/photos/api/PhotoOemProvider/VideoXmpUtils;
.super Ljava/lang/Object;
.source "VideoXmpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoXmpUtils"

.field private static final XMP_NAMESPACE_CAMERA:Ljava/lang/String; = "http://ns.google.com/photos/1.0/camera/"

.field public static final XMP_SPECIAL_TYPE_KEY:Ljava/lang/String; = "SpecialTypeID"

.field public static final XMP_SPECIAL_TYPE_LIVING_IMAGE_VIDEO:Ljava/lang/String; = "LIVING_IMAGE_TYPE"

.field public static final XMP_SPECIAL_TYPE_PARALLAX_VIDEO:Ljava/lang/String; = "PARALLAX_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMP4LastMetaData(Ljava/lang/String;)[B
    .locals 12
    .param p0, "mp4FilePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 69
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v5, "videoFile":Ljava/io/File;
    const-string v8, "VideoXmpUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMP4LastMetaData: mp4 File Path path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "content":[B
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 76
    const-string v8, "VideoXmpUtils"

    const-string v9, "getMP4LastMetaData: videoFile is not exist."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-object v7

    .line 80
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_1

    .line 81
    const-string v8, "VideoXmpUtils"

    const-string v9, "getMP4LastMetaData: can\'t read videoFile."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    :try_start_0
    new-instance v3, Lcom/coremedia/iso/IsoFile;

    invoke-direct {v3, p0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "isoFile":Lcom/coremedia/iso/IsoFile;
    const-string v7, "VideoXmpUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isoFile.getSize() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/coremedia/iso/IsoFile;->getSize()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isoFile.getBoxes().size(); "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v3}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 90
    .local v4, "size":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    .line 92
    .local v6, "wbc":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual {v3}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v7, v6}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 95
    invoke-interface {v6}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v4    # "size":I
    .end local v6    # "wbc":Ljava/nio/channels/WritableByteChannel;
    :goto_1
    move-object v7, v1

    .line 99
    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "VideoXmpUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMP4LastMetaData: IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getMp4VideoFilePath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 117
    const/4 v9, 0x0

    .line 119
    .local v9, "filePath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 121
    .local v7, "cursor":Landroid/database/Cursor;
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 122
    .local v6, "baseUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, "videoUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v4

    const-string v0, "mime_type"

    aput-object v0, v2, v5

    .line 126
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 128
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 130
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 132
    .local v10, "mimeType":Ljava/lang/String;
    const-string v0, "video/mp4"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 139
    if-eqz v7, :cond_0

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v11

    .line 144
    .end local v10    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 139
    :cond_1
    if-eqz v7, :cond_2

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 144
    goto :goto_0

    .line 136
    :catch_0
    move-exception v8

    .line 137
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "VideoXmpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoFilePath: EXCEPTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    if-eqz v7, :cond_2

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 139
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getVideoXmpSpecialType(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "mp4FilePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 34
    const-string v7, "<?xpacket begin"

    .line 36
    .local v7, "xmpStartTag":Ljava/lang/String;
    const-string v8, "VideoXmpUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVideoXmpSpecialType: path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/VideoXmpUtils;->getMP4LastMetaData(Ljava/lang/String;)[B

    move-result-object v2

    .line 40
    .local v2, "lastBoxByteArray":[B
    if-nez v2, :cond_1

    .line 41
    const-string v8, "VideoXmpUtils"

    const-string v9, "getVideoXmpSpecialType: can\'t get mp4 metadata."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    :goto_0
    return-object v3

    .line 45
    :cond_1
    const-string v8, "<?xpacket begin"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v2, v8}, Lcom/google/android/apps/photos/api/PhotoOemProvider/VideoXmpUtils;->indexOf([B[B)I

    move-result v4

    .line 46
    .local v4, "startTagIndex":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 47
    array-length v8, v2

    invoke-static {v2, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 48
    .local v5, "xmpDataByteArray":[B
    const/4 v6, 0x0

    .line 51
    .local v6, "xmpMetaData":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    invoke-static {v5}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object v6

    .line 53
    if-eqz v6, :cond_0

    .line 54
    const-string v8, "http://ns.google.com/photos/1.0/camera/"

    const-string v9, "SpecialTypeID"

    invoke-interface {v6, v8, v9}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 56
    .local v0, "doesPropertyExist":Z
    if-eqz v0, :cond_0

    .line 57
    const-string v8, "http://ns.google.com/photos/1.0/camera/"

    const-string v9, "SpecialTypeID"

    invoke-interface {v6, v8, v9}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 58
    .local v3, "specialType":Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v0    # "doesPropertyExist":Z
    .end local v3    # "specialType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Lcom/adobe/xmp/XMPException;
    const-string v8, "VideoXmpUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read: XMPException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static indexOf([B[B)I
    .locals 5
    .param p0, "outerArray"    # [B
    .param p1, "smallerArray"    # [B

    .prologue
    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    array-length v4, p1

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_3

    .line 104
    const/4 v0, 0x1

    .line 105
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 106
    add-int v3, v1, v2

    aget-byte v3, p0, v3

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 111
    :cond_0
    if-eqz v0, :cond_2

    .line 113
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "j":I
    :goto_2
    return v1

    .line 105
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "found":Z
    .end local v2    # "j":I
    :cond_3
    const/4 v1, -0x1

    goto :goto_2
.end method
