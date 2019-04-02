.class public Lcom/fih_foxconn/imagelab/PSImageFastMobile;
.super Lcom/fih_foxconn/imagelab/PSImageMobile;
.source "PSImageFastMobile.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 14
    const/16 v4, 0x96

    const/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZII)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZ)V
    .locals 6
    .param p1, "inputBmp"    # Landroid/graphics/Bitmap;
    .param p2, "jpegRotation"    # I
    .param p3, "isHwRotate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 17
    const/16 v4, 0x96

    const/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSImageMobile;-><init>(Landroid/graphics/Bitmap;IZII)V

    .line 18
    return-void
.end method
