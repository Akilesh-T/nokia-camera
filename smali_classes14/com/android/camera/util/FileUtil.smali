.class public Lcom/android/camera/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToNV21A(Landroid/graphics/Bitmap;)[B
    .locals 23
    .param p0, "originBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/camera/util/FileUtil;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 104
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    new-array v3, v4, [I

    .line 105
    .local v3, "pixels":[I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 107
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v12, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 110
    .local v12, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    array-length v4, v3

    move/from16 v0, v17

    if-ge v0, v4, :cond_0

    .line 111
    aget v13, v3, v17

    .line 112
    .local v13, "clr":I
    const/high16 v4, 0xff0000

    and-int/2addr v4, v13

    shr-int/lit8 v4, v4, 0x10

    int-to-float v0, v4

    move/from16 v19, v0

    .line 113
    .local v19, "red":F
    const v4, 0xff00

    and-int/2addr v4, v13

    shr-int/lit8 v4, v4, 0x8

    int-to-float v0, v4

    move/from16 v16, v0

    .line 114
    .local v16, "green":F
    and-int/lit16 v4, v13, 0xff

    int-to-float v11, v4

    .line 115
    .local v11, "blue":F
    const-wide v4, 0x3fd072b020c49ba6L    # 0.257

    move/from16 v0, v19

    float-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide v6, 0x3fe020c49ba5e354L    # 0.504

    move/from16 v0, v16

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fb916872b020c4aL    # 0.098

    float-to-double v8, v11

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v0, v4

    move/from16 v22, v0

    .line 116
    .local v22, "y":B
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 119
    .end local v11    # "blue":F
    .end local v13    # "clr":I
    .end local v16    # "green":F
    .end local v19    # "red":F
    .end local v22    # "y":B
    :cond_0
    const/4 v14, 0x0

    .line 120
    .local v14, "count":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_2

    .line 121
    const/16 v17, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_1

    .line 122
    aget v13, v3, v14

    .line 123
    .restart local v13    # "clr":I
    const/high16 v4, 0xff0000

    and-int/2addr v4, v13

    shr-int/lit8 v4, v4, 0x10

    int-to-float v0, v4

    move/from16 v19, v0

    .line 124
    .restart local v19    # "red":F
    const v4, 0xff00

    and-int/2addr v4, v13

    shr-int/lit8 v4, v4, 0x8

    int-to-float v0, v4

    move/from16 v16, v0

    .line 125
    .restart local v16    # "green":F
    and-int/lit16 v4, v13, 0xff

    int-to-float v11, v4

    .line 126
    .restart local v11    # "blue":F
    const-wide v4, 0x3fdc189374bc6a7fL    # 0.439

    move/from16 v0, v19

    float-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide v6, 0x3fd78d4fdf3b645aL    # 0.368

    move/from16 v0, v16

    float-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x3fb22d0e56041893L    # 0.071

    float-to-double v8, v11

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v0, v4

    move/from16 v21, v0

    .line 127
    .local v21, "v":B
    const-wide v4, -0x403d0e5604189375L    # -0.148

    move/from16 v0, v19

    float-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide v6, 0x3fd29fbe76c8b439L    # 0.291

    move/from16 v0, v16

    float-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x3fdc189374bc6a7fL    # 0.439

    float-to-double v8, v11

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v0, v4

    move/from16 v20, v0

    .line 128
    .local v20, "u":B
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 130
    add-int/lit8 v14, v14, 0x2

    .line 121
    add-int/lit8 v17, v17, 0x2

    goto :goto_2

    .line 132
    .end local v11    # "blue":F
    .end local v13    # "clr":I
    .end local v16    # "green":F
    .end local v19    # "red":F
    .end local v20    # "u":B
    .end local v21    # "v":B
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v14, v4

    .line 120
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_1

    .line 136
    :cond_2
    const/16 v17, 0x0

    :goto_3
    array-length v4, v3

    move/from16 v0, v17

    if-ge v0, v4, :cond_3

    .line 137
    aget v13, v3, v17

    .line 138
    .restart local v13    # "clr":I
    const/high16 v4, -0x1000000

    and-int/2addr v4, v13

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v10, v4

    .line 139
    .local v10, "alpha":B
    invoke-virtual {v12, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 136
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 143
    .end local v10    # "alpha":B
    .end local v13    # "clr":I
    :cond_3
    :try_start_0
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 144
    move-object/from16 v0, p0

    if-eq v2, v0, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 145
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    :cond_4
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 154
    :goto_4
    return-object v4

    .line 148
    :catch_0
    move-exception v15

    .line 149
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    move-object/from16 v0, p0

    if-eq v2, v0, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 151
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_5
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public static deleteDirectoryRecursively(Ljava/io/File;)Z
    .locals 6
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 49
    .local v0, "entry":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    invoke-static {v0}, Lcom/android/camera/util/FileUtil;->deleteDirectoryRecursively(Ljava/io/File;)Z

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "entry":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static getTotalRam()I
    .locals 9

    .prologue
    .line 178
    const-string v4, "/proc/meminfo"

    .line 179
    .local v4, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 180
    .local v3, "firstLine":Ljava/lang/String;
    const/4 v5, 0x0

    .line 182
    .local v5, "totalRam":I
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, "fileReader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v6, 0x200

    invoke-direct {v0, v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 184
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v3, v6, v7

    .line 185
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    :goto_0
    if-eqz v3, :cond_0

    .line 190
    new-instance v6, Ljava/lang/Float;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/high16 v8, 0x49800000    # 1048576.0f

    div-float/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 193
    :cond_0
    return v5

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static readAssetsFileToByteArray(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 86
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 88
    .local v1, "buffer":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 89
    .local v4, "length":I
    :goto_0
    if-lez v4, :cond_0

    .line 90
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 91
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 98
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    :goto_1
    return-object v5

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static readFileToByteArray(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v2, v6

    .line 68
    .local v2, "length":I
    new-array v0, v2, [B

    .line 69
    .local v0, "data":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 71
    .local v4, "stream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 72
    .local v3, "offset":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 73
    sub-int v5, v2, v3

    :try_start_0
    invoke-virtual {v4, v0, v3, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 80
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw v5
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    move-object v0, p0

    .line 160
    .local v0, "BitmapOrg":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 161
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 162
    .local v4, "height":I
    move v8, p1

    .line 163
    .local v8, "newWidth":I
    move v7, p2

    .line 165
    .local v7, "newHeight":I
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v11, v2, v6

    .line 166
    .local v11, "scaleWidth":F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v10, v2, v6

    .line 168
    .local v10, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 169
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 172
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 174
    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v9
.end method
