.class public Lcom/android/camera/microvideo/YuvUtils;
.super Ljava/lang/Object;
.source "YuvUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "YuvUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CropYuv(I[BIIII)[B
    .locals 14
    .param p0, "src_format"    # I
    .param p1, "src_yuv"    # [B
    .param p2, "src_width"    # I
    .param p3, "src_height"    # I
    .param p4, "dst_width"    # I
    .param p5, "dst_height"    # I

    .prologue
    .line 190
    if-nez p1, :cond_1

    .line 191
    const/4 v5, 0x0

    .line 268
    :cond_0
    :goto_0
    return-object v5

    .line 194
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    move/from16 v0, p3

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    .line 195
    move-object v5, p1

    .local v5, "dst_yuv":[B
    goto :goto_0

    .line 197
    .end local v5    # "dst_yuv":[B
    :cond_2
    mul-int v10, p4, p5

    int-to-double v10, v10

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    double-to-int v10, v10

    new-array v5, v10, [B

    .line 203
    .restart local v5    # "dst_yuv":[B
    sparse-switch p0, :sswitch_data_0

    .line 264
    const/4 v5, 0x0

    goto :goto_0

    .line 206
    :sswitch_0
    const/4 v9, 0x0

    .line 207
    .local v9, "src_yoffset":I
    const/4 v4, 0x0

    .line 209
    .local v4, "dst_yoffset":I
    const/4 v7, 0x0

    .local v7, "src_uoffset":I
    :goto_1
    move/from16 v0, p5

    if-ge v7, v0, :cond_3

    .line 210
    move/from16 v0, p4

    invoke-static {p1, v9, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    add-int v9, v9, p2

    .line 212
    add-int v4, v4, p4

    .line 209
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 215
    :cond_3
    const/4 v7, 0x0

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "dst_uoffset":I
    mul-int v9, p2, p3

    .line 218
    mul-int v4, p4, p5

    .line 220
    const/4 v8, 0x0

    .local v8, "src_voffset":I
    :goto_2
    div-int/lit8 v10, p5, 0x2

    if-ge v8, v10, :cond_4

    .line 221
    add-int v10, v9, v7

    add-int v11, v4, v2

    div-int/lit8 v12, p4, 0x2

    invoke-static {p1, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    div-int/lit8 v10, p2, 0x2

    add-int/2addr v7, v10

    .line 223
    div-int/lit8 v10, p4, 0x2

    add-int/2addr v2, v10

    .line 220
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 226
    :cond_4
    const/4 v8, 0x0

    .line 227
    const/4 v3, 0x0

    .line 228
    .local v3, "dst_voffset":I
    mul-int v10, p2, p3

    mul-int v11, p2, p3

    div-int/lit8 v11, v11, 0x4

    add-int v7, v10, v11

    .line 229
    mul-int v10, p4, p5

    mul-int v11, p4, p5

    div-int/lit8 v11, v11, 0x4

    add-int v2, v10, v11

    .line 231
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    div-int/lit8 v10, p5, 0x2

    if-ge v6, v10, :cond_0

    .line 232
    add-int v10, v7, v8

    add-int v11, v2, v3

    div-int/lit8 v12, p4, 0x2

    invoke-static {p1, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    div-int/lit8 v10, p2, 0x2

    add-int/2addr v8, v10

    .line 234
    div-int/lit8 v10, p4, 0x2

    add-int/2addr v3, v10

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 242
    .end local v2    # "dst_uoffset":I
    .end local v3    # "dst_voffset":I
    .end local v4    # "dst_yoffset":I
    .end local v6    # "i":I
    .end local v7    # "src_uoffset":I
    .end local v8    # "src_voffset":I
    .end local v9    # "src_yoffset":I
    :sswitch_1
    const/4 v9, 0x0

    .line 243
    .restart local v9    # "src_yoffset":I
    const/4 v4, 0x0

    .line 245
    .restart local v4    # "dst_yoffset":I
    const/4 v7, 0x0

    .restart local v7    # "src_uoffset":I
    :goto_4
    move/from16 v0, p5

    if-ge v7, v0, :cond_5

    .line 246
    move/from16 v0, p4

    invoke-static {p1, v9, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    add-int v9, v9, p2

    .line 248
    add-int v4, v4, p4

    .line 245
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 251
    :cond_5
    const/4 v7, 0x0

    .line 252
    const/4 v2, 0x0

    .line 253
    .restart local v2    # "dst_uoffset":I
    mul-int v9, p2, p3

    .line 254
    mul-int v4, p4, p5

    .line 256
    const/4 v8, 0x0

    .restart local v8    # "src_voffset":I
    :goto_5
    div-int/lit8 v10, p5, 0x2

    if-ge v8, v10, :cond_0

    .line 257
    add-int v10, v9, v7

    add-int v11, v4, v2

    move/from16 v0, p4

    invoke-static {p1, v10, v5, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    add-int v7, v7, p2

    .line 259
    add-int v2, v2, p4

    .line 256
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x27 -> :sswitch_1
        0x7f000100 -> :sswitch_1
        0x7fa30c00 -> :sswitch_1
    .end sparse-switch
.end method

.method public static deleteFolder(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 273
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 274
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static getCurrentRotation(ZIZ)Lcom/googlecode/mp4parser/util/Matrix;
    .locals 5
    .param p0, "isFrontCamera"    # Z
    .param p1, "orientation"    # I
    .param p2, "isAop"    # Z

    .prologue
    .line 53
    if-eqz p0, :cond_4

    .line 54
    const-string v2, "YuvUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRotation: use front camera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isAop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    .line 56
    .local v0, "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    sparse-switch p1, :sswitch_data_0

    :goto_0
    move-object v1, v0

    .line 88
    .end local v0    # "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    .local v1, "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    :goto_1
    return-object v1

    .line 58
    .end local v1    # "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    .restart local v0    # "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    :sswitch_0
    if-eqz p2, :cond_0

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    .line 59
    :goto_2
    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_2

    .line 61
    :sswitch_1
    if-eqz p2, :cond_1

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    .line 62
    :goto_3
    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_3

    .line 64
    :sswitch_2
    if-eqz p2, :cond_2

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    .line 65
    :goto_4
    goto :goto_0

    .line 64
    :cond_2
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_4

    .line 67
    :sswitch_3
    if-eqz p2, :cond_3

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    :goto_5
    goto :goto_0

    :cond_3
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_5

    .line 72
    .end local v0    # "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    :cond_4
    const-string v2, "YuvUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRotation: use back camera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isAop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    .line 74
    .restart local v0    # "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    sparse-switch p1, :sswitch_data_1

    :goto_6
    move-object v1, v0

    .line 88
    .end local v0    # "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    .restart local v1    # "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    goto :goto_1

    .line 76
    .end local v1    # "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    .restart local v0    # "rotate":Lcom/googlecode/mp4parser/util/Matrix;
    :sswitch_4
    if-eqz p2, :cond_5

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    .line 77
    :goto_7
    goto :goto_6

    .line 76
    :cond_5
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_7

    .line 79
    :sswitch_5
    if-eqz p2, :cond_6

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    .line 80
    :goto_8
    goto :goto_6

    .line 79
    :cond_6
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_8

    .line 82
    :sswitch_6
    if-eqz p2, :cond_7

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    .line 83
    :goto_9
    goto :goto_6

    .line 82
    :cond_7
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_9

    .line 85
    :sswitch_7
    if-eqz p2, :cond_8

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    :goto_a
    goto :goto_6

    :cond_8
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_a

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 74
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method public static getFinalMicroVideoFile(Ljava/lang/String;ZIZ)Ljava/lang/String;
    .locals 14
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "isFrontCamera"    # Z
    .param p2, "orientation"    # I
    .param p3, "isAop"    # Z

    .prologue
    .line 24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const-string v12, "/"

    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/output.mp4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 27
    .local v7, "outputfile":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v2, "input":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v6, "output":Ljava/io/File;
    new-instance v3, Lcom/coremedia/iso/IsoFile;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, "isoFile":Lcom/coremedia/iso/IsoFile;
    new-instance v4, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 32
    .local v4, "m":Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual {v3}, Lcom/coremedia/iso/IsoFile;->getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v10

    const-class v11, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 34
    .local v9, "trackBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TrackBox;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/TrackBox;

    .line 35
    .local v8, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v11

    invoke-static/range {p1 .. p3}, Lcom/android/camera/microvideo/YuvUtils;->getCurrentRotation(ZIZ)Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 36
    new-instance v11, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;

    const-string v12, "test"

    const/4 v13, 0x0

    new-array v13, v13, [Lcom/coremedia/iso/IsoFile;

    invoke-direct {v11, v12, v8, v13}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;-><init>(Ljava/lang/String;Lcom/coremedia/iso/boxes/TrackBox;[Lcom/coremedia/iso/IsoFile;)V

    invoke-virtual {v4, v11}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v2    # "input":Ljava/io/File;
    .end local v3    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v4    # "m":Lcom/googlecode/mp4parser/authoring/Movie;
    .end local v6    # "output":Ljava/io/File;
    .end local v8    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v9    # "trackBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TrackBox;>;"
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    const/4 v7, 0x0

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "outputfile":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 39
    .restart local v2    # "input":Ljava/io/File;
    .restart local v3    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v4    # "m":Lcom/googlecode/mp4parser/authoring/Movie;
    .restart local v6    # "output":Ljava/io/File;
    .restart local v7    # "outputfile":Ljava/lang/String;
    .restart local v9    # "trackBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TrackBox;>;"
    :cond_0
    :try_start_1
    new-instance v10, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v10}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v10, v4}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v5

    .line 40
    .local v5, "out":Lcom/coremedia/iso/boxes/Container;
    new-instance v10, Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "rw"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 41
    .local v1, "fc":Ljava/nio/channels/FileChannel;
    invoke-interface {v5, v1}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 42
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static rotateNV21Degree270([BII)[B
    .locals 11
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 132
    mul-int v9, p1, p2

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v8, v9, [B

    .line 133
    .local v8, "yuv":[B
    const/4 v5, 0x0

    .line 134
    .local v5, "nWidth":I
    const/4 v3, 0x0

    .line 135
    .local v3, "nHeight":I
    const/4 v7, 0x0

    .line 136
    .local v7, "wh":I
    const/4 v6, 0x0

    .line 137
    .local v6, "uvHeight":I
    if-ne p1, v5, :cond_0

    if-eq p2, v3, :cond_1

    .line 138
    :cond_0
    mul-int v7, p1, p2

    .line 139
    shr-int/lit8 v6, p2, 0x1

    .line 142
    :cond_1
    const/4 v2, 0x0

    .line 147
    .local v2, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 148
    const/4 v4, 0x0

    .line 150
    .local v4, "nPos":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 151
    add-int v9, v4, v0

    aget-byte v9, p0, v9

    aput-byte v9, v8, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    add-int/2addr v4, p1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "j":I
    .end local v4    # "nPos":I
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_5

    .line 158
    move v4, v7

    .line 160
    .restart local v4    # "nPos":I
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v6, :cond_4

    .line 161
    add-int v9, v4, v0

    aget-byte v9, p0, v9

    aput-byte v9, v8, v2

    .line 162
    add-int/lit8 v9, v2, 0x1

    add-int v10, v4, v0

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, p0, v10

    aput-byte v10, v8, v9

    .line 163
    add-int/lit8 v2, v2, 0x2

    .line 164
    add-int/2addr v4, p1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 157
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 168
    .end local v1    # "j":I
    .end local v4    # "nPos":I
    :cond_5
    invoke-static {v8, p1, p2}, Lcom/android/camera/microvideo/YuvUtils;->rotateYUV420Degree180([BII)[B

    move-result-object v9

    return-object v9
.end method

.method private static rotateYUV420Degree180([BII)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 115
    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 116
    .local v3, "yuv":[B
    const/4 v2, 0x0

    .line 117
    .local v2, "i":I
    const/4 v0, 0x0

    .line 118
    .local v0, "count":I
    mul-int v4, p1, p2

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 119
    aget-byte v4, p0, v2

    aput-byte v4, v3, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 118
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 122
    :cond_0
    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, -0x1

    .line 123
    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, -0x1

    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    mul-int v4, p1, p2

    if-lt v2, v4, :cond_1

    .line 125
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    add-int/lit8 v4, v2, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v1

    .line 126
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .restart local v1    # "count":I
    aget-byte v4, p0, v2

    aput-byte v4, v3, v0

    .line 124
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 128
    :cond_1
    return-object v3
.end method

.method public static rotateYUV420Degree90([BII)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 93
    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 94
    .local v3, "yuv":[B
    const/4 v0, 0x0

    .line 95
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 96
    add-int/lit8 v2, p2, -0x1

    .local v2, "y":I
    :goto_1
    if-ltz v2, :cond_0

    .line 97
    mul-int v4, v2, p1

    add-int/2addr v4, v1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 96
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "y":I
    :cond_1
    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v4, -0x1

    .line 102
    add-int/lit8 v1, p1, -0x1

    :goto_2
    if-lez v1, :cond_3

    .line 103
    const/4 v2, 0x0

    .restart local v2    # "y":I
    :goto_3
    div-int/lit8 v4, p2, 0x2

    if-ge v2, v4, :cond_2

    .line 104
    mul-int v4, p1, p2

    mul-int v5, v2, p1

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 105
    add-int/lit8 v0, v0, -0x1

    .line 106
    mul-int v4, p1, p2

    mul-int v5, v2, p1

    add-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 108
    add-int/lit8 v0, v0, -0x1

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    :cond_2
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 111
    .end local v2    # "y":I
    :cond_3
    return-object v3
.end method


# virtual methods
.method public rotateYUV420Degree270([BII)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 175
    mul-int v4, p2, p3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 177
    .local v3, "yuv":[B
    const/4 v0, 0x0

    .line 178
    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "x":I
    :goto_0
    if-ltz v1, :cond_1

    .line 179
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    if-ge v2, p3, :cond_0

    .line 180
    mul-int v4, v2, p2

    add-int/2addr v4, v1

    aget-byte v4, p1, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 182
    .end local v2    # "y":I
    :cond_1
    add-int/lit8 v1, p2, -0x1

    :goto_2
    if-lez v1, :cond_3

    .line 183
    const/4 v2, 0x0

    .restart local v2    # "y":I
    :goto_3
    div-int/lit8 v4, p3, 0x2

    if-ge v2, v4, :cond_2

    mul-int v4, p2, p3

    mul-int v5, v2, p2

    add-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    mul-int v4, p2, p3

    mul-int v5, v2, p2

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    aget-byte v4, p1, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 182
    :cond_2
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 186
    .end local v2    # "y":I
    :cond_3
    return-object v3
.end method
