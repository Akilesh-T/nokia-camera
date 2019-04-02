.class public Lcom/android/camera/MediaSaverImpl;
.super Ljava/lang/Object;
.source "MediaSaverImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;,
        Lcom/android/camera/MediaSaverImpl$DepthSaveTask;,
        Lcom/android/camera/MediaSaverImpl$DualSightVideoSaveTask;,
        Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;,
        Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;,
        Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;,
        Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;,
        Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;,
        Lcom/android/camera/MediaSaverImpl$MpoSaveTask;,
        Lcom/android/camera/MediaSaverImpl$VideoSaveTask;,
        Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;,
        Lcom/android/camera/MediaSaverImpl$ImageSaveTask;,
        Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;
    }
.end annotation


# static fields
.field private static final SAVE_TASK_MEMORY_LIMIT:I = 0x1e00000

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final VIDEO_BASE_URI:Ljava/lang/String; = "content://media/external/video/media"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mMemoryUse:J

.field private mQueueListener:Lcom/android/camera/app/MediaSaver$QueueListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MediaSaverImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 67
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/MediaSaverImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/MediaSaverImpl;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/camera/MediaSaverImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MediaSaverImpl;
    .param p1, "x1"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/camera/MediaSaverImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/MediaSaverImpl;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/MediaSaverImpl;->onQueueAvailable()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/MediaSaverImpl;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/MediaSaverImpl;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private onQueueAvailable()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl;->mQueueListener:Lcom/android/camera/app/MediaSaver$QueueListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl;->mQueueListener:Lcom/android/camera/app/MediaSaver$QueueListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/MediaSaver$QueueListener;->onQueueStatus(Z)V

    .line 293
    :cond_0
    return-void
.end method

.method private onQueueFull()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl;->mQueueListener:Lcom/android/camera/app/MediaSaver$QueueListener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/camera/MediaSaverImpl;->mQueueListener:Lcom/android/camera/app/MediaSaver$QueueListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/MediaSaver$QueueListener;->onQueueStatus(Z)V

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public addBurstImage([BLjava/lang/String;Ljava/lang/String;Landroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;J)V
    .locals 18
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "loc"    # Landroid/location/Location;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "orientation"    # I
    .param p8, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p9, "l"    # Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;
    .param p10, "date"    # J

    .prologue
    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    sget-object v2, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot add image when the queue is full : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v3, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;

    if-nez p4, :cond_2

    const/4 v8, 0x0

    :goto_1
    const-string v12, "image/jpeg"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/MediaSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v13, p8

    move-object/from16 v15, p9

    move-wide/from16 v16, p10

    invoke-direct/range {v3 .. v17}, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;-><init>(Lcom/android/camera/MediaSaverImpl;[BLjava/lang/String;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;Lcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;J)V

    .line 88
    .local v3, "t":Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    move-object/from16 v0, p1

    array-length v2, v0

    int-to-long v6, v2

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->onQueueFull()V

    .line 92
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 86
    .end local v3    # "t":Lcom/android/camera/MediaSaverImpl$BurstImageSaveTask;
    :cond_2
    new-instance v8, Landroid/location/Location;

    move-object/from16 v0, p4

    invoke-direct {v8, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1
.end method

.method public addDualSightImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p10, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .param p11, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    sget-object v3, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v2, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;

    if-nez p5, :cond_2

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/MediaSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p11

    move-object/from16 v13, p9

    move-object/from16 v15, p10

    invoke-direct/range {v2 .. v15}, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;-><init>(Lcom/android/camera/MediaSaverImpl;[BLjava/lang/String;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 267
    .local v2, "t":Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    move-object/from16 v0, p1

    array-length v3, v0

    int-to-long v6, v3

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->onQueueFull()V

    .line 271
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 263
    .end local v2    # "t":Lcom/android/camera/MediaSaverImpl$DualSightImageSaveTask;
    :cond_2
    new-instance v8, Landroid/location/Location;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1
.end method

.method public addDualSightVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 165
    new-instance v0, Lcom/android/camera/MediaSaverImpl$DualSightVideoSaveTask;

    iget-object v5, p0, Lcom/android/camera/MediaSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaSaverImpl$DualSightVideoSaveTask;-><init>(Lcom/android/camera/MediaSaverImpl;Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/MediaSaverImpl$DualSightVideoSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    return-void
.end method

.method public addGdepthImage(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 19
    .param p1, "info"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p10, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    sget-object v2, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v3, Lcom/android/camera/MediaSaverImpl$DepthSaveTask;

    const-string v15, "image/jpeg"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move-wide/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v3 .. v15}, Lcom/android/camera/MediaSaverImpl$DepthSaveTask;-><init>(Lcom/android/camera/MediaSaverImpl;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Landroid/location/Location;JIIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    .line 230
    .local v3, "t":Lcom/android/camera/MediaSaverImpl$DepthSaveTask;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_2
    add-int/2addr v4, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_3
    add-int/2addr v2, v4

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 231
    .local v16, "size":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->onQueueFull()V

    .line 235
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/camera/MediaSaverImpl$DepthSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 230
    .end local v16    # "size":J
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    array-length v2, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v4, v4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    array-length v2, v2

    goto :goto_3
.end method

.method public addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p10, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 116
    const-string v12, "image/jpeg"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lcom/android/camera/MediaSaverImpl;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p10, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .param p11, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    sget-object v3, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v2, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;

    if-nez p5, :cond_2

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/MediaSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p11

    move-object/from16 v13, p9

    move-object/from16 v15, p10

    invoke-direct/range {v2 .. v15}, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;-><init>(Lcom/android/camera/MediaSaverImpl;[BLjava/lang/String;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 132
    .local v2, "t":Lcom/android/camera/MediaSaverImpl$ImageSaveTask;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    move-object/from16 v0, p1

    array-length v3, v0

    int-to-long v6, v3

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->onQueueFull()V

    .line 136
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/camera/MediaSaverImpl$ImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 128
    .end local v2    # "t":Lcom/android/camera/MediaSaverImpl$ImageSaveTask;
    :cond_2
    new-instance v8, Landroid/location/Location;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1
.end method

.method public addImage([BLjava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 144
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v12, "image/jpeg"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v12}, Lcom/android/camera/MediaSaverImpl;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public addImage([BLjava/lang/String;Landroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v12, "image/jpeg"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v12}, Lcom/android/camera/MediaSaverImpl;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public addMpoImage(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 19
    .param p1, "info"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "orientation"    # I
    .param p9, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p10, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    sget-object v2, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v3, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;

    const-string v14, "image/jpeg"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move-wide/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p10

    invoke-direct/range {v3 .. v14}, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;-><init>(Lcom/android/camera/MediaSaverImpl;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Landroid/location/Location;JIIILcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    .line 196
    .local v3, "t":Lcom/android/camera/MediaSaverImpl$MpoSaveTask;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_2
    add-int/2addr v4, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_3
    add-int/2addr v2, v4

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 197
    .local v16, "size":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->onQueueFull()V

    .line 201
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/camera/MediaSaverImpl$MpoSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 196
    .end local v16    # "size":J
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    array-length v2, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v4, v4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    array-length v2, v2

    goto :goto_3
.end method

.method public addRawImage([BLjava/lang/String;JLandroid/location/Location;IILcom/android/camera/app/MediaSaver$OnRawDataSavedListener;)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "loc"    # Landroid/location/Location;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "l"    # Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    sget-object v3, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Cannot add raw image when the queue is full"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v2, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;

    if-nez p5, :cond_2

    const/4 v8, 0x0

    :goto_1
    iget-object v11, p0, Lcom/android/camera/MediaSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;-><init>(Lcom/android/camera/MediaSaverImpl;[BLjava/lang/String;JLandroid/location/Location;IILandroid/content/ContentResolver;Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;)V

    .line 179
    .local v2, "t":Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;
    iget-wide v4, p0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    array-length v3, p1

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 180
    invoke-virtual {p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/android/camera/MediaSaverImpl;->onQueueFull()V

    .line 183
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 175
    .end local v2    # "t":Lcom/android/camera/MediaSaverImpl$RawImageSaveTask;
    :cond_2
    new-instance v8, Landroid/location/Location;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_1
.end method

.method public addVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "l"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 158
    new-instance v0, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;

    iget-object v5, p0, Lcom/android/camera/MediaSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;-><init>(Lcom/android/camera/MediaSaverImpl;Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/MediaSaverImpl$VideoSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    return-void
.end method

.method public bulkInsertToMediaStore([Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 2
    .param p1, "values"    # [Landroid/content/ContentValues;
    .param p2, "listener"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 691
    new-instance v0, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;-><init>(Lcom/android/camera/MediaSaverImpl;[Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 692
    .local v0, "task":Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/MediaSaverImpl$BulkInsertToMediaSotreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 693
    return-void
.end method

.method public deleteImageFromMediaStore(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 697
    sget-object v1, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteImageFromMediaStore : uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 698
    if-nez p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    invoke-static {p1}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 700
    :cond_2
    invoke-static {p1}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 701
    sget-object v1, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentUri for sessionUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 702
    if-eqz p1, :cond_0

    .line 705
    :cond_3
    move-object v0, p1

    .line 707
    .local v0, "deleteUri":Landroid/net/Uri;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/camera/MediaSaverImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/MediaSaverImpl$1;-><init>(Lcom/android/camera/MediaSaverImpl;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertToMediaStore(Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "listener"    # Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .prologue
    .line 685
    new-instance v0, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;-><init>(Lcom/android/camera/MediaSaverImpl;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 686
    .local v0, "task":Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/MediaSaverImpl$InsertToMediaSotreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 687
    return-void
.end method

.method public isQueueEmpty()Z
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQueueFull()Z
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    const-wide/32 v2, 0x1e00000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQueueListener(Lcom/android/camera/app/MediaSaver$QueueListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/camera/app/MediaSaver$QueueListener;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/camera/MediaSaverImpl;->mQueueListener:Lcom/android/camera/app/MediaSaver$QueueListener;

    .line 277
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/app/MediaSaver$QueueListener;->onQueueStatus(Z)V

    goto :goto_0
.end method

.method public updateGdepthImage(Landroid/net/Uri;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;)V
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "info"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    sget-object v3, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v2, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;

    const-string v14, "image/jpeg"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-wide/from16 v8, p4

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v2 .. v14}, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;-><init>(Lcom/android/camera/MediaSaverImpl;Landroid/net/Uri;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Landroid/location/Location;JIIILcom/android/camera/exif/ExifInterface;Ljava/lang/String;)V

    .line 247
    .local v2, "t":Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_2
    add-int/2addr v4, v3

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    add-int/2addr v3, v4

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 248
    .local v16, "size":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->onQueueFull()V

    .line 252
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/camera/MediaSaverImpl$DepthUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 247
    .end local v16    # "size":J
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    array-length v3, v3

    goto :goto_1

    :cond_3
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v4, v4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    array-length v3, v3

    goto :goto_3
.end method

.method public updateImage(Landroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;)V
    .locals 19
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p8, "jpeg"    # [B
    .param p9, "width"    # I
    .param p10, "height"    # I
    .param p11, "mimeType"    # Ljava/lang/String;
    .param p12, "listener"    # Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update image when the queue is full : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v3, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/MediaSaverImpl;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v3 .. v17}, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;-><init>(Lcom/android/camera/MediaSaverImpl;Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;)V

    .line 106
    .local v3, "t":Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    move-object/from16 v0, p8

    array-length v2, v0

    int-to-long v6, v2

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->onQueueFull()V

    .line 110
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/camera/MediaSaverImpl$ImageUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateMpoImage(Landroid/net/Uri;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;)V
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "info"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    sget-object v3, Lcom/android/camera/MediaSaverImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Cannot add image when the queue is full"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v2, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;

    const-string v13, "image/jpeg"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-wide/from16 v8, p4

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v2 .. v13}, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;-><init>(Lcom/android/camera/MediaSaverImpl;Landroid/net/Uri;Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;Landroid/location/Location;JIIILjava/lang/String;)V

    .line 213
    .local v2, "t":Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_2
    add-int/2addr v4, v3

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    add-int/2addr v3, v4

    int-to-long v14, v3

    .line 214
    .local v14, "size":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/camera/MediaSaverImpl;->mMemoryUse:J

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->isQueueFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/MediaSaverImpl;->onQueueFull()V

    .line 218
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/camera/MediaSaverImpl$MpoUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 213
    .end local v14    # "size":J
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    array-length v3, v3

    goto :goto_1

    :cond_3
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/camera/mpo/Bokeh_Info;->mBufferData:[B

    array-length v4, v4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    array-length v3, v3

    goto :goto_3
.end method
