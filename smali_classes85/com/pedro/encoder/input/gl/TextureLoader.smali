.class public Lcom/pedro/encoder/input/gl/TextureLoader;
.super Ljava/lang/Object;
.source "TextureLoader.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x12
.end annotation


# instance fields
.field private gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

.field private imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

.field private textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

.field private textureId:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public load()[I
    .locals 5

    .prologue
    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 46
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/TextStreamObject;->getNumFrames()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    .line 48
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/TextStreamObject;->getNumFrames()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    invoke-static {v1, v2, v3}, Lcom/pedro/encoder/utils/gl/GlUtil;->createTextures(I[II)V

    .line 49
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    aget v1, v1, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 50
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/TextStreamObject;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 51
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/TextStreamObject;->recycle()V

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    return-object v1

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->getNumFrames()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    .line 54
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->getNumFrames()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    invoke-static {v1, v2, v3}, Lcom/pedro/encoder/utils/gl/GlUtil;->createTextures(I[II)V

    .line 55
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    aget v1, v1, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 56
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 57
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/ImageStreamObject;->recycle()V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/GifStreamObject;->getNumFrames()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    .line 60
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/GifStreamObject;->getNumFrames()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    invoke-static {v1, v2, v3}, Lcom/pedro/encoder/utils/gl/GlUtil;->createTextures(I[II)V

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/GifStreamObject;->getNumFrames()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    aget v1, v1, v0

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 63
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/GifStreamObject;->getGifBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/GifStreamObject;->recycle()V

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, -0x1

    aput v2, v1, v3

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textureId:[I

    goto :goto_0
.end method

.method public setGifStreamObject(Lcom/pedro/encoder/utils/gl/GifStreamObject;)V
    .locals 1
    .param p1, "gifStreamObject"    # Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-object p1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .line 35
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .line 36
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .line 37
    return-void
.end method

.method public setImageStreamObject(Lcom/pedro/encoder/utils/gl/ImageStreamObject;)V
    .locals 1
    .param p1, "imageStreamObject"    # Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .prologue
    const/4 v0, 0x0

    .line 40
    iput-object p1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .line 41
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .line 42
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .line 43
    return-void
.end method

.method public setTextStreamObject(Lcom/pedro/encoder/utils/gl/TextStreamObject;)V
    .locals 1
    .param p1, "textStreamObject"    # Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .prologue
    const/4 v0, 0x0

    .line 28
    iput-object p1, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->textStreamObject:Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .line 29
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->gifStreamObject:Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .line 30
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/TextureLoader;->imageStreamObject:Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .line 31
    return-void
.end method
