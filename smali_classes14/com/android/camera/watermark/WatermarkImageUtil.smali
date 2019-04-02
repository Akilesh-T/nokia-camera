.class public Lcom/android/camera/watermark/WatermarkImageUtil;
.super Ljava/lang/Object;
.source "WatermarkImageUtil.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "WatermarkImageUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/watermark/WatermarkImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B
    .locals 15
    .param p0, "jpegData"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "jpegExifOrientation"    # I
    .param p4, "pictureSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5, "watermarkViewData"    # Lcom/android/camera/watermark/WatermarkViewData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v11

    const-string v12, "WatermarkImageUtil.mergeWatermarkData"

    invoke-virtual {v11, v12}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    .line 32
    .local v4, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 33
    .local v8, "scale":F
    sget-object v11, Lcom/android/camera/watermark/WatermarkImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "scale = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v11

    const/16 v12, 0x7d0

    invoke-virtual {v11, v12}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 37
    const-string v11, "Cpu Boost"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 39
    move-object v6, p0

    .line 40
    .local v6, "ret":[B
    const/4 v5, 0x0

    .line 42
    .local v5, "mutableBitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    :try_start_0
    array-length v12, p0

    invoke-static {p0, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 43
    .local v1, "bmOrig":Landroid/graphics/Bitmap;
    const-string v11, "bmOrig decoded"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 44
    if-eqz v1, :cond_1

    .line 45
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 46
    const-string v11, "mutableBitmap created"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 48
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    :cond_0
    const-string v11, "bmOrig recycle"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 51
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .local v2, "canvas":Landroid/graphics/Canvas;
    const-string v11, "Canvas created"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 54
    move/from16 v0, p3

    neg-int v11, v0

    add-int/lit16 v11, v11, 0x168

    rem-int/lit16 v7, v11, 0x168

    .line 55
    .local v7, "rotate":I
    int-to-float v11, v7

    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 56
    sparse-switch v7, :sswitch_data_0

    .line 70
    :goto_0
    :sswitch_0
    move-object/from16 v0, p5

    iget-object v11, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterX:F

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    mul-float/2addr v13, v8

    sub-float/2addr v12, v13

    float-to-int v12, v12

    int-to-float v12, v12

    move-object/from16 v0, p5

    iget v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterY:F

    move-object/from16 v0, p5

    iget-object v14, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v13, v13

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 70
    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 74
    const-string v11, "Canvas drawBitmap"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 77
    const-string v11, "Canvas save"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    const/4 v9, 0x0

    .line 81
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v10, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    const-string v11, "stream created"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 83
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v5, v11, v12, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 84
    const-string v11, "compress done"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 86
    const-string v11, "toByteArray done"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    if-eqz v10, :cond_1

    .line 92
    :try_start_3
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 93
    const-string v11, "stream.close"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "rotate":I
    .end local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    :cond_2
    const-string v11, "done"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 104
    .end local v1    # "bmOrig":Landroid/graphics/Bitmap;
    :goto_2
    return-object v6

    .line 60
    .restart local v1    # "bmOrig":Landroid/graphics/Bitmap;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "rotate":I
    :sswitch_1
    const/4 v11, 0x0

    move/from16 v0, p1

    neg-int v12, v0

    int-to-float v12, v12

    :try_start_4
    invoke-virtual {v2, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 97
    .end local v1    # "bmOrig":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "rotate":I
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v11, Lcom/android/camera/watermark/WatermarkImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    const-string v11, "error"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    :cond_3
    const-string v11, "done"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "bmOrig":Landroid/graphics/Bitmap;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "rotate":I
    :sswitch_2
    move/from16 v0, p1

    neg-int v11, v0

    int-to-float v11, v11

    move/from16 v0, p2

    neg-int v12, v0

    int-to-float v12, v12

    :try_start_6
    invoke-virtual {v2, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 101
    .end local v1    # "bmOrig":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "rotate":I
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    :cond_4
    const-string v12, "done"

    invoke-interface {v4, v12}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    throw v11

    .line 66
    .restart local v1    # "bmOrig":Landroid/graphics/Bitmap;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "rotate":I
    :sswitch_3
    move/from16 v0, p2

    neg-int v11, v0

    int-to-float v11, v11

    const/4 v12, 0x0

    :try_start_7
    invoke-virtual {v2, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 87
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_8
    sget-object v11, Lcom/android/camera/watermark/WatermarkImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    const-string v11, "error"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 91
    if-eqz v9, :cond_1

    .line 92
    :try_start_9
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 93
    const-string v11, "stream.close"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v11

    :goto_4
    if-eqz v9, :cond_5

    .line 92
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 93
    const-string v12, "stream.close"

    invoke-interface {v4, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_5
    throw v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 91
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 87
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v3

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static mergeWatermarkThmbnail(Landroid/graphics/Bitmap;ILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "indicator"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rotationDegrees"    # I
    .param p2, "pictureSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "watermarkViewData"    # Lcom/android/camera/watermark/WatermarkViewData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v12

    const-string v13, "WatermarkImageUtil.mergeWatermarkThmbnail"

    invoke-virtual {v12, v13}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    .line 110
    .local v3, "guard":Lcom/android/camera/stats/profiler/Profile;
    const/4 v6, 0x0

    .line 111
    .local v6, "mutableBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 112
    .local v11, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 113
    .local v4, "height":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    div-float v8, v12, v13

    .line 114
    .local v8, "scale":F
    sget-object v12, Lcom/android/camera/watermark/WatermarkImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "scale = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    :try_start_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 118
    const-string v12, "mutableBitmap created"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 120
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    :cond_0
    const-string v12, "bmOrig recycle"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v13, v13

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v8

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 124
    .local v9, "scaledBitmap":Landroid/graphics/Bitmap;
    const-string v12, "scaledBitmap created"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 125
    sget-object v13, Lcom/android/camera/watermark/WatermarkImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "scaledBitmap = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "x"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-static {v13, v12}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    if-eqz v9, :cond_1

    .line 129
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v1, "canvas":Landroid/graphics/Canvas;
    const-string v12, "Canvas created"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 132
    move/from16 v0, p1

    neg-int v12, v0

    add-int/lit16 v12, v12, 0x168

    rem-int/lit16 v7, v12, 0x168

    .line 133
    .local v7, "rotate":I
    int-to-float v12, v7

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 134
    const/4 v5, 0x0

    .line 135
    .local v5, "left":I
    const/4 v10, 0x0

    .line 136
    .local v10, "top":I
    sparse-switch v7, :sswitch_data_0

    .line 158
    :goto_1
    int-to-float v12, v5

    int-to-float v13, v10

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v9, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    const-string v12, "Canvas drawBitmap"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 162
    const-string v12, "Canvas save"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "left":I
    .end local v7    # "rotate":I
    .end local v10    # "top":I
    :cond_1
    const-string v12, "done"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 170
    .end local v9    # "scaledBitmap":Landroid/graphics/Bitmap;
    :goto_2
    return-object v6

    .line 125
    .restart local v9    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 138
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "left":I
    .restart local v7    # "rotate":I
    .restart local v10    # "top":I
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterX:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 139
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterY:F

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v10, v12

    .line 140
    goto :goto_1

    .line 142
    :sswitch_1
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterX:F

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 143
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterY:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v10, v12

    .line 144
    const/4 v12, 0x0

    neg-int v13, v11

    int-to-float v13, v13

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 164
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "left":I
    .end local v7    # "rotate":I
    .end local v9    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "top":I
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v12, Lcom/android/camera/watermark/WatermarkImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    const-string v12, "error"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    const-string v12, "done"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "left":I
    .restart local v7    # "rotate":I
    .restart local v9    # "scaledBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "top":I
    :sswitch_2
    neg-int v12, v11

    int-to-float v12, v12

    neg-int v13, v4

    int-to-float v13, v13

    :try_start_3
    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterX:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 149
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterY:F

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v10, v12

    .line 150
    goto/16 :goto_1

    .line 152
    :sswitch_3
    neg-int v12, v4

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterX:F

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 154
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/watermark/WatermarkViewData;->mCenterY:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/watermark/WatermarkViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v10, v12

    goto/16 :goto_1

    .line 168
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "left":I
    .end local v7    # "rotate":I
    .end local v9    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "top":I
    :catchall_0
    move-exception v12

    const-string v13, "done"

    invoke-interface {v3, v13}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    throw v12

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
