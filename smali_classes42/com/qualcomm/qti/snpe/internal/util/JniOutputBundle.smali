.class public final Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.super Ljava/lang/Object;
.source "JniOutputBundle.java"


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "nativeBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    .line 17
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 18
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 19
    return-void
.end method


# virtual methods
.method public readFloat()F
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public readFloatArray()[F
    .locals 4

    .prologue
    .line 42
    iget-object v3, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 43
    .local v2, "size":I
    new-array v0, v2, [F

    .line 44
    .local v0, "array":[F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readFloat()F

    move-result v3

    aput v3, v0, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method public readInt()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readIntArray()[I
    .locals 4

    .prologue
    .line 29
    iget-object v3, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 30
    .local v2, "size":I
    new-array v0, v2, [I

    .line 31
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v3

    aput v3, v0, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    iget-object v2, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 23
    .local v1, "stringLength":I
    new-array v0, v1, [B

    .line 24
    .local v0, "chars":[B
    iget-object v2, p0, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 25
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method
