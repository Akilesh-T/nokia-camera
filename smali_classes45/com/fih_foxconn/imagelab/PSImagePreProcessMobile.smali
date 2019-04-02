.class public Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;
.super Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
.source "PSImagePreProcessMobile.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_JAVA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;->mIsSupported:Z

    .line 14
    invoke-static {}, Lcom/fih_foxconn/imagelab/PSInit;->init()V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;-><init>()V

    .line 19
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;->nativeSetFace(IIII)V

    .line 20
    return-void
.end method


# virtual methods
.method public doPSImagePreprocess(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V
    .locals 7
    .param p1, "psImage"    # Lcom/fih_foxconn/imagelab/AbstractPSImage;

    .prologue
    .line 24
    move-object v6, p1

    check-cast v6, Lcom/fih_foxconn/imagelab/PSImageMobile;

    .line 25
    .local v6, "image":Lcom/fih_foxconn/imagelab/PSImageMobile;
    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getInputImgArgb()[I

    move-result-object v1

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getInputImg1D()[F

    move-result-object v2

    .line 26
    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getPSWidth()I

    move-result v3

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getPSHeight()I

    move-result v4

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getChannels()I

    move-result v5

    move-object v0, p0

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;->doPSImagePreprocess([I[FIII)V

    .line 27
    return-void
.end method

.method public doPSImagePreprocess([I[FIII)V
    .locals 0
    .param p1, "argb"    # [I
    .param p2, "out"    # [F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "channels"    # I

    .prologue
    .line 31
    invoke-virtual/range {p0 .. p5}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;->nativeDoPSImagePreprocess([I[FIII)V

    .line 32
    return-void
.end method

.method public getFace()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .local v0, "face":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;->nativeGetFace(Landroid/graphics/Rect;)V

    .line 42
    return-object v0
.end method

.method protected native nativeDoPSImagePreprocess([I[FIII)V
.end method

.method public setFace(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;->nativeSetFace(IIII)V

    .line 36
    return-void
.end method
