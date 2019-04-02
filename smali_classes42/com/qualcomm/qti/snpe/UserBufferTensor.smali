.class public abstract Lcom/qualcomm/qti/snpe/UserBufferTensor;
.super Ljava/lang/Object;
.source "UserBufferTensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    }
.end annotation


# instance fields
.field private final mSize:I

.field private final mStrides:[I


# direct methods
.method constructor <init>(I[I)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "strides"    # [I

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor;->mSize:I

    .line 22
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor;->mStrides:[I

    .line 23
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor;->mStrides:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract getEncoding()Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor;->mSize:I

    return v0
.end method

.method public getStrides()[I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor;->mStrides:[I

    return-object v0
.end method

.method public abstract release()V
.end method
