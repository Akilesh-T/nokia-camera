.class final Lcom/pedro/encoder/utils/gl/gif/SimpleBitmapProvider;
.super Ljava/lang/Object;
.source "SimpleBitmapProvider.java"

# interfaces
.implements Lcom/pedro/encoder/utils/gl/gif/GifDecoder$BitmapProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 8
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public obtainByteArray(I)[B
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 16
    new-array v0, p1, [B

    return-object v0
.end method

.method public obtainIntArray(I)[I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 24
    new-array v0, p1, [I

    return-object v0
.end method

.method public release(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    return-void
.end method

.method public release([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 21
    return-void
.end method

.method public release([I)V
    .locals 0
    .param p1, "array"    # [I

    .prologue
    .line 29
    return-void
.end method
