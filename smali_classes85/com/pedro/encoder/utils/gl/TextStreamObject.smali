.class public Lcom/pedro/encoder/utils/gl/TextStreamObject;
.super Lcom/pedro/encoder/utils/gl/StreamObjectBase;
.source "TextStreamObject.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextStreamObject"


# instance fields
.field private imageBitmap:Landroid/graphics/Bitmap;

.field private numFrames:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/pedro/encoder/utils/gl/StreamObjectBase;-><init>()V

    .line 21
    return-void
.end method

.method private textAsBitmap(Ljava/lang/String;FI)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "textColor"    # I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 50
    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 51
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 54
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v0, v6

    .line 55
    .local v0, "baseline":F
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 56
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float/2addr v6, v0

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 57
    .local v2, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 58
    .local v3, "image":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v1, p1, v6, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    return-object v3
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/TextStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/TextStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/pedro/encoder/utils/gl/TextStreamObject;->numFrames:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/TextStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;FI)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "textColor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/pedro/encoder/utils/gl/TextStreamObject;->numFrames:I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/pedro/encoder/utils/gl/TextStreamObject;->textAsBitmap(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/utils/gl/TextStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    .line 36
    const-string v0, "TextStreamObject"

    const-string v1, "finish load text"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/TextStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    return-void
.end method

.method public resize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pedro/encoder/utils/gl/TextStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/utils/gl/TextStreamObject;->imageBitmap:Landroid/graphics/Bitmap;

    .line 42
    return-void
.end method

.method public updateFrame()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
