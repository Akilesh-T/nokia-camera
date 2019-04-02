.class public Lcom/laifeng/sopcastsdk/audio/AudioEncoder;
.super Ljava/lang/Object;
.source "AudioEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

.field mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mListener:Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

.field private mMediaCodec:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V
    .locals 1
    .param p1, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 32
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 33
    return-void
.end method


# virtual methods
.method declared-synchronized offerEncoder([B)V
    .locals 12
    .param p1, "input"    # [B

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 53
    .local v8, "inputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 54
    .local v11, "outputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 55
    .local v1, "inputBufferIndex":I
    if-ltz v1, :cond_2

    .line 56
    aget-object v7, v8, v1

    .line 57
    .local v7, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 58
    invoke-virtual {v7, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 59
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    array-length v3, p1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 62
    .end local v7    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x2ee0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    .line 63
    .local v10, "outputBufferIndex":I
    :goto_0
    if-ltz v10, :cond_0

    .line 64
    aget-object v9, v11, v10

    .line 65
    .local v9, "outputBuffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mListener:Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mListener:Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v9, v2}, Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;->onAudioEncode(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 69
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 70
    goto :goto_0

    .line 49
    .end local v1    # "inputBufferIndex":I
    .end local v8    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .end local v9    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "outputBufferIndex":I
    .end local v11    # "outputBuffers":[Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method prepareEncoder()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/mediacodec/AudioMediaCodec;->getAudioMediaCodec(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 37
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 38
    return-void
.end method

.method public setOnAudioEncodeListener(Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mListener:Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    .line 29
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 43
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
