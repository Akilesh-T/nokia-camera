.class public Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;
.super Ljava/lang/Object;
.source "TensorAttributesImpl.java"

# interfaces
.implements Lcom/qualcomm/qti/snpe/TensorAttributes;


# instance fields
.field private final mAlignments:[I

.field private final mDimensions:[I

.field private final mElementSize:I

.field private final mEncoding:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V
    .locals 1
    .param p1, "bundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mDimensions:[I

    .line 24
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mAlignments:[I

    .line 25
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mElementSize:I

    .line 26
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->getEncoding(I)Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mEncoding:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    .line 27
    return-void
.end method

.method private getEncoding(I)Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    .locals 5
    .param p1, "ordinal"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->values()[Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 51
    .local v0, "e":Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    iget v4, v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->ordinal:I

    if-ne p1, v4, :cond_0

    .line 55
    .end local v0    # "e":Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    :goto_1
    return-object v0

    .line 50
    .restart local v0    # "e":Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "e":Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    :cond_1
    sget-object v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->UNKNOWN:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    goto :goto_1
.end method


# virtual methods
.method public getAlignments()[I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mAlignments:[I

    return-object v0
.end method

.method public getDims()[I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mDimensions:[I

    return-object v0
.end method

.method public getElementSize()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mElementSize:I

    return v0
.end method

.method public getEncoding()Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mEncoding:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    return-object v0
.end method
