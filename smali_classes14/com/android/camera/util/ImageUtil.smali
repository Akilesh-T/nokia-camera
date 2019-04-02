.class public Lcom/android/camera/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final JPEG_QUALITY:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mirrorImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 45
    move-object v0, p0

    .line 47
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 48
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 49
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v2, 0x10e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_1

    .line 50
    :cond_0
    invoke-virtual {v5, v8, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 54
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 55
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 56
    .local v4, "height":I
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 57
    .local v7, "mirroredBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    return-object v7

    .line 52
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v7    # "mirroredBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v5, v6, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 59
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "mirror image bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static mirrorImage([BI)[B
    .locals 11
    .param p0, "originalData"    # [B
    .param p1, "orientation"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 19
    array-length v2, p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 22
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v2, 0x10e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_1

    .line 24
    :cond_0
    invoke-virtual {v5, v10, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 28
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 29
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 30
    .local v4, "height":I
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 31
    .local v8, "mirroredBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v8, v1, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 38
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 39
    .local v7, "byteArray":[B
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 40
    return-object v7

    .line 26
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v7    # "byteArray":[B
    .end local v8    # "mirroredBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {v5, v6, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 33
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "mirror image bitmap is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
