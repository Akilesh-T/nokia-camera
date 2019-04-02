.class public Lcom/thirdparty/imagelab/EverPicSelfie;
.super Ljava/lang/Object;
.source "EverPicSelfie.java"


# static fields
.field private static final BITMAP_SCALE:F = 1.0f

.field private static final BLEND_DOWNSAMPLE_RATE:I = 0x2

.field private static final BLUR_RADIUS:F = 25.0f

.field private static final DEBUG_PATH:Ljava/lang/String; = "/storage/emulated/0/test/"

.field public static final DEBUG_TITLE:Ljava/lang/String; = "psmodelsdk-v2.0.3/PicSelfie"

.field private static final IS_SAVE_DEBUG_IMG:Z = false

.field private static final IS_SCALE_SAMPLE:Z = true

.field private static final JPEG_QUALITY:I = 0x5f

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private bokehLevel:I

.field private imgHeight:I

.field private imgWidth:I

.field private mIsSupported:Z

.field private orientation:I

.field private rawFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-class v1, Lcom/thirdparty/imagelab/EverPicSelfie;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "pixelArrayFormat"    # I
    .param p4, "screenOrientation"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isSelfieBokehCaptureUsingImageLabSolution()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqZeissBokeh()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->mIsSupported:Z

    .line 68
    iget-boolean v0, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->mIsSupported:Z

    if-nez v0, :cond_2

    .line 73
    :goto_1
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_2
    iput p1, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->imgWidth:I

    .line 70
    iput p2, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->imgHeight:I

    .line 71
    iput p3, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->rawFormat:I

    .line 72
    iput p4, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->orientation:I

    goto :goto_1
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 426
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {p0, p1, v0}, Lcom/thirdparty/imagelab/EverPicSelfie;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "blurRadius"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 430
    .local v7, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 432
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 434
    .local v1, "inputBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 436
    .local v2, "outputBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 437
    .local v3, "rs":Landroid/renderscript/RenderScript;
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 438
    .local v4, "theIntrinsic":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-static {v3, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 439
    .local v5, "tmpIn":Landroid/renderscript/Allocation;
    invoke-static {v3, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v6

    .line 440
    .local v6, "tmpOut":Landroid/renderscript/Allocation;
    invoke-virtual {v4, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 441
    invoke-virtual {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 442
    invoke-virtual {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 443
    invoke-virtual {v6, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 445
    return-object v2
.end method

.method public static convertBitmapToJpeg(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 450
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 451
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 452
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static convertYUVToBitmap(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x1

    .line 331
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 332
    .local v4, "rs":Landroid/renderscript/RenderScript;
    new-instance v7, Landroid/renderscript/Type$Builder;

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    array-length v8, p1

    invoke-virtual {v7, v8}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v6

    .line 333
    .local v6, "yuvType":Landroid/renderscript/Type$Builder;
    invoke-virtual {v6}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v4, v7, v9}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 334
    .local v0, "in":Landroid/renderscript/Allocation;
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 336
    new-instance v7, Landroid/renderscript/Type$Builder;

    invoke-static {v4}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v7, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v3

    .line 337
    .local v3, "rgbaType":Landroid/renderscript/Type$Builder;
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v4, v7, v9}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 339
    .local v1, "out":Landroid/renderscript/Allocation;
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v5

    .line 340
    .local v5, "yuvToRgbIntrinsic":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    invoke-virtual {v5, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 341
    invoke-virtual {v5, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 342
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 343
    .local v2, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 344
    return-object v2
.end method

.method private static getBlurValue(Landroid/graphics/Bitmap;)F
    .locals 9
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const v8, 0x49742400    # 1000000.0f

    div-float v6, v7, v8

    .line 359
    .local v6, "res":F
    const/high16 v0, 0x41c80000    # 25.0f

    .line 360
    .local v0, "MAX_BLUR_VALUE":F
    const/high16 v1, 0x41980000    # 19.0f

    .line 361
    .local v1, "MID_BLUR_VALUE":F
    const/high16 v2, 0x41500000    # 13.0f

    .line 362
    .local v2, "MIN_BLUR_VALUE":F
    const/high16 v4, 0x41000000    # 8.0f

    .line 363
    .local v4, "RES_8M":F
    const/high16 v3, 0x40400000    # 3.0f

    .line 364
    .local v3, "RES_3M":F
    const/high16 v5, 0x41500000    # 13.0f

    .line 366
    .local v5, "blurValue":F
    const/high16 v7, 0x41000000    # 8.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_0

    .line 367
    const/high16 v5, 0x41c80000    # 25.0f

    .line 373
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " blur value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/thirdparty/imagelab/EverPicSelfie;->logW(Ljava/lang/String;)V

    .line 374
    return v5

    .line 368
    :cond_0
    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 369
    const/high16 v5, 0x41980000    # 19.0f

    goto :goto_0

    .line 371
    :cond_1
    const/high16 v5, 0x41500000    # 13.0f

    goto :goto_0
.end method

.method public static getYUVRealImage([BII)[B
    .locals 8
    .param p0, "srcYUVImg"    # [B
    .param p1, "imgWidth"    # I
    .param p2, "imgHeight"    # I

    .prologue
    .line 408
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isAlignedYUVImageSource()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    move-object v1, p0

    .line 412
    .local v1, "alignedYUVImg":[B
    int-to-double v4, p1

    :try_start_0
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getAlignmentWidth()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getAlignmentWidth()D

    move-result-wide v6

    double-to-int v5, v6

    mul-int v0, v4, v5

    .line 413
    .local v0, "alignW":I
    invoke-static {v1, p1, p2, v0}, Lcom/android/camera/util/DebugYuvDumpUtil;->getYuvData([BIII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 420
    .end local v0    # "alignW":I
    .end local v1    # "alignedYUVImg":[B
    :goto_0
    return-object v3

    .line 416
    .restart local v1    # "alignedYUVImg":[B
    :catch_0
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getYUVRealImage DebugYuvDumpUtil.getYuvData fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/thirdparty/imagelab/EverPicSelfie;->logW(Ljava/lang/String;)V

    .end local v1    # "alignedYUVImg":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, p0

    .line 420
    goto :goto_0
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 500
    sget-object v0, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "psmodelsdk-v2.0.3/PicSelfie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static logDuration(Ljava/lang/String;J)V
    .locals 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "startTimeMS"    # J

    .prologue
    .line 497
    sget-object v0, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "psmodelsdk-v2.0.3/PicSelfie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration ms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method private static logW(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 499
    sget-object v0, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "psmodelsdk-v2.0.3/PicSelfie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public static saveBytes([BLjava/lang/String;)Z
    .locals 1
    .param p0, "data"    # [B
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method private static segmentation(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "mask"    # Landroid/graphics/Bitmap;

    .prologue
    .line 349
    invoke-static {p1}, Lcom/thirdparty/imagelab/EverPicSelfie;->getBlurValue(Landroid/graphics/Bitmap;)F

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/thirdparty/imagelab/EverPicSelfie;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 350
    .local v1, "bitmap_blur":Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2}, Lcom/thirdparty/imagelab/EverPicSelfie;->sourceIn(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, "bitmap_a":Landroid/graphics/Bitmap;
    invoke-static {p0, v0, v1}, Lcom/thirdparty/imagelab/EverPicSelfie;->sourceOver(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static sourceIn(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "dst"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 379
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 381
    .local v0, "height":I
    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 382
    .local v1, "outputBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 383
    .local v2, "rs":Landroid/renderscript/RenderScript;
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/renderscript/ScriptIntrinsicBlend;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlend;

    move-result-object v3

    .line 384
    .local v3, "theIntrinsic":Landroid/renderscript/ScriptIntrinsicBlend;
    invoke-static {v2, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 385
    .local v4, "tmpIn":Landroid/renderscript/Allocation;
    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 386
    .local v5, "tmpOut":Landroid/renderscript/Allocation;
    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcIn(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 387
    invoke-virtual {v5, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 389
    return-object v1
.end method

.method private static sourceOver(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "dst"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 393
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 395
    .local v0, "height":I
    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 396
    .local v1, "outputBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 397
    .local v2, "rs":Landroid/renderscript/RenderScript;
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/renderscript/ScriptIntrinsicBlend;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlend;

    move-result-object v3

    .line 398
    .local v3, "theIntrinsic":Landroid/renderscript/ScriptIntrinsicBlend;
    invoke-static {v2, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 399
    .local v4, "tmpIn":Landroid/renderscript/Allocation;
    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 400
    .local v5, "tmpOut":Landroid/renderscript/Allocation;
    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ScriptIntrinsicBlend;->forEachSrcOver(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 401
    invoke-virtual {v5, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 403
    return-object v1
.end method


# virtual methods
.method public getBokehType(Landroid/content/Context;)Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v6

    const-string v7, "default_scope"

    const-string v8, "pref_zeiss_bokeh_key"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "bokehType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080451

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "creamyType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080455

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "swirlyType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080452

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "dotType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080454

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "starType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080453

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "heartType":Ljava/lang/String;
    sget-object v6, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bokehType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    sget-object v6, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "bokehType Z_PLANAR"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    sget-object v6, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_PLANAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    .line 210
    :goto_0
    return-object v6

    .line 187
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    sget-object v6, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "bokehType Z_BIOTAR"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    sget-object v6, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_BIOTAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 194
    sget-object v6, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "bokehType dot"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    sget-object v6, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_CIRCLE:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 199
    sget-object v6, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "bokehType star"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    sget-object v6, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_STAR:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 204
    sget-object v6, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "bokehType heart"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    sget-object v6, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->Z_HEART:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    goto :goto_0

    .line 209
    :cond_4
    sget-object v6, Lcom/thirdparty/imagelab/EverPicSelfie;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "bokehType unknown"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    sget-object v6, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;->ADABOKEH:Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    goto :goto_0
.end method

.method public getModelType(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    .locals 3
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 133
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->NORMAL:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 136
    .local v0, "type":Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    :goto_1
    return-object v0

    .line 128
    .end local v0    # "type":Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    :pswitch_0
    const-string v2, "ROO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 130
    :pswitch_1
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->FAST:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 131
    .restart local v0    # "type":Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    goto :goto_1

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x13db2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getPlatform(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    .locals 3
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->OTHERS:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 82
    .local v0, "platform":Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 97
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->OTHERS:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 100
    :goto_1
    return-object v0

    .line 82
    :sswitch_0
    const-string v2, "DRG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "A1N"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "B2N"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "NB1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "AOP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "PNX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "RHD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "CASTLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "PDA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 91
    :pswitch_0
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->QCT:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 92
    goto :goto_1

    .line 94
    :pswitch_1
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->MTK:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 95
    goto :goto_1

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0xfa3e -> :sswitch_1
        0xfde2 -> :sswitch_4
        0xfe1e -> :sswitch_2
        0x10979 -> :sswitch_0
        0x12cfd -> :sswitch_3
        0x134cd -> :sswitch_8
        0x1361a -> :sswitch_5
        0x13cce -> :sswitch_6
        0x760fa8f8 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRuntimeTarget(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;
    .locals 3
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->CPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 105
    .local v0, "runtime":Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 120
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->CPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 123
    :goto_1
    return-object v0

    .line 105
    :sswitch_0
    const-string v2, "DRG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "A1N"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "B2N"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "NB1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "AOP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "PNX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "RHD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "CASTLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "PDA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 114
    :pswitch_0
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->GPU_FLOAT16:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 115
    goto :goto_1

    .line 117
    :pswitch_1
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->DSP:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 118
    goto :goto_1

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0xfa3e -> :sswitch_1
        0xfde2 -> :sswitch_4
        0xfe1e -> :sswitch_2
        0x10979 -> :sswitch_0
        0x12cfd -> :sswitch_3
        0x134cd -> :sswitch_8
        0x1361a -> :sswitch_5
        0x13cce -> :sswitch_6
        0x760fa8f8 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processImage(III[B)[B
    .locals 14
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "pixelArrayFormat"    # I
    .param p4, "data"    # [B

    .prologue
    .line 140
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v10

    .line 142
    .local v10, "context":Landroid/content/Context;
    iget-boolean v3, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->mIsSupported:Z

    if-eqz v3, :cond_0

    .line 143
    invoke-static {}, Lcom/android/camera/util/config/ProductConfigCreator;->create()Lcom/android/camera/util/config/ProductConfig;

    move-result-object v12

    .line 144
    .local v12, "productConfig":Lcom/android/camera/util/config/ProductConfig;
    iget-object v3, v12, Lcom/android/camera/util/config/ProductConfig;->PRODUCT_NAME:Ljava/lang/String;

    .line 146
    invoke-virtual {p0, v3}, Lcom/thirdparty/imagelab/EverPicSelfie;->getPlatform(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    move-result-object v3

    iget-object v4, v12, Lcom/android/camera/util/config/ProductConfig;->PRODUCT_NAME:Ljava/lang/String;

    .line 147
    invoke-virtual {p0, v4}, Lcom/thirdparty/imagelab/EverPicSelfie;->getRuntimeTarget(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    move-result-object v4

    iget-object v5, v12, Lcom/android/camera/util/config/ProductConfig;->PRODUCT_NAME:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, v5}, Lcom/thirdparty/imagelab/EverPicSelfie;->getModelType(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    move-result-object v5

    .line 144
    invoke-static {v10, v3, v4, v5}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->createInstance(Landroid/content/Context;Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;)Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;

    move-result-object v11

    .line 150
    .local v11, "fihSelfieBokeh":Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    int-to-double v4, p1

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    mul-double/2addr v4, v8

    double-to-int v6, v4

    .line 151
    .local v6, "w_stride":I
    move/from16 v0, p2

    int-to-double v4, v0

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    mul-double/2addr v4, v8

    double-to-int v7, v4

    .line 153
    .local v7, "h_stride":I
    invoke-virtual {p0, v10}, Lcom/thirdparty/imagelab/EverPicSelfie;->getBokehType(Landroid/content/Context;)Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->setBokehType(Lcom/fih_foxconn/imagelab/FIHSelfieBokeh$SBType;)V

    .line 155
    new-instance v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;

    sget-object v8, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->NV21:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    iget v9, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->orientation:I

    move-object/from16 v3, p4

    move v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;-><init>([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;I)V

    .line 158
    .local v2, "fihSelfieBokehImage":Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;
    invoke-virtual {v11, v2}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->process(Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;)I

    .line 159
    iget-object v13, v2, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mData:[B

    .line 160
    .local v13, "result":[B
    invoke-virtual {v11}, Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;->release()V

    .line 167
    .end local v2    # "fihSelfieBokehImage":Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;
    .end local v6    # "w_stride":I
    .end local v7    # "h_stride":I
    .end local v11    # "fihSelfieBokeh":Lcom/fih_foxconn/imagelab/FIHSelfieBokeh;
    .end local v12    # "productConfig":Lcom/android/camera/util/config/ProductConfig;
    .end local v13    # "result":[B
    :goto_0
    return-object v13

    :cond_0
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, p1, v1}, Lcom/thirdparty/imagelab/EverPicSelfie;->getYUVRealImage([BII)[B

    move-result-object v3

    move/from16 v0, p2

    invoke-static {v10, v3, p1, v0}, Lcom/thirdparty/imagelab/EverPicSelfie;->convertYUVToBitmap(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/thirdparty/imagelab/EverPicSelfie;->convertBitmapToJpeg(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public setBokehLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->mIsSupported:Z

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iput p1, p0, Lcom/thirdparty/imagelab/EverPicSelfie;->bokehLevel:I

    goto :goto_0
.end method
