.class public Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;
.super Ljava/lang/Object;
.source "RtmpPacker.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/packer/Packer;
.implements Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;


# static fields
.field public static final AUDIO:I = 0x3

.field public static final CONFIGRATION:I = 0x6

.field public static final FIRST_AUDIO:I = 0x2

.field public static final FIRST_VIDEO:I = 0x1

.field public static final INTER_FRAME:I = 0x5

.field public static final KEY_FRAME:I = 0x4


# instance fields
.field private isHeaderWrite:Z

.field private isKeyFrameWrite:Z

.field private mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

.field private mAudioSampleRate:I

.field private mAudioSampleSize:I

.field private mIsStereo:Z

.field private packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    .line 44
    return-void
.end method

.method private writeFirstAudioTag()V
    .locals 5

    .prologue
    .line 124
    const/4 v1, 0x4

    .line 125
    .local v1, "size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 126
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mAudioSampleRate:I

    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mIsStereo:Z

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mAudioSampleSize:I

    invoke-static {v0, v2, v3, v4}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFirstAudioTag(Ljava/nio/ByteBuffer;IZI)V

    .line 127
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    .line 128
    return-void
.end method

.method private writeFirstVideoTag([B[B)V
    .locals 5
    .param p1, "sps"    # [B
    .param p2, "pps"    # [B

    .prologue
    .line 117
    array-length v2, p1

    add-int/lit8 v2, v2, 0x10

    array-length v3, p2

    add-int v1, v2, v3

    .line 118
    .local v1, "size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeFirstVideoTag(Ljava/nio/ByteBuffer;[B[B)V

    .line 120
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    .line 121
    return-void
.end method


# virtual methods
.method public initAudioParams(IIZ)V
    .locals 0
    .param p1, "sampleRate"    # I
    .param p2, "sampleSize"    # I
    .param p3, "isStereo"    # Z

    .prologue
    .line 131
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mAudioSampleRate:I

    .line 132
    iput p2, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mAudioSampleSize:I

    .line 133
    iput-boolean p3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mIsStereo:Z

    .line 134
    return-void
.end method

.method public onAudioData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 63
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->isHeaderWrite:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->isKeyFrameWrite:Z

    if-nez v3, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 69
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v3, [B

    .line 70
    .local v0, "audio":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 71
    array-length v3, v0

    add-int/lit8 v2, v3, 0x2

    .line 72
    .local v2, "size":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 73
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mAudioSampleSize:I

    invoke-static {v1, v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeAudioTag(Ljava/nio/ByteBuffer;[BZI)V

    .line 74
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    goto :goto_0
.end method

.method public onSpsPps([B[B)V
    .locals 1
    .param p1, "sps"    # [B
    .param p2, "pps"    # [B

    .prologue
    .line 106
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->writeFirstVideoTag([B[B)V

    .line 112
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->writeFirstAudioTag()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->isHeaderWrite:Z

    goto :goto_0
.end method

.method public onVideo([BZ)V
    .locals 5
    .param p1, "video"    # [B
    .param p2, "isKeyFrame"    # Z

    .prologue
    .line 86
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->isHeaderWrite:Z

    if-nez v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v1, 0x5

    .line 90
    .local v1, "packetType":I
    if-eqz p2, :cond_2

    .line 91
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->isKeyFrameWrite:Z

    .line 92
    const/4 v1, 0x4

    .line 95
    :cond_2
    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->isKeyFrameWrite:Z

    if-eqz v3, :cond_0

    .line 98
    array-length v3, p1

    add-int/lit8 v2, v3, 0x5

    .line 99
    .local v2, "size":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeH264Packet(Ljava/nio/ByteBuffer;[BZ)V

    .line 101
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;->onPacket([BI)V

    goto :goto_0
.end method

.method public onVideoData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    invoke-virtual {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->analyseVideoData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 59
    return-void
.end method

.method public setPacketListener(Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->packetListener:Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;

    .line 49
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    invoke-virtual {v0, p0}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->setAnnexbNaluListener(Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper$AnnexbNaluListener;)V

    .line 54
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->isHeaderWrite:Z

    .line 80
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->isKeyFrameWrite:Z

    .line 81
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->mAnnexbHelper:Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/packer/AnnexbHelper;->stop()V

    .line 82
    return-void
.end method
