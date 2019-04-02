.class public Lcom/fih_foxconn/imagelab/PSImagePreProcessLite;
.super Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
.source "PSImagePreProcessLite.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;-><init>()V

    .line 6
    return-void
.end method

.method private native nativeDoPSImagePreprocess([I[BIII)V
.end method


# virtual methods
.method public doPSImagePreprocess(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V
    .locals 7
    .param p1, "psImage"    # Lcom/fih_foxconn/imagelab/AbstractPSImage;

    .prologue
    .line 10
    move-object v6, p1

    check-cast v6, Lcom/fih_foxconn/imagelab/PSImageLite;

    .line 11
    .local v6, "image":Lcom/fih_foxconn/imagelab/PSImageLite;
    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageLite;->getInputImgArgb()[I

    move-result-object v1

    const-class v0, [B

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageLite;->getInputImg1D()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 12
    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageLite;->getPSWidth()I

    move-result v3

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageLite;->getPSHeight()I

    move-result v4

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageLite;->getChannels()I

    move-result v5

    move-object v0, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSImagePreProcessLite;->doPSImagePreprocess([I[BIII)V

    .line 13
    return-void
.end method

.method public doPSImagePreprocess([I[BIII)V
    .locals 0
    .param p1, "argb"    # [I
    .param p2, "out"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "channels"    # I

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/fih_foxconn/imagelab/PSImagePreProcessLite;->nativeDoPSImagePreprocess([I[BIII)V

    .line 18
    return-void
.end method
