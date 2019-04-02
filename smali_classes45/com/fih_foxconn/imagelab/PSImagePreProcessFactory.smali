.class public Lcom/fih_foxconn/imagelab/PSImagePreProcessFactory;
.super Ljava/lang/Object;
.source "PSImagePreProcessFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/fih_foxconn/imagelab/AbstractPSModel;)Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    .locals 2
    .param p0, "model"    # Lcom/fih_foxconn/imagelab/AbstractPSModel;

    .prologue
    .line 7
    instance-of v1, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;

    if-eqz v1, :cond_1

    .line 8
    instance-of v1, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;

    if-eqz v1, :cond_0

    .line 9
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImagePreProcessFastSNPE;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessFastSNPE;-><init>()V

    .line 23
    .local v0, "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    :goto_0
    return-object v0

    .line 11
    .end local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    :cond_0
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImagePreProcessSNPE;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessSNPE;-><init>()V

    .restart local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    goto :goto_0

    .line 13
    .end local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    :cond_1
    instance-of v1, p0, Lcom/fih_foxconn/imagelab/PSModelLite;

    if-eqz v1, :cond_2

    .line 14
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImagePreProcessLite;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessLite;-><init>()V

    .restart local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    goto :goto_0

    .line 15
    .end local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    :cond_2
    instance-of v1, p0, Lcom/fih_foxconn/imagelab/PSModelMobile;

    if-eqz v1, :cond_3

    .line 16
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;-><init>()V

    .restart local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    goto :goto_0

    .line 17
    .end local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    :cond_3
    instance-of v1, p0, Lcom/fih_foxconn/imagelab/PSModelFastMobile;

    if-eqz v1, :cond_4

    .line 18
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImagePreProcessFastMobile;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessFastMobile;-><init>()V

    .restart local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    goto :goto_0

    .line 20
    .end local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    :cond_4
    new-instance v0, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/PSImagePreProcessMobile;-><init>()V

    .restart local v0    # "psImagePreProcess":Lcom/fih_foxconn/imagelab/AbstractPSImagePreProcess;
    goto :goto_0
.end method
