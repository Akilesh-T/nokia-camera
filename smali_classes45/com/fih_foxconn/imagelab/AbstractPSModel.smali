.class public abstract Lcom/fih_foxconn/imagelab/AbstractPSModel;
.super Ljava/lang/Object;
.source "AbstractPSModel.java"


# instance fields
.field protected modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumOfInputChannels()I
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSModel;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v0

    return v0
.end method

.method public abstract inference(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V
.end method

.method public release()V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method public setModelInputType(Lcom/fih_foxconn/imagelab/PSModelInputType;)V
    .locals 0
    .param p1, "type"    # Lcom/fih_foxconn/imagelab/PSModelInputType;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/AbstractPSModel;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    return-void
.end method
