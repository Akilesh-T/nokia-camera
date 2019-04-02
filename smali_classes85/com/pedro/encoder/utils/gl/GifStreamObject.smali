.class public Lcom/pedro/encoder/utils/gl/GifStreamObject;
.super Lcom/pedro/encoder/utils/gl/StreamObjectBase;
.source "GifStreamObject.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GifStreamObject"


# instance fields
.field private currentGifFrame:I

.field private gifBitmaps:[Landroid/graphics/Bitmap;

.field private gifDelayFrames:[I

.field private numFrames:I

.field private startDelayFrame:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/pedro/encoder/utils/gl/StreamObjectBase;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getGifBitmaps()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGifDelayFrames()[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifDelayFrames:[I

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->numFrames:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inputStreamGif"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;

    invoke-direct {v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;-><init>()V

    .line 38
    .local v0, "gifDecoder":Lcom/pedro/encoder/utils/gl/gif/GifDecoder;
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->read(Ljava/io/InputStream;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 39
    const-string v2, "GifStreamObject"

    const-string v3, "read gif ok"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->getFrameCount()I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->numFrames:I

    .line 41
    iget v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->numFrames:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifDelayFrames:[I

    .line 42
    iget v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->numFrames:I

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifBitmaps:[Landroid/graphics/Bitmap;

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->numFrames:I

    if-ge v1, v2, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->advance()Z

    .line 45
    iget-object v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifBitmaps:[Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 46
    iget-object v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifDelayFrames:[I

    invoke-virtual {v0}, Lcom/pedro/encoder/utils/gl/gif/GifDecoder;->getNextDelay()I

    move-result v3

    aput v3, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    const-string v2, "GifStreamObject"

    const-string v3, "finish load gif frames"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 50
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "read gif error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->numFrames:I

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->numFrames:I

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifBitmaps:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public updateFrame()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 83
    iget-wide v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->startDelayFrame:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->startDelayFrame:J

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->startDelayFrame:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->gifDelayFrames:[I

    iget v3, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->currentGifFrame:I

    aget v2, v2, v3

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 87
    iget v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->currentGifFrame:I

    iget v1, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->numFrames:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->currentGifFrame:I

    .line 92
    :goto_0
    iput-wide v4, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->startDelayFrame:J

    .line 94
    :cond_1
    iget v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->currentGifFrame:I

    return v0

    .line 90
    :cond_2
    iget v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->currentGifFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pedro/encoder/utils/gl/GifStreamObject;->currentGifFrame:I

    goto :goto_0
.end method
