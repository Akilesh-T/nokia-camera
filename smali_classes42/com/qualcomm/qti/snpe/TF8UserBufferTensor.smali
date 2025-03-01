.class public abstract Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
.super Lcom/qualcomm/qti/snpe/UserBufferTensor;
.source "TF8UserBufferTensor.java"


# static fields
.field public static final TF8_MAX_VAL:I = 0xff

.field public static final TF8_MIN_VAL:I


# direct methods
.method protected constructor <init>(I[I)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "strides"    # [I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/snpe/UserBufferTensor;-><init>(I[I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getEncoding()Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->TF8:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    return-object v0
.end method

.method public getMax()F
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getQuantizedStepSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getStepExactly0()I

    move-result v1

    rsub-int v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getMin()F
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getQuantizedStepSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getStepExactly0()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public abstract getQuantizedStepSize()F
.end method

.method public abstract getStepExactly0()I
.end method
