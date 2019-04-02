.class public Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;
.super Ljava/lang/Object;
.source "FIHSelfieBokehImage.java"


# instance fields
.field public exifOrientation:I

.field public mData:[B

.field public mFormat:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

.field public mHeight:I

.field public mIsHwRotate:Z

.field public mUVStride:I

.field public mWidth:I

.field public mYStride:I


# direct methods
.method public constructor <init>([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "yStride"    # I
    .param p5, "uvStride"    # I
    .param p6, "format"    # Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->initialize([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;IZ)V

    .line 22
    return-void
.end method

.method public constructor <init>([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;I)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "yStride"    # I
    .param p5, "uvStride"    # I
    .param p6, "format"    # Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;
    .param p7, "exifOrientation"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->initialize([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;IZ)V

    .line 29
    return-void
.end method

.method public constructor <init>([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;IZ)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "yStride"    # I
    .param p5, "uvStride"    # I
    .param p6, "format"    # Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;
    .param p7, "exifOrientation"    # I
    .param p8, "isHwRotate"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct/range {p0 .. p8}, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->initialize([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;IZ)V

    .line 37
    return-void
.end method

.method private initialize([BIIIILcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;IZ)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "yStride"    # I
    .param p5, "uvStride"    # I
    .param p6, "format"    # Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;
    .param p7, "exifOrientation"    # I
    .param p8, "isHwRotate"    # Z

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mData:[B

    .line 41
    iput p2, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mWidth:I

    .line 42
    iput p3, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mHeight:I

    .line 43
    iput p4, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mYStride:I

    .line 44
    iput p5, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mUVStride:I

    .line 45
    iput-object p6, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mFormat:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    .line 46
    iput p7, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->exifOrientation:I

    .line 47
    iput-boolean p8, p0, Lcom/fih_foxconn/imagelab/FIHSelfieBokehImage;->mIsHwRotate:Z

    .line 48
    return-void
.end method
