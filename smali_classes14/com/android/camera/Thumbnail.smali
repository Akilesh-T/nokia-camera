.class public Lcom/android/camera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# static fields
.field private static final LIMITHEIGHT:I = 0xf0

.field private static final LIMITWIDTH:I = 0x140

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Thumbnail"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Thumbnail;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addThumbnail([BLcom/android/camera/exif/ExifInterface;)V
    .locals 14
    .param p0, "originalJpegData"    # [B
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    const/4 v12, 0x0

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 80
    .local v6, "starttime":J
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 82
    array-length v10, p0

    invoke-static {p0, v12, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 83
    const/16 v10, 0x140

    const/16 v11, 0xf0

    invoke-static {v3, v10, v11}, Lcom/android/camera/Thumbnail;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 84
    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    array-length v10, p0

    invoke-static {p0, v12, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "bmOrig":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 87
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 88
    .local v2, "height":I
    invoke-static {v9, v2}, Lcom/android/camera/Thumbnail;->selectThumbnailSize(II)Lcom/android/camera/util/Size;

    move-result-object v4

    .line 89
    .local v4, "size":Lcom/android/camera/util/Size;
    if-le v9, v2, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    .line 90
    .local v8, "thumbnailWidth":I
    :goto_0
    if-le v9, v2, :cond_1

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    .line 91
    .local v5, "thumbnailHeight":I
    :goto_1
    invoke-static {v0, v8, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    .local v1, "exifThumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifInterface;->setCompressedThumbnail(Landroid/graphics/Bitmap;)Z

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    sget-object v10, Lcom/android/camera/Thumbnail;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addThumbnail costtime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    return-void

    .line 89
    .end local v1    # "exifThumbnail":Landroid/graphics/Bitmap;
    .end local v5    # "thumbnailHeight":I
    .end local v8    # "thumbnailWidth":I
    :cond_0
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    goto :goto_0

    .line 90
    .restart local v8    # "thumbnailWidth":I
    :cond_1
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v5

    goto :goto_1
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 116
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 117
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 118
    .local v4, "width":I
    const/4 v3, 0x1

    .line 120
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 122
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 123
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 127
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-lt v5, p2, :cond_1

    div-int v5, v1, v3

    if-lt v5, p1, :cond_1

    .line 129
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 133
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "targetWidth"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "targetWidth"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 48
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 53
    :goto_0
    const-wide/16 v8, -0x1

    invoke-virtual {v3, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 60
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 65
    :goto_1
    if-nez v0, :cond_1

    const/4 v7, 0x0

    .line 76
    :goto_2
    return-object v7

    .line 51
    :cond_0
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v7

    .line 60
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 61
    :catch_1
    move-exception v7

    goto :goto_1

    .line 56
    :catch_2
    move-exception v7

    .line 60
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 61
    :catch_3
    move-exception v7

    goto :goto_1

    .line 59
    :catchall_0
    move-exception v7

    .line 60
    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 63
    :goto_3
    throw v7

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 69
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 70
    .local v2, "height":I
    if-le v6, p2, :cond_2

    .line 71
    int-to-float v7, p2

    int-to-float v8, v6

    div-float v4, v7, v8

    .line 72
    .local v4, "scale":F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 73
    .local v5, "w":I
    int-to-float v7, v2

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 74
    .local v1, "h":I
    const/4 v7, 0x1

    invoke-static {v0, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "h":I
    .end local v4    # "scale":F
    .end local v5    # "w":I
    :cond_2
    move-object v7, v0

    .line 76
    goto :goto_2

    .line 61
    .end local v2    # "height":I
    .end local v6    # "width":I
    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_3
.end method

.method public static selectThumbnailSize(II)Lcom/android/camera/util/Size;
    .locals 11
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/16 v10, 0x140

    const/16 v7, 0xf0

    const-wide v8, 0x3fa999999999999aL    # 0.05

    .line 98
    new-instance v1, Landroid/util/Size;

    const/16 v6, 0xa0

    invoke-direct {v1, v10, v6}, Landroid/util/Size;-><init>(II)V

    .line 99
    .local v1, "THUMBNAIL_SIZE_18x9":Landroid/util/Size;
    new-instance v0, Landroid/util/Size;

    const/16 v6, 0xb4

    invoke-direct {v0, v10, v6}, Landroid/util/Size;-><init>(II)V

    .line 100
    .local v0, "THUMBNAIL_SIZE_16x9":Landroid/util/Size;
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v10, v7}, Landroid/util/Size;-><init>(II)V

    .line 101
    .local v3, "THUMBNAIL_SIZE_4x3":Landroid/util/Size;
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v7, v7}, Landroid/util/Size;-><init>(II)V

    .line 102
    .local v2, "THUMBNAIL_SIZE_1x1":Landroid/util/Size;
    if-le p0, p1, :cond_1

    int-to-float v6, p0

    int-to-float v7, p1

    div-float v4, v6, v7

    .line 103
    .local v4, "ratio":F
    :goto_0
    new-instance v5, Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 104
    .local v5, "size":Lcom/android/camera/util/Size;
    sget-object v6, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    invoke-virtual {v6}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v6

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2

    .line 105
    new-instance v5, Lcom/android/camera/util/Size;

    .end local v5    # "size":Lcom/android/camera/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 111
    :cond_0
    :goto_1
    return-object v5

    .line 102
    .end local v4    # "ratio":F
    :cond_1
    int-to-float v6, p1

    int-to-float v7, p0

    div-float v4, v6, v7

    goto :goto_0

    .line 106
    .restart local v4    # "ratio":F
    .restart local v5    # "size":Lcom/android/camera/util/Size;
    :cond_2
    sget-object v6, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_1x1:Lcom/android/camera/exif/Rational;

    invoke-virtual {v6}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v6

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_3

    .line 107
    new-instance v5, Lcom/android/camera/util/Size;

    .end local v5    # "size":Lcom/android/camera/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_1

    .line 108
    .restart local v5    # "size":Lcom/android/camera/util/Size;
    :cond_3
    sget-object v6, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_18x9:Lcom/android/camera/exif/Rational;

    invoke-virtual {v6}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v6

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 109
    new-instance v5, Lcom/android/camera/util/Size;

    .end local v5    # "size":Lcom/android/camera/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_1
.end method
