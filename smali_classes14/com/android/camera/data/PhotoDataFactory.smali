.class public Lcom/android/camera/data/PhotoDataFactory;
.super Ljava/lang/Object;
.source "PhotoDataFactory.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PhotoDataFact"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/PhotoDataFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeBitmapDimensions(Ljava/lang/String;)Lcom/android/camera/util/Size;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 95
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v5, :cond_1

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_1

    .line 99
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 100
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 119
    .local v1, "height":I
    :cond_0
    new-instance v4, Lcom/android/camera/util/Size;

    invoke-direct {v4, v3, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .end local v1    # "height":I
    .end local v3    # "width":I
    :goto_0
    return-object v4

    .line 102
    :cond_1
    sget-object v5, Lcom/android/camera/data/PhotoDataFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dimension decode failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 107
    sget-object v5, Lcom/android/camera/data/PhotoDataFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhotoData skipped. Decoding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 112
    .restart local v3    # "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 113
    .restart local v1    # "height":I
    if-eqz v3, :cond_3

    if-nez v1, :cond_0

    .line 114
    :cond_3
    sget-object v5, Lcom/android/camera/data/PhotoDataFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhotoData skipped. Bitmap size 0 for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public fromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/FilmstripItemData;
    .locals 28
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 33
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 34
    .local v3, "id":J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, "title":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "mimeType":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 37
    .local v18, "dateTakenInMilliSeconds":J
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 38
    .local v16, "dateModifiedInSeconds":J
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v18

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 39
    .local v7, "creationDate":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v16

    move-wide/from16 v0, v26

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 41
    .local v8, "lastModifiedDate":Ljava/util/Date;
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "filePath":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 43
    .local v14, "orientation":I
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 44
    .local v21, "width":I
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 49
    .local v20, "height":I
    if-lez v21, :cond_0

    if-gtz v20, :cond_1

    .line 51
    :cond_0
    sget-object v2, Lcom/android/camera/data/PhotoDataFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Zero dimension in ContentResolver for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/camera/data/PhotoDataFactory;->decodeBitmapDimensions(Ljava/lang/String;)Lcom/android/camera/util/Size;

    move-result-object v11

    .line 55
    .local v11, "dimensions":Lcom/android/camera/util/Size;
    if-nez v11, :cond_2

    .line 59
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    .line 62
    .end local v11    # "dimensions":Lcom/android/camera/util/Size;
    :cond_1
    new-instance v11, Lcom/android/camera/util/Size;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v11, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 65
    .restart local v11    # "dimensions":Lcom/android/camera/util/Size;
    :cond_2
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 66
    .local v12, "sizeInBytes":J
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v22

    .line 67
    .local v22, "latitude":D
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    .line 68
    .local v24, "longitude":D
    invoke-static/range {v22 .. v25}, Lcom/android/camera/data/Location;->from(DD)Lcom/android/camera/data/Location;

    move-result-object v15

    .line 70
    .local v15, "location":Lcom/android/camera/data/Location;
    sget-object v2, Lcom/android/camera/data/PhotoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 72
    .local v10, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/android/camera/data/FilmstripItemData;

    invoke-direct/range {v2 .. v15}, Lcom/android/camera/data/FilmstripItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;Lcom/android/camera/util/Size;JILcom/android/camera/data/Location;)V

    goto :goto_0
.end method
