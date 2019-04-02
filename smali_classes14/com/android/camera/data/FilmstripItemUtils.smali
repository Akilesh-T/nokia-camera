.class public Lcom/android/camera/data/FilmstripItemUtils;
.super Ljava/lang/Object;
.source "FilmstripItemUtils.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LocalDataUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBitmapDimension(Ljava/io/InputStream;)Landroid/graphics/Point;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "size":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    .local v0, "justBoundsOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 70
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    .line 71
    new-instance v1, Landroid/graphics/Point;

    .end local v1    # "size":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 75
    .restart local v1    # "size":Landroid/graphics/Point;
    :goto_0
    return-object v1

    .line 73
    :cond_0
    sget-object v2, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Bitmap dimension decoding failed"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isMimeTypeImage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMimeTypeVideo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadImageThumbnailFromStream(Ljava/io/InputStream;IIIIII)Landroid/graphics/Bitmap;
    .locals 28
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "widthBound"    # I
    .param p4, "heightBound"    # I
    .param p5, "orientation"    # I
    .param p6, "maximumPixels"    # I

    .prologue
    .line 96
    const v6, 0x8000

    new-array v0, v6, [B

    move-object/from16 v16, v0

    .line 98
    .local v16, "decodeBuffer":[B
    move/from16 v0, p5

    rem-int/lit16 v6, v0, 0xb4

    if-eqz v6, :cond_0

    .line 99
    move/from16 v17, p2

    .line 100
    .local v17, "dummy":I
    move/from16 p2, p1

    .line 101
    move/from16 p1, v17

    .line 103
    move/from16 v17, p4

    .line 104
    move/from16 p4, p3

    .line 105
    move/from16 p3, v17

    .line 110
    .end local v17    # "dummy":I
    :cond_0
    move/from16 v27, p1

    .line 111
    .local v27, "targetWidth":I
    move/from16 v26, p2

    .line 112
    .local v26, "targetHeight":I
    const/16 v22, 0x1

    .line 114
    .local v22, "sampleSize":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, p4

    if-gt v0, v1, :cond_1

    move/from16 v0, v27

    move/from16 v1, p3

    if-gt v0, v1, :cond_1

    const/16 v6, 0xd33

    move/from16 v0, v26

    if-gt v0, v6, :cond_1

    const/16 v6, 0xd33

    move/from16 v0, v27

    if-gt v0, v6, :cond_1

    mul-int v6, v26, v27

    move/from16 v0, p6

    if-le v6, v0, :cond_2

    .line 117
    :cond_1
    shl-int/lit8 v22, v22, 0x1

    .line 118
    div-int v27, p1, v22

    .line 119
    div-int v26, p2, v22

    goto :goto_0

    .line 123
    :cond_2
    const/16 v15, 0x1e

    .line 124
    .local v15, "TOLENCE":I
    sub-int v6, v26, p4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v8, 0x1e

    if-gt v6, v8, :cond_3

    sub-int v6, v27, p3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v8, 0x1e

    if-le v6, v8, :cond_4

    .line 125
    :cond_3
    const/4 v6, 0x1

    move/from16 v0, v22

    if-le v0, v6, :cond_4

    .line 126
    shr-int/lit8 v22, v22, 0x1

    .line 127
    div-int v27, p1, v22

    .line 128
    div-int v26, p2, v22

    .line 140
    :cond_4
    div-int v6, p2, p1

    const/4 v8, 0x2

    if-gt v6, v8, :cond_5

    div-int v6, p1, p2

    const/4 v8, 0x2

    if-le v6, v8, :cond_7

    :cond_5
    const/16 v18, 0x1

    .line 141
    .local v18, "isLargeRatio":Z
    :goto_1
    const/16 v6, 0xd33

    move/from16 v0, p4

    if-gt v0, v6, :cond_6

    const/16 v6, 0xd33

    move/from16 v0, p3

    if-gt v0, v6, :cond_6

    if-eqz v18, :cond_8

    .line 142
    :cond_6
    :goto_2
    mul-int v6, v27, v26

    div-int/lit8 v8, p6, 0x4

    if-ge v6, v8, :cond_8

    const/4 v6, 0x1

    move/from16 v0, v22

    if-le v0, v6, :cond_8

    .line 143
    shr-int/lit8 v22, v22, 0x1

    .line 144
    shl-int/lit8 v27, v27, 0x1

    .line 145
    shl-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 140
    .end local v18    # "isLargeRatio":Z
    :cond_7
    const/16 v18, 0x0

    goto :goto_1

    .line 149
    .restart local v18    # "isLargeRatio":Z
    :cond_8
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 150
    .local v21, "opts":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 151
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 152
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 154
    .local v2, "b":Landroid/graphics/Bitmap;
    if-nez v2, :cond_9

    .line 155
    sget-object v6, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "decodeStream fail"

    invoke-static {v6, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    const/4 v6, 0x0

    .line 214
    :goto_3
    return-object v6

    .line 159
    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-nez v6, :cond_b

    .line 160
    :cond_a
    sget-object v6, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bitmap not available : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    const/4 v6, 0x0

    goto :goto_3

    .line 164
    :cond_b
    sget-object v6, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeStream Bitmap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/16 v8, 0xd33

    if-gt v6, v8, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/16 v8, 0xd33

    if-le v6, v8, :cond_d

    .line 171
    :cond_c
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 172
    .local v20, "maxEdge":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit16 v6, v6, 0xd33

    div-int v6, v6, v20

    .line 173
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/lit16 v8, v8, 0xd33

    div-int v8, v8, v20

    const/4 v9, 0x0

    .line 172
    invoke-static {v2, v6, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    .end local v20    # "maxEdge":I
    :cond_d
    if-nez v18, :cond_10

    .line 177
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 178
    .restart local v20    # "maxEdge":I
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 179
    .local v19, "maxBound":I
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 180
    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v20

    int-to-float v8, v0

    div-float v23, v6, v8

    .line 181
    .local v23, "scaleRatio":F
    sget-object v6, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeStream scaleRatio = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v23

    float-to-int v6, v6

    .line 183
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v23

    float-to-int v8, v8

    const/4 v9, 0x0

    .line 182
    invoke-static {v2, v6, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 187
    .end local v23    # "scaleRatio":F
    :cond_e
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 188
    .local v25, "sortEdge":I
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 189
    .local v24, "shortBound":I
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 190
    .local v5, "center_region":I
    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 191
    .local v3, "left":I
    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 192
    .local v4, "top":I
    sget-object v6, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeStream center_region = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    if-eqz v2, :cond_f

    .line 196
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 197
    .local v7, "m":Landroid/graphics/Matrix;
    move/from16 v0, p5

    int-to-float v6, v0

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 198
    const/4 v8, 0x0

    move v6, v5

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 209
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "center_region":I
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v19    # "maxBound":I
    .end local v20    # "maxEdge":I
    .end local v24    # "shortBound":I
    .end local v25    # "sortEdge":I
    :cond_f
    :goto_4
    if-eqz v2, :cond_11

    .line 210
    sget-object v6, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadImageThumbnailFromStream : width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    :goto_5
    move-object v6, v2

    .line 214
    goto/16 :goto_3

    .line 202
    :cond_10
    if-eqz p5, :cond_f

    if-eqz v2, :cond_f

    .line 203
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    .restart local v7    # "m":Landroid/graphics/Matrix;
    move/from16 v0, p5

    int-to-float v6, v0

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 205
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    move-object v8, v2

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_4

    .line 212
    .end local v7    # "m":Landroid/graphics/Matrix;
    :cond_11
    sget-object v6, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "loadImageThumbnailFromStream fail"

    invoke-static {v6, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static loadVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 227
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v1

    .line 229
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 230
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    :cond_0
    if-nez v0, :cond_1

    .line 233
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    .end local v1    # "data":[B
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 239
    return-object v0

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/data/FilmstripItemUtils;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaMetadataRetriever.setDataSource() fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
