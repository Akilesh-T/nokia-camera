.class public Lcom/fih_foxconn/imagelab/PSImagePreProcessFastSNPE;
.super Lcom/fih_foxconn/imagelab/PSImagePreProcessSNPE;
.source "PSImagePreProcessFastSNPE.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessSNPE;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public doPSImagePreprocess(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V
    .locals 7
    .param p1, "psImage"    # Lcom/fih_foxconn/imagelab/AbstractPSImage;

    .prologue
    .line 11
    move-object v6, p1

    check-cast v6, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;

    .line 12
    .local v6, "image":Lcom/fih_foxconn/imagelab/PSImageFastSNPE;
    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->getInputImgArgb()[I

    move-result-object v1

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->getInputImg1D()[F

    move-result-object v2

    .line 13
    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->getPSWidth()I

    move-result v3

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->getPSHeight()I

    move-result v4

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->getChannels()I

    move-result v5

    move-object v0, p0

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSImagePreProcessFastSNPE;->doPSImagePreprocess([I[FIII)V

    .line 14
    return-void
.end method
