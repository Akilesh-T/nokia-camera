.class public Lcom/android/camera/captureintent/PictureDecoder;
.super Ljava/lang/Object;
.source "PictureDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BIIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "downSampleFactor"    # I
    .param p2, "pictureOrientation"    # I
    .param p3, "needMirror"    # Z

    .prologue
    const/4 v1, 0x0

    .line 36
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 37
    .local v7, "opts":Landroid/graphics/BitmapFactory$Options;
    iput p1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    array-length v2, p0

    invoke-static {p0, v1, v2, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, "pictureBitmap":Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 52
    .end local v0    # "pictureBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 43
    .restart local v0    # "pictureBitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 45
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p3, :cond_1

    .line 46
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 49
    :cond_1
    if-eqz p2, :cond_2

    .line 50
    int-to-float v2, p2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 53
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    .line 52
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
