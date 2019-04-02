.class public Lcom/fih_foxconn/imagelab/PSImageFastSNPE;
.super Lcom/fih_foxconn/imagelab/PSImageSNPE;
.source "PSImageFastSNPE.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/fih_foxconn/imagelab/PSImageSNPE;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZ)V
    .locals 6
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    .line 13
    const/16 v4, 0x96

    const/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSImageSNPE;-><init>(Landroid/graphics/Bitmap;IZII)V

    .line 14
    return-void
.end method
