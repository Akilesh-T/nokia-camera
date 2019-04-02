.class public Lcom/pedro/encoder/input/decoder/AudioDecoder;
.super Ljava/lang/Object;
.source "AudioDecoder.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private audioDecoder:Landroid/media/MediaCodec;

.field private final audioDecoderInterface:Lcom/pedro/encoder/input/decoder/AudioDecoderInterface;

.field private audioExtractor:Landroid/media/MediaExtractor;

.field private audioFormat:Landroid/media/MediaFormat;

.field private audioInfo:Landroid/media/MediaCodec$BufferInfo;

.field private decoding:Z

.field private getMicrophoneData:Lcom/pedro/encoder/input/audio/GetMicrophoneData;

.field private isStereo:Z

.field private loopMode:Z

.field private mime:Ljava/lang/String;

.field private muted:Z

.field private pcmBuffer:[B

.field private pcmBufferMuted:[B

.field private sampleRate:I

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;Lcom/pedro/encoder/input/decoder/AudioDecoderInterface;)V
    .locals 2
    .param p1, "getMicrophoneData"    # Lcom/pedro/encoder/input/audio/GetMicrophoneData;
    .param p2, "audioDecoderInterface"    # Lcom/pedro/encoder/input/decoder/AudioDecoderInterface;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "AudioDecoder"

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->mime:Ljava/lang/String;

    .line 30
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBuffer:[B

    .line 31
    const/16 v0, 0xb

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBufferMuted:[B

    .line 32
    iput-boolean v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->loopMode:Z

    .line 33
    iput-boolean v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->muted:Z

    .line 37
    iput-object p1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->getMicrophoneData:Lcom/pedro/encoder/input/audio/GetMicrophoneData;

    .line 38
    iput-object p2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoderInterface:Lcom/pedro/encoder/input/decoder/AudioDecoderInterface;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/pedro/encoder/input/decoder/AudioDecoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/input/decoder/AudioDecoder;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/pedro/encoder/input/decoder/AudioDecoder;->decodeAudio()V

    return-void
.end method

.method private decodeAudio()V
    .locals 12

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 114
    .local v8, "inputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 116
    .local v11, "outputBuffers":[Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->decoding:Z

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 118
    .local v1, "inIndex":I
    if-ltz v1, :cond_0

    .line 119
    aget-object v7, v8, v1

    .line 120
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 121
    .local v3, "sampleSize":I
    if-gez v3, :cond_1

    .line 122
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 128
    .end local v3    # "sampleSize":I
    :goto_1
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    .line 129
    .local v10, "outIndex":I
    packed-switch v10, :pswitch_data_0

    .line 138
    aget-object v9, v11, v10

    .line 140
    .local v9, "outBuffer":Ljava/nio/ByteBuffer;
    iget-boolean v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->muted:Z

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBufferMuted:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBufferMuted:[B

    array-length v4, v4

    invoke-virtual {v9, v0, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->getMicrophoneData:Lcom/pedro/encoder/input/audio/GetMicrophoneData;

    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBufferMuted:[B

    iget-object v4, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBufferMuted:[B

    array-length v4, v4

    invoke-interface {v0, v2, v4}, Lcom/pedro/encoder/input/audio/GetMicrophoneData;->inputPCMData([BI)V

    .line 147
    :goto_2
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 152
    .end local v9    # "outBuffer":Ljava/nio/ByteBuffer;
    :goto_3
    :pswitch_0
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 153
    iget-boolean v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->loopMode:Z

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v5, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 155
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    goto :goto_0

    .line 124
    .end local v10    # "outIndex":I
    .restart local v3    # "sampleSize":I
    :cond_1
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 125
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    .line 131
    .end local v3    # "sampleSize":I
    .restart local v10    # "outIndex":I
    :pswitch_1
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 132
    goto :goto_3

    .line 144
    .restart local v9    # "outBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBuffer:[B

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBuffer:[B

    array-length v4, v4

    invoke-virtual {v9, v0, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 145
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->getMicrophoneData:Lcom/pedro/encoder/input/audio/GetMicrophoneData;

    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBuffer:[B

    iget-object v4, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->pcmBuffer:[B

    array-length v4, v4

    invoke-interface {v0, v2, v4}, Lcom/pedro/encoder/input/audio/GetMicrophoneData;->inputPCMData([BI)V

    goto :goto_2

    .line 157
    .end local v9    # "outBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoderInterface:Lcom/pedro/encoder/input/decoder/AudioDecoderInterface;

    invoke-interface {v0}, Lcom/pedro/encoder/input/decoder/AudioDecoderInterface;->onAudioDecoderFinished()V

    goto/16 :goto_0

    .line 162
    .end local v1    # "inIndex":I
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v10    # "outIndex":I
    :cond_4
    return-void

    .line 129
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getSampleRate()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->sampleRate:I

    return v0
.end method

.method public initExtractor(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->decoding:Z

    .line 43
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    .line 44
    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->mime:Ljava/lang/String;

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    .line 47
    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->mime:Ljava/lang/String;

    .line 48
    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->mime:Ljava/lang/String;

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 45
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iput-object v5, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    goto :goto_1

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->mime:Ljava/lang/String;

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string v4, "channel-count"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->isStereo:Z

    .line 56
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string v3, "sample-rate"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->sampleRate:I

    .line 62
    :goto_2
    return v2

    .line 60
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->mime:Ljava/lang/String;

    .line 61
    iput-object v5, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    move v2, v1

    .line 62
    goto :goto_2
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->muted:Z

    return v0
.end method

.method public isStereo()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->isStereo:Z

    return v0
.end method

.method public mute()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->muted:Z

    .line 170
    return-void
.end method

.method public prepareAudio()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->mime:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    .line 69
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v1, 0x1

    .line 73
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "AudioDecoder"

    const-string v3, "Prepare decoder error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLoopMode(Z)V
    .locals 0
    .param p1, "loopMode"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->loopMode:Z

    .line 166
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->decoding:Z

    .line 79
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pedro/encoder/input/decoder/AudioDecoder$1;

    invoke-direct {v1, p0}, Lcom/pedro/encoder/input/decoder/AudioDecoder$1;-><init>(Lcom/pedro/encoder/input/decoder/AudioDecoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->thread:Ljava/lang/Thread;

    .line 87
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->decoding:Z

    .line 92
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->thread:Ljava/lang/Thread;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 103
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 104
    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 108
    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->audioExtractor:Landroid/media/MediaExtractor;

    .line 110
    :cond_2
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public unMute()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/encoder/input/decoder/AudioDecoder;->muted:Z

    .line 174
    return-void
.end method
