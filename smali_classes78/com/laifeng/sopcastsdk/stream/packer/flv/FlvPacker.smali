.class public Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;
.super Ljava/lang/Object;
.source "FlvPacker.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/packer/Packer;
.implements Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final AUDIO:I = 0x4

.field public static final FIRST_AUDIO:I = 0x3

.field public static final FIRST_VIDEO:I = 0x2

.field public static final HEADER:I = 0x0

.field public static final INTER_FRAME:I = 0x6

.field public static final KEY_FRAME:I = 0x5

.field public static final METADATA:I = 0x1


# instance fields
.field private isHeaderWrite:Z

.field private isKeyFrameWrite:Z

.field private mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

.field private mAudioSampleRate:I

.field private mAudioSampleSize:I

.field private mIsStereo:Z

.field private mStartTime:J

.field private mVideoFps:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    .line 52
    return-void
.end method

.method private writeFirstAudioTag()V
    .locals 7

    .prologue
    .line 173
    const/4 v2, 0x4

    .line 174
    .local v2, "firstAudioPacketSize":I
    add-int/lit8 v1, v2, 0xb

    .line 175
    .local v1, "dataSize":I
    add-int/lit8 v3, v1, 0x4

    .line 176
    .local v3, "size":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 177
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v5}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFlvTagHeader(Ljava/nio/ByteBuffer;III)V

    .line 178
    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAudioSampleRate:I

    iget-boolean v5, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mIsStereo:Z

    iget v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAudioSampleSize:I

    invoke-static {v0, v4, v5, v6}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFirstAudioTag(Ljava/nio/ByteBuffer;IZI)V

    .line 179
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    .line 181
    return-void
.end method

.method private writeFirstVideoTag([B[B)V
    .locals 7
    .param p1, "sps"    # [B
    .param p2, "pps"    # [B

    .prologue
    .line 162
    array-length v4, p1

    add-int/lit8 v4, v4, 0x10

    array-length v5, p2

    add-int v2, v4, v5

    .line 163
    .local v2, "firstPacketSize":I
    add-int/lit8 v1, v2, 0xb

    .line 164
    .local v1, "dataSize":I
    add-int/lit8 v3, v1, 0x4

    .line 165
    .local v3, "size":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v5}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFlvTagHeader(Ljava/nio/ByteBuffer;III)V

    .line 167
    invoke-static {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFirstVideoTag(Ljava/nio/ByteBuffer;[B[B)V

    .line 168
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 169
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    .line 170
    return-void
.end method

.method private writeFlvHeader()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 142
    const/16 v1, 0xd

    .line 143
    .local v1, "size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 144
    .local v0, "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, v2, v2}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFlvHeader(Ljava/nio/ByteBuffer;ZZ)V

    .line 145
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 146
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    .line 147
    return-void
.end method

.method private writeMetaData()V
    .locals 10

    .prologue
    .line 150
    iget v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mVideoWidth:I

    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mVideoHeight:I

    iget v2, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mVideoFps:I

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAudioSampleRate:I

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAudioSampleSize:I

    iget-boolean v5, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mIsStereo:Z

    invoke-static/range {v0 .. v5}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFlvMetaData(IIIIIZ)[B

    move-result-object v8

    .line 152
    .local v8, "metaData":[B
    array-length v0, v8

    add-int/lit8 v7, v0, 0xb

    .line 153
    .local v7, "dataSize":I
    add-int/lit8 v9, v7, 0x4

    .line 154
    .local v9, "size":I
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 155
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    const/16 v0, 0x12

    array-length v1, v8

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFlvTagHeader(Ljava/nio/ByteBuffer;III)V

    .line 156
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    .line 159
    return-void
.end method


# virtual methods
.method public initAudioParams(IIZ)V
    .locals 0
    .param p1, "sampleRate"    # I
    .param p2, "sampleSize"    # I
    .param p3, "isStereo"    # Z

    .prologue
    .line 184
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAudioSampleRate:I

    .line 185
    iput p2, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAudioSampleSize:I

    .line 186
    iput-boolean p3, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mIsStereo:Z

    .line 187
    return-void
.end method

.method public initVideoParams(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mVideoWidth:I

    .line 191
    iput p2, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mVideoHeight:I

    .line 192
    iput p3, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mVideoFps:I

    .line 193
    return-void
.end method

.method public onAudioData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 10
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 71
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->isHeaderWrite:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->isKeyFrameWrite:Z

    if-nez v6, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v7

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 77
    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v6, [B

    .line 78
    .local v0, "audio":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mStartTime:J

    sub-long/2addr v6, v8

    long-to-int v3, v6

    .line 81
    .local v3, "compositionTime":I
    array-length v6, v0

    add-int/lit8 v1, v6, 0x2

    .line 82
    .local v1, "audioPacketSize":I
    add-int/lit8 v4, v1, 0xb

    .line 83
    .local v4, "dataSize":I
    add-int/lit8 v5, v4, 0x4

    .line 84
    .local v5, "size":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 85
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    const/16 v6, 0x8

    invoke-static {v2, v6, v1, v3}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFlvTagHeader(Ljava/nio/ByteBuffer;III)V

    .line 86
    const/4 v6, 0x0

    iget v7, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAudioSampleSize:I

    invoke-static {v2, v0, v6, v7}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeAudioTag(Ljava/nio/ByteBuffer;[BZI)V

    .line 87
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 88
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {v6, v7, v8}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    goto :goto_0
.end method

.method public onSpsPps([B[B)V
    .locals 2
    .param p1, "sps"    # [B
    .param p2, "pps"    # [B

    .prologue
    .line 126
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->writeFlvHeader()V

    .line 132
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->writeMetaData()V

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->writeFirstVideoTag([B[B)V

    .line 136
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->writeFirstAudioTag()V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mStartTime:J

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->isHeaderWrite:Z

    goto :goto_0
.end method

.method public onVideo([BZ)V
    .locals 10
    .param p1, "video"    # [B
    .param p2, "isKeyFrame"    # Z

    .prologue
    .line 100
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->isHeaderWrite:Z

    if-nez v6, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mStartTime:J

    sub-long/2addr v6, v8

    long-to-int v1, v6

    .line 104
    .local v1, "compositionTime":I
    const/4 v3, 0x6

    .line 105
    .local v3, "packetType":I
    if-eqz p2, :cond_2

    .line 106
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->isKeyFrameWrite:Z

    .line 107
    const/4 v3, 0x5

    .line 110
    :cond_2
    iget-boolean v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->isKeyFrameWrite:Z

    if-eqz v6, :cond_0

    .line 114
    array-length v6, p1

    add-int/lit8 v5, v6, 0x5

    .line 115
    .local v5, "videoPacketSize":I
    add-int/lit8 v2, v5, 0xb

    .line 116
    .local v2, "dataSize":I
    add-int/lit8 v4, v2, 0x4

    .line 117
    .local v4, "size":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 118
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/16 v6, 0x9

    invoke-static {v0, v6, v5, v1}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFlvTagHeader(Ljava/nio/ByteBuffer;III)V

    .line 119
    invoke-static {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeH264Packet(Ljava/nio/ByteBuffer;[BZ)V

    .line 120
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    goto :goto_0
.end method

.method public onVideoData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    invoke-virtual {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->analyseVideoData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 67
    return-void
.end method

.method public setPacketListener(Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    .line 56
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    invoke-virtual {v0, p0}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->setAnnexbNaluListener(Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;)V

    .line 62
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->isHeaderWrite:Z

    .line 94
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->isKeyFrameWrite:Z

    .line 95
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPacker;->mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->stop()V

    .line 96
    return-void
.end method
