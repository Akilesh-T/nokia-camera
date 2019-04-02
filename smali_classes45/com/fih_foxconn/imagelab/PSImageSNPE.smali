.class public Lcom/fih_foxconn/imagelab/PSImageSNPE;
.super Lcom/fih_foxconn/imagelab/AbstractPSImage;
.source "PSImageSNPE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;,
        Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;


# instance fields
.field protected final PS_SNPE_BUFFER:I

.field private final TF8_BITWIDTH:I

.field private final TF8_SIZE:I

.field protected img1D:[F

.field final inputBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final inputTensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mStepExactly0:I

.field private final mStepSize:F

.field final outputBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final outputTensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;",
            ">;"
        }
    .end annotation
.end field

.field protected rstImg1D:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x4

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/fih_foxconn/imagelab/PSImageSNPE;-><init>(Landroid/graphics/Bitmap;IZI)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZI)V
    .locals 7
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z
    .param p4, "numOfInputChannels"    # I

    .prologue
    .line 44
    const/16 v4, 0x12c

    const/16 v5, 0x190

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/fih_foxconn/imagelab/PSImageSNPE;-><init>(Landroid/graphics/Bitmap;IZIII)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZII)V
    .locals 7
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z
    .param p4, "ps_w"    # I
    .param p5, "ps_h"    # I

    .prologue
    .line 48
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fih_foxconn/imagelab/PSImageSNPE;-><init>(Landroid/graphics/Bitmap;IZIII)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZIII)V
    .locals 7
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z
    .param p4, "ps_w"    # I
    .param p5, "ps_h"    # I
    .param p6, "numOfInputChannels"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSImage;-><init>()V

    .line 20
    iput v5, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->TF8_SIZE:I

    .line 21
    const/16 v0, 0x8

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->TF8_BITWIDTH:I

    .line 22
    iput v4, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->mStepExactly0:I

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->mStepSize:F

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputTensors:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputTensors:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputBuffers:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputBuffers:Ljava/util/Map;

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->width:I

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->height:I

    .line 55
    iput p2, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->jpegRotation:I

    .line 56
    iput-boolean p3, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->isHwRotate:Z

    .line 58
    new-array v0, v6, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->MEAN_RGB:[D

    .line 59
    iput p6, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->NUM_PS_INPUT_CHANNELS:I

    .line 60
    add-int/lit8 v0, p4, -0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, p4

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_SNPE_BUFFER:I

    .line 62
    iput p4, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    .line 63
    iput p5, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    .line 65
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->NUM_PS_INPUT_CHANNELS:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->img1D:[F

    .line 66
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_SNPE_BUFFER:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->rstImg1D:[B

    .line 67
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->argbPixels:[I

    .line 69
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    .line 70
    sget-object v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v1, "jpegRotation: %d isHwRotate: %s ps_w: %d, ps_h: %d, ch: %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->prepareInputBmpArgb(Landroid/graphics/Bitmap;)V

    .line 73
    return-void

    .line 58
    nop

    :array_0
    .array-data 8
        0x405fe00000000000L    # 127.5
        0x405fe00000000000L    # 127.5
        0x405fe00000000000L    # 127.5
    .end array-data
.end method

.method private dequantize(Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;Ljava/nio/ByteBuffer;)[F
    .locals 8
    .param p1, "tensor"    # Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 294
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 295
    .local v2, "outputSize":I
    new-array v3, v2, [B

    .line 296
    .local v3, "quantizedArray":[B
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 298
    new-array v0, v2, [F

    .line 299
    .local v0, "dequantizedArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 300
    aget-byte v5, v3, v1

    and-int/lit16 v4, v5, 0xff

    .line 301
    .local v4, "quantizedValue":I
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getMin()F

    move-result v5

    int-to-float v6, v4

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getQuantizedStepSize()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v0, v1

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v4    # "quantizedValue":I
    :cond_0
    return-object v0
.end method

.method private getTf8Encoding([F)Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;
    .locals 12
    .param p1, "array"    # [F

    .prologue
    const/4 v10, 0x0

    .line 308
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;-><init>(Lcom/fih_foxconn/imagelab/PSImageSNPE;Lcom/fih_foxconn/imagelab/PSImageSNPE$1;)V

    .line 310
    .local v0, "encoding":Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 311
    .local v4, "num_steps":I
    invoke-virtual {p0, p1}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->getMin([F)F

    move-result v6

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 312
    .local v3, "new_min":F
    invoke-virtual {p0, p1}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->getMax([F)F

    move-result v6

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 314
    .local v2, "new_max":F
    const v1, 0x3dcccccd    # 0.1f

    .line 315
    .local v1, "min_range":F
    add-float v6, v3, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 316
    sub-float v6, v2, v3

    int-to-float v7, v4

    div-float/2addr v6, v7

    iput v6, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->delta:F

    .line 318
    cmpg-float v6, v3, v10

    if-gez v6, :cond_0

    cmpl-float v6, v2, v10

    if-lez v6, :cond_0

    .line 319
    neg-float v6, v3

    iget v7, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->delta:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v5, v6

    .line 320
    .local v5, "quantized_zero":F
    int-to-double v6, v4

    const-wide/16 v8, 0x0

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v5, v6

    .line 321
    neg-float v6, v5

    iput v6, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->offset:F

    .line 326
    .end local v5    # "quantized_zero":F
    :goto_0
    iget v6, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->delta:F

    iget v7, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->offset:F

    mul-float/2addr v6, v7

    iput v6, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->min:F

    .line 327
    iget v6, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->delta:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->min:F

    add-float/2addr v6, v7

    iput v6, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->max:F

    .line 329
    return-object v0

    .line 323
    :cond_0
    iget v6, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->delta:F

    div-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->offset:F

    goto :goto_0
.end method

.method private quantize([FLjava/nio/ByteBuffer;Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;)V
    .locals 6
    .param p1, "src"    # [F
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "tf8Params"    # Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->getTf8Encoding([F)Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;

    move-result-object v1

    .line 281
    .local v1, "encoding":Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;
    array-length v4, p1

    new-array v3, v4, [B

    .line 282
    .local v3, "quantized":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 283
    aget v4, p1, v2

    iget v5, v1, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->max:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v1, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->min:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 284
    .local v0, "data":F
    iget v4, v1, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->delta:F

    div-float v4, v0, v4

    iget v5, v1, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->offset:F

    sub-float v0, v4, v5

    .line 285
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "data":F
    :cond_0
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 289
    iget v4, v1, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->delta:F

    iput v4, p3, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->stepSize:F

    .line 290
    iget v4, v1, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->min:F

    neg-float v4, v4

    iget v5, v1, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Encoding;->delta:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p3, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->stepExactly0:I

    .line 291
    return-void
.end method

.method private resolveTf8Params(Lcom/qualcomm/qti/snpe/TensorAttributes;)Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;
    .locals 8
    .param p1, "attribute"    # Lcom/qualcomm/qti/snpe/TensorAttributes;

    .prologue
    .line 333
    invoke-interface {p1}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v5

    array-length v3, v5

    .line 334
    .local v3, "rank":I
    new-array v4, v3, [I

    .line 335
    .local v4, "strides":[I
    add-int/lit8 v5, v3, -0x1

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 336
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 337
    add-int/lit8 v5, v2, -0x1

    aget v6, v4, v2

    invoke-interface {p1}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v7

    aget v7, v7, v2

    mul-int/2addr v6, v7

    aput v6, v4, v5

    .line 336
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 340
    :cond_0
    const/4 v0, 0x1

    .line 341
    .local v0, "bufferSize":I
    invoke-interface {p1}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    aget v1, v6, v5

    .line 342
    .local v1, "dim":I
    mul-int/2addr v0, v1

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 345
    .end local v1    # "dim":I
    :cond_1
    new-instance v5, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;

    invoke-direct {v5, p0, v0, v4}, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;-><init>(Lcom/fih_foxconn/imagelab/PSImageSNPE;I[I)V

    return-object v5
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->releaseTensors()V

    .line 83
    return-void
.end method

.method public getBlendBitmap()Landroid/graphics/Bitmap;
    .locals 20

    .prologue
    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->getRstBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, "maskBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    .line 102
    .local v9, "argbBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 103
    .local v4, "in_width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 104
    .local v8, "in_height":I
    mul-int v3, v4, v8

    new-array v2, v3, [I

    .line 105
    .local v2, "mask":[I
    mul-int v3, v4, v8

    new-array v10, v3, [I

    .line 107
    .local v10, "argb":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 108
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 110
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    mul-int v3, v4, v8

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    .line 111
    aget v3, v10, v19

    const v5, 0xffffff

    and-int/2addr v3, v5

    aget v5, v2, v19

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    aput v3, v10, v19

    .line 110
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 114
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 115
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v10

    move v14, v4

    move/from16 v17, v4

    move/from16 v18, v8

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 117
    return-object v11
.end method

.method public getInputBuffers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputBuffers:Ljava/util/Map;

    return-object v0
.end method

.method public getInputImg1D()[F
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->img1D:[F

    return-object v0
.end method

.method public getInputTensors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputTensors:Ljava/util/Map;

    return-object v0
.end method

.method getMax([F)F
    .locals 5
    .param p1, "array"    # [F

    .prologue
    .line 359
    const/4 v0, 0x1

    .line 360
    .local v0, "max":F
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 361
    .local v1, "value":F
    cmpl-float v4, v1, v0

    if-lez v4, :cond_0

    .line 362
    move v0, v1

    .line 360
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "value":F
    :cond_1
    return v0
.end method

.method getMin([F)F
    .locals 5
    .param p1, "array"    # [F

    .prologue
    .line 349
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 350
    .local v0, "min":F
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 351
    .local v1, "value":F
    cmpg-float v4, v1, v0

    if-gez v4, :cond_0

    .line 352
    move v0, v1

    .line 350
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "value":F
    :cond_1
    return v0
.end method

.method public getOutputBuffers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputBuffers:Ljava/util/Map;

    return-object v0
.end method

.method public getOutputTensors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputTensors:Ljava/util/Map;

    return-object v0
.end method

.method public getRgbBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 90
    iget v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, "mutableBmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->argbPixels:[I

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    iget v6, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    iget v7, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 92
    return-object v0
.end method

.method public getRstBitmap()Landroid/graphics/Bitmap;
    .locals 25

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    mul-int/2addr v4, v5

    new-array v3, v4, [I

    .line 126
    .local v3, "pixels":[I
    const/16 v22, 0x0

    .line 127
    .local v22, "pixelsIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->MEAN_RGB:[D

    const/4 v5, 0x0

    aget-wide v20, v4, v5

    .line 128
    .local v20, "mean_r":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->MEAN_RGB:[D

    const/4 v5, 0x1

    aget-wide v18, v4, v5

    .line 129
    .local v18, "mean_g":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->MEAN_RGB:[D

    const/4 v5, 0x2

    aget-wide v16, v4, v5

    .line 130
    .local v16, "mean_b":D
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    if-ge v14, v4, :cond_1

    .line 132
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    if-ge v12, v4, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    mul-int/2addr v4, v14

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->NUM_PS_INPUT_CHANNELS:I

    mul-int v23, v4, v5

    .line 135
    .local v23, "pos":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->rstImg1D:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    mul-int/2addr v5, v14

    add-int/2addr v5, v12

    aget-byte v4, v4, v5

    mul-int/lit16 v11, v4, 0xff

    .line 136
    .local v11, "A":I
    and-int/lit16 v4, v11, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v11, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v11, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v11, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v22

    .line 142
    add-int/lit8 v22, v22, 0x1

    .line 132
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 130
    .end local v11    # "A":I
    .end local v23    # "pos":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 146
    .end local v12    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 147
    .local v2, "mutableBmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 150
    move-object v15, v2

    .line 152
    .local v15, "maskBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->isHwRotate:Z

    if-eqz v4, :cond_6

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_5

    const/4 v13, 0x1

    .line 154
    .local v13, "isLandscapeBuffer":Z
    :goto_2
    if-eqz v13, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v8, v4, v5

    .line 157
    .local v8, "resize_h":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    sub-int v6, v4, v8

    .line 159
    .local v6, "resize_top":I
    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v2, v4, v6, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 184
    .end local v6    # "resize_top":I
    .end local v8    # "resize_h":I
    .end local v13    # "isLandscapeBuffer":Z
    :cond_2
    :goto_3
    move-object/from16 v24, v15

    .line 185
    .local v24, "resultBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    if-eq v4, v5, :cond_4

    .line 186
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v15, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 189
    :cond_4
    return-object v24

    .line 153
    .end local v24    # "resultBmp":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 162
    :cond_6
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 163
    .local v9, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->jpegRotation:I

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 164
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->jpegRotation:I

    sparse-switch v4, :sswitch_data_0

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputRGB:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v8, v4, v5

    .line 175
    .restart local v8    # "resize_h":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    sub-int v6, v4, v8

    .line 177
    .restart local v6    # "resize_top":I
    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v10, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    goto :goto_3

    .line 167
    .end local v6    # "resize_top":I
    .end local v8    # "resize_h":I
    :sswitch_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 168
    goto/16 :goto_3

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public getRstImg1D()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->rstImg1D:[B

    return-object v0
.end method

.method public prepareInputTensors(Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;)V
    .locals 10
    .param p1, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->getNeuralNetwork()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v0

    .line 214
    .local v0, "neuralNetwork":Lcom/qualcomm/qti/snpe/NeuralNetwork;
    invoke-virtual {p1}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->getInputLayer()Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "inputLayer":Ljava/lang/String;
    invoke-interface {v0, v7}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;

    move-result-object v6

    .line 217
    .local v6, "inputAttributes":Lcom/qualcomm/qti/snpe/TensorAttributes;
    invoke-direct {p0, v6}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->resolveTf8Params(Lcom/qualcomm/qti/snpe/TensorAttributes;)Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;

    move-result-object v8

    .line 218
    .local v8, "inputParams":Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputBuffers:Ljava/util/Map;

    iget v2, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->size:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->img1D:[F

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputBuffers:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v1, v8}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->quantize([FLjava/nio/ByteBuffer;Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;)V

    .line 228
    iget-object v9, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputTensors:Ljava/util/Map;

    iget v1, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->size:I

    iget-object v2, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->strides:[I

    iget v3, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->stepExactly0:I

    iget v4, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->stepSize:F

    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputBuffers:Ljava/util/Map;

    .line 231
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 228
    invoke-interface/range {v0 .. v5}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    move-result-object v1

    invoke-interface {v9, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public prepareOutputTensors(Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;)V
    .locals 10
    .param p1, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->getNeuralNetwork()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v0

    .line 237
    .local v0, "neuralNetwork":Lcom/qualcomm/qti/snpe/NeuralNetwork;
    invoke-virtual {p1}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->getOutputLayer()Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "outputLayer":Ljava/lang/String;
    invoke-interface {v0, v7}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;

    move-result-object v6

    .line 240
    .local v6, "outputAttributes":Lcom/qualcomm/qti/snpe/TensorAttributes;
    invoke-direct {p0, v6}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->resolveTf8Params(Lcom/qualcomm/qti/snpe/TensorAttributes;)Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;

    move-result-object v8

    .line 241
    .local v8, "outputParams":Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;
    const/4 v1, 0x0

    iput v1, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->stepExactly0:I

    .line 242
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->stepSize:F

    .line 246
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputBuffers:Ljava/util/Map;

    iget v2, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->size:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v9, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputTensors:Ljava/util/Map;

    iget v1, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->size:I

    iget-object v2, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->strides:[I

    iget v3, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->stepExactly0:I

    iget v4, v8, Lcom/fih_foxconn/imagelab/PSImageSNPE$Tf8Params;->stepSize:F

    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputBuffers:Ljava/util/Map;

    .line 250
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 247
    invoke-interface/range {v0 .. v5}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    move-result-object v1

    invoke-interface {v9, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method public processQuantizedOutput(Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;)V
    .locals 14
    .param p1, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->getOutputLayer()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "outputLayer":Ljava/lang/String;
    iget-object v11, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputBuffers:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 260
    .local v0, "dbgBuf":Ljava/nio/ByteBuffer;
    iget-object v11, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputTensors:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    iget-object v12, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputBuffers:Ljava/util/Map;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v11, v12}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->dequantize(Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;Ljava/nio/ByteBuffer;)[F

    move-result-object v6

    .line 262
    .local v6, "outputValues":[F
    iget v11, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_SNPE_BUFFER:I

    div-int/lit8 v1, v11, 0x2

    .line 263
    .local v1, "gap":I
    iget v11, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    iget v12, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_SNPE_BUFFER:I

    add-int v7, v11, v12

    .line 264
    .local v7, "output_w":I
    const/4 v8, 0x2

    .line 265
    .local v8, "pixelStride":I
    const/4 v9, 0x0

    .line 266
    .local v9, "rstIdx":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    iget v11, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_HEIGHT:I

    if-ge v4, v11, :cond_2

    .line 267
    move v2, v1

    .local v2, "i":I
    :goto_1
    iget v11, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    iget v12, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_SNPE_BUFFER:I

    add-int/2addr v11, v12

    sub-int/2addr v11, v1

    if-ge v2, v11, :cond_1

    .line 268
    iget v11, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_WIDTH:I

    iget v12, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->PS_SNPE_BUFFER:I

    add-int/2addr v11, v12

    mul-int/2addr v11, v4

    add-int/2addr v11, v2

    mul-int v3, v11, v8

    .line 272
    .local v3, "idx":I
    iget-object v12, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->rstImg1D:[B

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rstIdx":I
    .local v10, "rstIdx":I
    aget v11, v6, v3

    add-int/lit8 v13, v3, 0x1

    aget v13, v6, v13

    cmpl-float v11, v11, v13

    if-lez v11, :cond_0

    const/4 v11, 0x0

    :goto_2
    aput-byte v11, v12, v9

    .line 267
    add-int/lit8 v2, v2, 0x1

    move v9, v10

    .end local v10    # "rstIdx":I
    .restart local v9    # "rstIdx":I
    goto :goto_1

    .line 272
    .end local v9    # "rstIdx":I
    .restart local v10    # "rstIdx":I
    :cond_0
    const/4 v11, 0x1

    goto :goto_2

    .line 266
    .end local v3    # "idx":I
    .end local v10    # "rstIdx":I
    .restart local v9    # "rstIdx":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public releaseTensors()V
    .locals 3

    .prologue
    .line 426
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputTensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputTensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    .line 428
    .local v0, "tensor":Lcom/qualcomm/qti/snpe/UserBufferTensor;
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/UserBufferTensor;->release()V

    goto :goto_0

    .line 430
    .end local v0    # "tensor":Lcom/qualcomm/qti/snpe/UserBufferTensor;
    :cond_0
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->inputTensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputTensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputTensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    .line 436
    .restart local v0    # "tensor":Lcom/qualcomm/qti/snpe/UserBufferTensor;
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/UserBufferTensor;->release()V

    goto :goto_1

    .line 438
    .end local v0    # "tensor":Lcom/qualcomm/qti/snpe/UserBufferTensor;
    :cond_2
    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSImageSNPE;->outputTensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 440
    :cond_3
    return-void
.end method
