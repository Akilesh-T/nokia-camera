.class public Lcom/android/camera/session/PlaceholderManager;
.super Ljava/lang/Object;
.source "PlaceholderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/session/PlaceholderManager$Placeholder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PlaceholderMgr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/PlaceholderManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private createSessionFromUri(Landroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 273
    iget-object v1, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 279
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "datetaken"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 283
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 285
    const-string v1, "datetaken"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 286
    .local v7, "dateIndex":I
    const-string v1, "_display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 288
    .local v11, "nameIndex":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 289
    .local v8, "date":J
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 291
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".jpg"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 298
    :cond_0
    if-eqz v6, :cond_1

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_1
    new-instance v1, Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-direct {v1, v10, p1, v8, v9}, Lcom/android/camera/session/PlaceholderManager$Placeholder;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    .end local v7    # "dateIndex":I
    .end local v8    # "date":J
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "nameIndex":I
    :goto_0
    return-object v1

    .line 298
    :cond_2
    if-eqz v6, :cond_3

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v1, v12

    .line 295
    goto :goto_0

    .line 298
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method


# virtual methods
.method public convertToPlaceholder(Landroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/camera/session/PlaceholderManager;->createSessionFromUri(Landroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    return-object v0
.end method

.method public finishDualSightPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p1, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "orientation"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "jpeg"    # [B
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/android/camera/Storage;->updateDualImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    .local v0, "resultUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/util/BokehProviderUtil;->updateImageToBokehEditor(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 203
    :cond_0
    return-object v0
.end method

.method public finishDualSightVideoPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 3
    .param p1, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "needNotifyNewVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/android/camera/Storage;->updateVideo(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    .local v0, "resultUri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/camera/util/CameraUtil;->broadcastNewVideo(Landroid/content/Context;Landroid/net/Uri;)V

    .line 219
    :cond_0
    if-eqz v0, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/util/BokehProviderUtil;->updateImageToBokehEditor(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 223
    :cond_1
    return-object v0
.end method

.method public finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/mpo/Bokeh_Info;IILjava/lang/String;)Landroid/net/Uri;
    .locals 15
    .param p1, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "orientation"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "data"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "resultUri":Landroid/net/Uri;
    move-object/from16 v0, p5

    iget-boolean v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    if-eqz v3, :cond_0

    .line 167
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v3 .. v14}, Lcom/android/camera/Storage;->updateMpoImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/mpo/Bokeh_Info;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 174
    :goto_0
    iget-object v3, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 175
    return-object v2

    .line 170
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v3 .. v14}, Lcom/android/camera/Storage;->updateDepthImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/mpo/Bokeh_Info;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 16
    .param p1, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "orientation"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "jpeg"    # [B
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v3 .. v14}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 154
    .local v15, "resultUri":Landroid/net/Uri;
    move-object v2, v15

    .line 155
    .local v2, "contentUri":Landroid/net/Uri;
    invoke-static {v15}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-static {v15}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 158
    :cond_0
    sget-object v3, Lcom/android/camera/session/PlaceholderManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Photos] finishPlaceholder - mimeType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resultUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 160
    return-object v15
.end method

.method public finishPlaceholderBokeh(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p1, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "orientation"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "jpeg"    # [B
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/android/camera/Storage;->updateBokehImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 193
    .local v0, "resultUri":Landroid/net/Uri;
    return-object v0
.end method

.method public finishPlaceholderMicroVideo(Ljava/lang/String;Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 16
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p6, "jpeg"    # [B
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    invoke-static/range {v2 .. v14}, Lcom/android/camera/Storage;->updateImageMicroVideo(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 184
    .local v15, "resultUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 185
    return-object v15
.end method

.method public finishVideoPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Ljava/lang/String;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 3
    .param p1, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "needNotifyNewVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/android/camera/Storage;->updateVideo(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 208
    .local v0, "resultUri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/camera/util/CameraUtil;->broadcastNewVideo(Landroid/content/Context;Landroid/net/Uri;)V

    .line 211
    :cond_0
    return-object v0
.end method

.method public getPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)Lcom/google/common/base/Optional;
    .locals 1
    .param p1, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/session/PlaceholderManager$Placeholder;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/camera/Storage;->getPlaceholderForSession(Landroid/net/Uri;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public insertEmptyCaptureIntentPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;JLandroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "size"    # Lcom/android/camera/util/Size;
    .param p3, "timestamp"    # J
    .param p5, "externalUri"    # Landroid/net/Uri;

    .prologue
    .line 85
    invoke-static {p2, p5}, Lcom/android/camera/Storage;->addEmptyCaptureIntentPlaceholder(Lcom/android/camera/util/Size;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/android/camera/session/PlaceholderManager$Placeholder;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    return-object v1
.end method

.method public insertEmptyPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "size"    # Lcom/android/camera/util/Size;
    .param p3, "timestamp"    # J

    .prologue
    .line 75
    invoke-static {p2}, Lcom/android/camera/Storage;->addEmptyPlaceholder(Lcom/android/camera/util/Size;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/android/camera/session/PlaceholderManager$Placeholder;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    return-object v1
.end method

.method public insertEmptyVideoPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "size"    # Lcom/android/camera/util/Size;
    .param p3, "timestamp"    # J

    .prologue
    .line 80
    invoke-static {p2}, Lcom/android/camera/Storage;->addEmptyVideoPlaceholder(Lcom/android/camera/util/Size;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/android/camera/session/PlaceholderManager$Placeholder;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    return-object v1
.end method

.method public insertPlaceholder(Ljava/lang/String;Landroid/graphics/Bitmap;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "placeholder"    # Landroid/graphics/Bitmap;
    .param p3, "timestamp"    # J

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null argument passed to insertPlaceholder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gtz v1, :cond_3

    .line 104
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Image had bad height/width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_3
    invoke-static {p2}, Lcom/android/camera/Storage;->addPlaceholder(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 108
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_4

    .line 109
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    :cond_4
    new-instance v1, Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/android/camera/session/PlaceholderManager$Placeholder;-><init>(Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0
.end method

.method public insertPlaceholder(Ljava/lang/String;[BJ)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "placeholder"    # [B
    .param p3, "timestamp"    # J

    .prologue
    .line 115
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 116
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null argument passed to insertPlaceholder"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p2, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/camera/session/PlaceholderManager;->insertPlaceholder(Ljava/lang/String;Landroid/graphics/Bitmap;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v2

    return-object v2
.end method

.method public removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V
    .locals 1
    .param p1, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .prologue
    .line 263
    iget-object v0, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/camera/Storage;->removePlaceholder(Landroid/net/Uri;)V

    .line 264
    return-void
.end method

.method public replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "session"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .param p2, "placeholder"    # Landroid/graphics/Bitmap;

    .prologue
    .line 243
    iget-object v0, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/android/camera/Storage;->replacePlaceholder(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 244
    iget-object v0, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 245
    return-void
.end method

.method public updatePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;
    .locals 15
    .param p1, "placeholder"    # Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "orientation"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "jpeg"    # [B
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->time:J

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v3 .. v14}, Lcom/android/camera/Storage;->updateImage(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 231
    .local v2, "resultUri":Landroid/net/Uri;
    sget-object v3, Lcom/android/camera/session/PlaceholderManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Photos] updatePlaceholder - mimeType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resultUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/android/camera/session/PlaceholderManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/camera/util/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 233
    return-object v2
.end method
