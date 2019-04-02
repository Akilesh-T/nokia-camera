.class public Lcom/fih_foxconn/imagelab/PSImageBuilder;
.super Ljava/lang/Object;
.source "PSImageBuilder.java"


# instance fields
.field inputBmp:Landroid/graphics/Bitmap;

.field isHwRotate:Z

.field jpegRotation:I

.field model:Lcom/fih_foxconn/imagelab/AbstractPSModel;


# direct methods
.method public constructor <init>(Lcom/fih_foxconn/imagelab/AbstractPSModel;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "psModel"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .line 15
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->inputBmp:Landroid/graphics/Bitmap;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->jpegRotation:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->isHwRotate:Z

    .line 18
    return-void
.end method


# virtual methods
.method public build()Lcom/fih_foxconn/imagelab/AbstractPSImage;
    .locals 6

    .prologue
    .line 42
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    instance-of v2, v2, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    instance-of v2, v2, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;

    if-eqz v2, :cond_0

    .line 45
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;

    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->inputBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->jpegRotation:I

    iget-boolean v4, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->isHwRotate:Z

    invoke-direct {v0, v2, v3, v4}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;-><init>(Landroid/graphics/Bitmap;IZ)V

    .line 49
    .local v0, "image":Lcom/fih_foxconn/imagelab/PSImageSNPE;
    :goto_0
    move-object v1, v0

    .line 64
    .end local v0    # "image":Lcom/fih_foxconn/imagelab/PSImageSNPE;
    .local v1, "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    :goto_1
    return-object v1

    .line 47
    .end local v1    # "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    :cond_0
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImageSNPE;

    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->inputBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->jpegRotation:I

    iget-boolean v4, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->isHwRotate:Z

    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    invoke-virtual {v5}, Lcom/fih_foxconn/imagelab/AbstractPSModel;->getNumOfInputChannels()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fih_foxconn/imagelab/PSImageSNPE;-><init>(Landroid/graphics/Bitmap;IZI)V

    .restart local v0    # "image":Lcom/fih_foxconn/imagelab/PSImageSNPE;
    goto :goto_0

    .line 50
    .end local v0    # "image":Lcom/fih_foxconn/imagelab/PSImageSNPE;
    :cond_1
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    instance-of v2, v2, Lcom/fih_foxconn/imagelab/PSModelLite;

    if-eqz v2, :cond_2

    .line 51
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImageLite;

    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->inputBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->jpegRotation:I

    iget-boolean v4, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->isHwRotate:Z

    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    invoke-virtual {v5}, Lcom/fih_foxconn/imagelab/AbstractPSModel;->getNumOfInputChannels()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fih_foxconn/imagelab/PSImageLite;-><init>(Landroid/graphics/Bitmap;IZI)V

    .line 52
    .local v0, "image":Lcom/fih_foxconn/imagelab/PSImageLite;
    move-object v1, v0

    .line 53
    .restart local v1    # "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    goto :goto_1

    .end local v0    # "image":Lcom/fih_foxconn/imagelab/PSImageLite;
    .end local v1    # "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    :cond_2
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    instance-of v2, v2, Lcom/fih_foxconn/imagelab/PSModelMobile;

    if-eqz v2, :cond_3

    .line 54
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImageMobile;

    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->inputBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->jpegRotation:I

    iget-boolean v4, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->isHwRotate:Z

    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    invoke-virtual {v5}, Lcom/fih_foxconn/imagelab/AbstractPSModel;->getNumOfInputChannels()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZI)V

    .line 55
    .local v0, "image":Lcom/fih_foxconn/imagelab/PSImageMobile;
    move-object v1, v0

    .line 56
    .restart local v1    # "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    goto :goto_1

    .end local v0    # "image":Lcom/fih_foxconn/imagelab/PSImageMobile;
    .end local v1    # "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    :cond_3
    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    instance-of v2, v2, Lcom/fih_foxconn/imagelab/PSModelFastMobile;

    if-eqz v2, :cond_4

    .line 57
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImageFastMobile;

    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->inputBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->jpegRotation:I

    iget-boolean v4, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->isHwRotate:Z

    invoke-direct {v0, v2, v3, v4}, Lcom/fih_foxconn/imagelab/PSImageFastMobile;-><init>(Landroid/graphics/Bitmap;IZ)V

    .line 58
    .local v0, "image":Lcom/fih_foxconn/imagelab/PSImageFastMobile;
    move-object v1, v0

    .line 59
    .restart local v1    # "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    goto :goto_1

    .line 60
    .end local v0    # "image":Lcom/fih_foxconn/imagelab/PSImageFastMobile;
    .end local v1    # "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    :cond_4
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImageMobile;

    iget-object v2, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->inputBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->jpegRotation:I

    iget-boolean v4, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->isHwRotate:Z

    iget-object v5, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    invoke-virtual {v5}, Lcom/fih_foxconn/imagelab/AbstractPSModel;->getNumOfInputChannels()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZI)V

    .line 61
    .local v0, "image":Lcom/fih_foxconn/imagelab/PSImageMobile;
    move-object v1, v0

    .restart local v1    # "psImage":Lcom/fih_foxconn/imagelab/AbstractPSImage;
    goto :goto_1
.end method

.method public setHwRotate(Z)Lcom/fih_foxconn/imagelab/PSImageBuilder;
    .locals 0
    .param p1, "hwRotate"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->isHwRotate:Z

    .line 37
    return-object p0
.end method

.method public setInputBmp(Landroid/graphics/Bitmap;)Lcom/fih_foxconn/imagelab/PSImageBuilder;
    .locals 0
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->inputBmp:Landroid/graphics/Bitmap;

    .line 27
    return-object p0
.end method

.method public setJpegRotation(I)Lcom/fih_foxconn/imagelab/PSImageBuilder;
    .locals 0
    .param p1, "jpegRotation"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->jpegRotation:I

    .line 32
    return-object p0
.end method

.method public setModel(Lcom/fih_foxconn/imagelab/AbstractPSModel;)Lcom/fih_foxconn/imagelab/PSImageBuilder;
    .locals 0
    .param p1, "model"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSImageBuilder;->model:Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .line 22
    return-object p0
.end method
