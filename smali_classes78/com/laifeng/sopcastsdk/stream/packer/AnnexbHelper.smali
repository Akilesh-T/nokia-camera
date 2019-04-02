.class public Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;
.super Ljava/lang/Object;
.source "AnnexbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;,
        Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;
    }
.end annotation


# static fields
.field public static final AccessUnitDelimiter:I = 0x9

.field public static final IDR:I = 0x5

.field public static final NonIDR:I = 0x1

.field public static final PPS:I = 0x8

.field public static final SEI:I = 0x6

.field public static final SPS:I = 0x7


# instance fields
.field private mListener:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

.field private mPps:[B

.field private mSps:[B

.field private mUploadPpsSps:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mUploadPpsSps:Z

    return-void
.end method

.method private annexbDemux(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B
    .locals 9
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 143
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;-><init>(Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;)V

    .line 144
    .local v0, "annexbSearch":Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;
    invoke-direct {p0, v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->avcStartWithAnnexb(Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 146
    iget-boolean v6, v0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->match:Z

    if-eqz v6, :cond_0

    iget v6, v0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->startCode:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 147
    :cond_0
    const/4 v2, 0x0

    .line 167
    :goto_0
    return-object v2

    .line 150
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v6, v0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->startCode:I

    if-ge v3, v6, :cond_2

    .line 151
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 155
    .local v1, "frameBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 156
    .local v4, "pos":I
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_3

    .line 157
    invoke-direct {p0, v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->avcStartWithAnnexb(Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 158
    iget-boolean v6, v0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->match:Z

    if-eqz v6, :cond_4

    .line 164
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int v5, v6, v4

    .line 165
    .local v5, "size":I
    new-array v2, v5, [B

    .line 166
    .local v2, "frameBytes":[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 161
    .end local v2    # "frameBytes":[B
    .end local v5    # "size":I
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_2
.end method

.method private avcStartWithAnnexb(Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4
    .param p1, "as"    # Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 178
    iput-boolean v1, p1, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->match:Z

    .line 179
    iput v1, p1, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->startCode:I

    .line 180
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 181
    .local v0, "pos":I
    :goto_0
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-ge v0, v1, :cond_0

    .line 183
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_1
    return-void

    .line 188
    :cond_1
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v3, :cond_2

    .line 189
    iput-boolean v3, p1, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->match:Z

    .line 190
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbSearch;->startCode:I

    goto :goto_1

    .line 193
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private buildNaluHeader(I)[B
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 198
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static isAccessUnitDelimiter([B)Z
    .locals 4
    .param p0, "frame"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    array-length v3, p0

    if-ge v3, v1, :cond_0

    .line 245
    :goto_0
    return v2

    .line 244
    :cond_0
    aget-byte v3, p0, v2

    and-int/lit8 v0, v3, 0x1f

    .line 245
    .local v0, "nal_unit_type":I
    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isKeyFrame([B)Z
    .locals 4
    .param p1, "frame"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    array-length v3, p1

    if-ge v3, v1, :cond_0

    .line 234
    :goto_0
    return v2

    .line 233
    :cond_0
    aget-byte v3, p1, v2

    and-int/lit8 v0, v3, 0x1f

    .line 234
    .local v0, "nal_unit_type":I
    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isPps([B)Z
    .locals 4
    .param p1, "frame"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    array-length v3, p1

    if-ge v3, v1, :cond_0

    .line 223
    :goto_0
    return v2

    .line 222
    :cond_0
    aget-byte v3, p1, v2

    and-int/lit8 v0, v3, 0x1f

    .line 223
    .local v0, "nal_unit_type":I
    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isSps([B)Z
    .locals 4
    .param p1, "frame"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    array-length v3, p1

    if-ge v3, v1, :cond_0

    .line 212
    :goto_0
    return v2

    .line 211
    :cond_0
    aget-byte v3, p1, v2

    and-int/lit8 v0, v3, 0x1f

    .line 212
    .local v0, "nal_unit_type":I
    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public analyseVideoData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v11, 0x0

    .line 74
    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v9, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v3, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .line 80
    .local v5, "isKeyFrame":Z
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    iget v9, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v10, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->annexbDemux(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B

    move-result-object v2

    .line 82
    .local v2, "frame":[B
    if-nez v2, :cond_5

    .line 83
    const-string v8, "SopCast"

    const-string v9, "annexb not match."

    invoke-static {v8, v9}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v2    # "frame":[B
    :cond_1
    iget-object v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mPps:[B

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mSps:[B

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mListener:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mUploadPpsSps:Z

    if-eqz v8, :cond_3

    .line 111
    iget-object v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mListener:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

    if-eqz v8, :cond_2

    .line 112
    iget-object v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mListener:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

    iget-object v9, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mSps:[B

    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mPps:[B

    invoke-interface {v8, v9, v10}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;->onSpsPps([B[B)V

    .line 114
    :cond_2
    iput-boolean v11, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mUploadPpsSps:Z

    .line 116
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mListener:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

    if-nez v8, :cond_9

    .line 134
    :cond_4
    :goto_1
    return-void

    .line 87
    .restart local v2    # "frame":[B
    :cond_5
    invoke-static {v2}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->isAccessUnitDelimiter([B)Z

    move-result v8

    if-nez v8, :cond_0

    .line 91
    invoke-direct {p0, v2}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->isPps([B)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 92
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mPps:[B

    goto :goto_0

    .line 96
    :cond_6
    invoke-direct {p0, v2}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->isSps([B)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 97
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mSps:[B

    goto :goto_0

    .line 101
    :cond_7
    invoke-direct {p0, v2}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->isKeyFrame([B)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 102
    const/4 v5, 0x1

    .line 106
    :goto_2
    array-length v8, v2

    invoke-direct {p0, v8}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->buildNaluHeader(I)[B

    move-result-object v6

    .line 107
    .local v6, "naluHeader":[B
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v6    # "naluHeader":[B
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 119
    .end local v2    # "frame":[B
    :cond_9
    const/4 v7, 0x0

    .line 120
    .local v7, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_a

    .line 121
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 122
    .restart local v2    # "frame":[B
    array-length v8, v2

    add-int/2addr v7, v8

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 124
    .end local v2    # "frame":[B
    :cond_a
    new-array v1, v7, [B

    .line 125
    .local v1, "data":[B
    const/4 v0, 0x0

    .line 126
    .local v0, "currentSize":I
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_b

    .line 127
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 128
    .restart local v2    # "frame":[B
    array-length v8, v2

    invoke-static {v2, v11, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    array-length v8, v2

    add-int/2addr v0, v8

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 131
    .end local v2    # "frame":[B
    :cond_b
    iget-object v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mListener:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

    if-eqz v8, :cond_4

    .line 132
    iget-object v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mListener:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

    invoke-interface {v8, v1, v5}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;->onVideo([BZ)V

    goto :goto_1
.end method

.method public setAnnexbNaluListener(Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mListener:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

    .line 58
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mListener:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;

    .line 63
    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mPps:[B

    .line 64
    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mSps:[B

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->mUploadPpsSps:Z

    .line 66
    return-void
.end method
