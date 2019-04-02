.class public Lcom/android/camera/data/VideoDataFactory;
.super Ljava/lang/Object;
.source "VideoDataFactory.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UNKNOWN_SIZE:Lcom/android/camera/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 29
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoDataFact"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/VideoDataFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 33
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v2, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/data/VideoDataFactory;->UNKNOWN_SIZE:Lcom/android/camera/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItemData;
    .locals 32
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 36
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 37
    .local v3, "id":J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "title":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "mimeType":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 40
    .local v18, "creationDateInMilliSeconds":J
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 41
    .local v22, "lastModifiedDateInSeconds":J
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v18

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 42
    .local v7, "creationDate":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    const-wide/16 v30, 0x3e8

    mul-long v30, v30, v22

    move-wide/from16 v0, v30

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 44
    .local v8, "lastModifiedDate":Ljava/util/Date;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, "filePath":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 46
    .local v28, "width":I
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 53
    .local v20, "height":I
    if-eqz v28, :cond_0

    if-nez v20, :cond_2

    .line 54
    :cond_0
    sget-object v2, Lcom/android/camera/data/VideoDataFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "failed to retrieve width and height from the media store, defaulting  to camera profile"

    invoke-static {v2, v14}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v21

    .line 57
    .local v21, "profile":Landroid/media/CamcorderProfile;
    if-eqz v21, :cond_1

    .line 58
    new-instance v11, Lcom/android/camera/util/Size;

    move-object/from16 v0, v21

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move-object/from16 v0, v21

    iget v14, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v11, v2, v14}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 67
    .end local v21    # "profile":Landroid/media/CamcorderProfile;
    .local v11, "dimensions":Lcom/android/camera/util/Size;
    :goto_0
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 68
    .local v12, "sizeInBytes":J
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    .line 69
    .local v24, "latitude":D
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v26

    .line 70
    .local v26, "longitude":D
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 71
    .local v16, "videoDurationMillis":J
    invoke-static/range {v24 .. v27}, Lcom/android/camera/data/Location;->from(DD)Lcom/android/camera/data/Location;

    move-result-object v15

    .line 73
    .local v15, "location":Lcom/android/camera/data/Location;
    sget-object v2, Lcom/android/camera/data/VideoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 75
    .local v10, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/android/camera/data/VideoItemData;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v17}, Lcom/android/camera/data/VideoItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/util/Size;JILcom/android/camera/data/Location;J)V

    return-object v2

    .line 60
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "dimensions":Lcom/android/camera/util/Size;
    .end local v12    # "sizeInBytes":J
    .end local v15    # "location":Lcom/android/camera/data/Location;
    .end local v16    # "videoDurationMillis":J
    .end local v24    # "latitude":D
    .end local v26    # "longitude":D
    .restart local v21    # "profile":Landroid/media/CamcorderProfile;
    :cond_1
    sget-object v2, Lcom/android/camera/data/VideoDataFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "Video profile was null, defaulting to unknown width and height."

    invoke-static {v2, v14}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    sget-object v11, Lcom/android/camera/data/VideoDataFactory;->UNKNOWN_SIZE:Lcom/android/camera/util/Size;

    .restart local v11    # "dimensions":Lcom/android/camera/util/Size;
    goto :goto_0

    .line 64
    .end local v11    # "dimensions":Lcom/android/camera/util/Size;
    .end local v21    # "profile":Landroid/media/CamcorderProfile;
    :cond_2
    new-instance v11, Lcom/android/camera/util/Size;

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-direct {v11, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .restart local v11    # "dimensions":Lcom/android/camera/util/Size;
    goto :goto_0
.end method
