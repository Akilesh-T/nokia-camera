.class public Lcom/android/camera/brandlogo/BrandLogoImageUtil;
.super Ljava/lang/Object;
.source "BrandLogoImageUtil.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BrandLogoImageUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeBrandLogoData(Landroid/graphics/Bitmap;ILcom/android/camera/util/Size;Lcom/android/camera/brandlogo/BrandLogoViewData;Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "indicator"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "rotationDegrees"    # I
    .param p2, "pictureSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "brandLogoViewData"    # Lcom/android/camera/brandlogo/BrandLogoViewData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isPreviewOnly"    # Z

    .prologue
    .line 170
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v8

    const-string v9, "BrandLogoImageUtil.mergeWatermarkThmbnail"

    invoke-virtual {v8, v9}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    .line 171
    .local v2, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 172
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 173
    .local v3, "height":I
    if-eqz p4, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 174
    .local v5, "scale":F
    :goto_0
    sget-object v8, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mergeBrandLogoThmbnail scale = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    :try_start_0
    iget-object v8, p3, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p3, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iget-object v10, p3, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 177
    .local v6, "scaledBitmap":Landroid/graphics/Bitmap;
    const-string v8, "scaledBitmap created"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 178
    sget-object v9, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scaledBitmap = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-static {v9, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    if-eqz v6, :cond_0

    .line 181
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 182
    .local v0, "canvas":Landroid/graphics/Canvas;
    const-string v8, "Canvas created"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 184
    neg-int v8, p1

    add-int/lit16 v8, v8, 0x168

    rem-int/lit16 v4, v8, 0x168

    .line 185
    .local v4, "rotate":I
    int-to-float v8, v4

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 186
    sparse-switch v4, :sswitch_data_0

    .line 200
    :goto_2
    :sswitch_0
    iget-object v8, p3, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    iget v9, p3, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterX:F

    iget-object v10, p3, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 201
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    iget v10, p3, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterY:F

    iget-object v11, p3, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 202
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v10, v10

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 200
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    const-string v8, "Canvas drawBitmap"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 207
    const-string v8, "Canvas save"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "rotate":I
    :cond_0
    const-string v8, "done"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 215
    .end local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    :goto_3
    return-object p0

    .line 173
    .end local v5    # "scale":F
    :cond_1
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    goto/16 :goto_0

    .line 178
    .restart local v5    # "scale":F
    .restart local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 190
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "rotate":I
    :sswitch_1
    const/4 v8, 0x0

    neg-int v9, v7

    int-to-float v9, v9

    :try_start_1
    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 209
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "rotate":I
    .end local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    const-string v8, "error"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    const-string v8, "done"

    invoke-interface {v2, v8}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_3

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "rotate":I
    .restart local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    :sswitch_2
    neg-int v8, v7

    int-to-float v8, v8

    neg-int v9, v3

    int-to-float v9, v9

    :try_start_3
    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 213
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "rotate":I
    .end local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v8

    const-string v9, "done"

    invoke-interface {v2, v9}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    throw v8

    .line 196
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "rotate":I
    .restart local v6    # "scaledBitmap":Landroid/graphics/Bitmap;
    :sswitch_3
    neg-int v8, v3

    int-to-float v8, v8

    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static mergeBrandLogoData([BIIILcom/android/camera/util/Size;Lcom/android/camera/brandlogo/BrandLogoViewData;Z)[B
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
    .param p5, "brandLogoViewData"    # Lcom/android/camera/brandlogo/BrandLogoViewData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "isPreviewOnly"    # Z

    .prologue
    .line 27
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v11

    const-string v12, "BrandLogoImageUtil.mergeWatermarkData"

    invoke-virtual {v11, v12}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    .line 28
    .local v4, "guard":Lcom/android/camera/stats/profiler/Profile;
    if-eqz p6, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    .line 29
    .local v8, "scale":F
    :goto_0
    sget-object v11, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergeBrandLogoData scale = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v11

    const/16 v12, 0x7d0

    invoke-virtual {v11, v12}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 33
    const-string v11, "Cpu Boost"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 35
    move-object v6, p0

    .line 36
    .local v6, "ret":[B
    const/4 v5, 0x0

    .line 38
    .local v5, "mutableBitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    :try_start_0
    array-length v12, p0

    invoke-static {p0, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    .local v1, "bmOrig":Landroid/graphics/Bitmap;
    const-string v11, "bmOrig decoded"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 40
    if-eqz v1, :cond_1

    .line 41
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 42
    const-string v11, "mutableBitmap created"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 44
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    :cond_0
    const-string v11, "bmOrig recycle"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 47
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 48
    .local v2, "canvas":Landroid/graphics/Canvas;
    const-string v11, "Canvas created"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 50
    move/from16 v0, p3

    neg-int v11, v0

    add-int/lit16 v11, v11, 0x168

    rem-int/lit16 v7, v11, 0x168

    .line 51
    .local v7, "rotate":I
    int-to-float v11, v7

    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 52
    sparse-switch v7, :sswitch_data_0

    .line 66
    :goto_1
    :sswitch_0
    move-object/from16 v0, p5

    iget-object v11, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterX:F

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    mul-float/2addr v13, v8

    sub-float/2addr v12, v13

    float-to-int v12, v12

    int-to-float v12, v12

    move-object/from16 v0, p5

    iget v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterY:F

    move-object/from16 v0, p5

    iget-object v14, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 68
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

    .line 66
    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    const-string v11, "Canvas drawBitmap"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 73
    const-string v11, "Canvas save"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v9, 0x0

    .line 77
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v10, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    const-string v11, "stream created"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 79
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v5, v11, v12, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    const-string v11, "compress done"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 82
    const-string v11, "toByteArray done"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    if-eqz v10, :cond_1

    .line 88
    :try_start_3
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 89
    const-string v11, "stream.close"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "rotate":I
    .end local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    :cond_2
    const-string v11, "done"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 100
    .end local v1    # "bmOrig":Landroid/graphics/Bitmap;
    :goto_3
    return-object v6

    .line 28
    .end local v5    # "mutableBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "ret":[B
    .end local v8    # "scale":F
    :cond_3
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

    goto/16 :goto_0

    .line 56
    .restart local v1    # "bmOrig":Landroid/graphics/Bitmap;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "mutableBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "ret":[B
    .restart local v7    # "rotate":I
    .restart local v8    # "scale":F
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

    goto/16 :goto_1

    .line 93
    .end local v1    # "bmOrig":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "rotate":I
    :catch_0
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v11, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 95
    const-string v11, "error"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    :cond_4
    const-string v11, "done"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_3

    .line 59
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

    goto/16 :goto_1

    .line 97
    .end local v1    # "bmOrig":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "rotate":I
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    :cond_5
    const-string v12, "done"

    invoke-interface {v4, v12}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    throw v11

    .line 62
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

    goto/16 :goto_1

    .line 83
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Throwable;
    :goto_4
    :try_start_8
    sget-object v11, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 85
    const-string v11, "error"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 87
    if-eqz v9, :cond_1

    .line 88
    :try_start_9
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 89
    const-string v11, "stream.close"

    invoke-interface {v4, v11}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 87
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v11

    :goto_5
    if-eqz v9, :cond_6

    .line 88
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 89
    const-string v12, "stream.close"

    invoke-interface {v4, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    :cond_6
    throw v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 87
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 83
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v3

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static mergeBrandLogoThmbnail(Landroid/graphics/Bitmap;ILcom/android/camera/util/Size;Lcom/android/camera/brandlogo/BrandLogoViewData;Z)Landroid/graphics/Bitmap;
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
    .param p3, "brandLogoViewData"    # Lcom/android/camera/brandlogo/BrandLogoViewData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isPreviewOnly"    # Z

    .prologue
    .line 104
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v12

    const-string v13, "BrandLogoImageUtil.mergeWatermarkThmbnail"

    invoke-virtual {v12, v13}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    .line 105
    .local v3, "guard":Lcom/android/camera/stats/profiler/Profile;
    const/4 v6, 0x0

    .line 106
    .local v6, "mutableBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 107
    .local v11, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 108
    .local v4, "height":I
    if-eqz p4, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 109
    .local v8, "scale":F
    :goto_0
    sget-object v12, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mergeBrandLogoThmbnail scale = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    :try_start_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 113
    const-string v12, "mutableBitmap created"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 116
    const-string v12, "bmOrig recycle"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    float-to-int v13, v13

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v8

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 119
    .local v9, "scaledBitmap":Landroid/graphics/Bitmap;
    const-string v12, "scaledBitmap created"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 120
    sget-object v13, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    :goto_1
    invoke-static {v13, v12}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    if-eqz v9, :cond_0

    .line 124
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v1, "canvas":Landroid/graphics/Canvas;
    const-string v12, "Canvas created"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 127
    move/from16 v0, p1

    neg-int v12, v0

    add-int/lit16 v12, v12, 0x168

    rem-int/lit16 v7, v12, 0x168

    .line 128
    .local v7, "rotate":I
    int-to-float v12, v7

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 129
    const/4 v5, 0x0

    .line 130
    .local v5, "left":I
    const/4 v10, 0x0

    .line 131
    .local v10, "top":I
    sparse-switch v7, :sswitch_data_0

    .line 153
    :goto_2
    int-to-float v12, v5

    int-to-float v13, v10

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v9, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    const-string v12, "Canvas drawBitmap"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 157
    const-string v12, "Canvas save"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "left":I
    .end local v7    # "rotate":I
    .end local v10    # "top":I
    :cond_0
    const-string v12, "done"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 165
    .end local v9    # "scaledBitmap":Landroid/graphics/Bitmap;
    :goto_3
    return-object v6

    .line 108
    .end local v8    # "scale":F
    :cond_1
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

    goto/16 :goto_0

    .line 120
    .restart local v8    # "scale":F
    .restart local v9    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 133
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "left":I
    .restart local v7    # "rotate":I
    .restart local v10    # "top":I
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterX:F

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

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 134
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterY:F

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v10, v12

    .line 135
    goto :goto_2

    .line 137
    :sswitch_1
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterX:F

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 138
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterY:F

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

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v10, v12

    .line 139
    const/4 v12, 0x0

    neg-int v13, v11

    int-to-float v13, v13

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 159
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "left":I
    .end local v7    # "rotate":I
    .end local v9    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "top":I
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v12, Lcom/android/camera/brandlogo/BrandLogoImageUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 161
    const-string v12, "error"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    const-string v12, "done"

    invoke-interface {v3, v12}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 142
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

    .line 143
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterX:F

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

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 144
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterY:F

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v10, v12

    .line 145
    goto/16 :goto_2

    .line 147
    :sswitch_3
    neg-int v12, v4

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterX:F

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 149
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterY:F

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

    iget-object v13, v0, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

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

    goto/16 :goto_2

    .line 163
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

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
