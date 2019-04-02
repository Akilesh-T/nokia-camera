.class public Lcom/pedro/encoder/utils/gl/ImageStreamObject;
.super Lcom/pedro/encoder/utils/gl/StreamObjectBase;
.source "ImageStreamObject.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageStreamObject"


# instance fields
.field private imageBitmap:Landroid/graphics/Bitmap;

.field private numFrames:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/pedro/encoder/utils/gl/StreamObjectBase;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->numFrames:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public load(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageBitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->numFrames:I

    .line 34
    const-string v0, "ImageStreamObject"

    const-string v1, "finish load image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    return-void
.end method

.method public resize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method

.method public updateFrame()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
