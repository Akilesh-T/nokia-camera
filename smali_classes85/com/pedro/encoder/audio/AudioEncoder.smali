.class public Lcom/pedro/encoder/audio/AudioEncoder;
.super Ljava/lang/Object;
.source "AudioEncoder.java"

# interfaces
.implements Lcom/pedro/encoder/input/audio/GetMicrophoneData;


# instance fields
.field private TAG:Ljava/lang/String;

.field private audioEncoder:Landroid/media/MediaCodec;

.field private audioInfo:Landroid/media/MediaCodec$BufferInfo;

.field private bitRate:I

.field private getAacData:Lcom/pedro/encoder/audio/GetAacData;

.field private isStereo:Z

.field private mPresentTimeUs:J

.field private mime:Ljava/lang/String;

.field private running:Z

.field private sampleRate:I


# direct methods
.method public constructor <init>(Lcom/pedro/encoder/audio/GetAacData;)V
    .locals 1
    .param p1, "getAacData"    # Lcom/pedro/encoder/audio/GetAacData;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "AudioEncoder"

    iput-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 28
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->mime:Ljava/lang/String;

    .line 29
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->bitRate:I

    .line 30
    const v0, 0xac44

    iput v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->sampleRate:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->isStereo:Z

    .line 34
    iput-object p1, p0, Lcom/pedro/encoder/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    .line 35
    return-void
.end method

.method private getDataFromEncoder([BI)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 134
    .local v10, "inputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 136
    .local v12, "outputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 137
    .local v3, "inBufferIndex":I
    if-ltz v3, :cond_0

    .line 138
    aget-object v9, v10, v3

    .line 139
    .local v9, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 140
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 141
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/pedro/encoder/audio/AudioEncoder;->mPresentTimeUs:J

    sub-long v6, v4, v14

    .line 142
    .local v6, "pts":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 146
    .end local v6    # "pts":J
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pedro/encoder/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v4, v14, v15}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11

    .line 147
    .local v11, "outBufferIndex":I
    const/4 v2, -0x2

    if-ne v11, v2, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/pedro/encoder/audio/GetAacData;->onAudioFormat(Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 149
    :cond_1
    if-ltz v11, :cond_2

    .line 151
    aget-object v9, v12, v11

    .line 152
    .restart local v9    # "bb":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pedro/encoder/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v2, v9, v4}, Lcom/pedro/encoder/audio/GetAacData;->getAacData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v11, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 158
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    return-void
.end method

.method private getDataFromEncoderAPI21([BI)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 110
    .local v1, "inBufferIndex":I
    if-ltz v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 112
    .local v7, "bb":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    invoke-virtual {v7, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    iget-wide v10, p0, Lcom/pedro/encoder/audio/AudioEncoder;->mPresentTimeUs:J

    sub-long v4, v2, v10

    .line 114
    .local v4, "pts":J
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 118
    .end local v4    # "pts":J
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v2, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    .line 119
    .local v8, "outBufferIndex":I
    const/4 v0, -0x2

    if-ne v8, v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    iget-object v2, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/pedro/encoder/audio/GetAacData;->onAudioFormat(Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 121
    :cond_1
    if-ltz v8, :cond_2

    .line 123
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 124
    .restart local v7    # "bb":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    iget-object v2, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v7, v2}, Lcom/pedro/encoder/audio/GetAacData;->getAacData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 125
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 130
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    return-void
.end method


# virtual methods
.method public inputPCMData([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/pedro/encoder/audio/AudioEncoder;->getDataFromEncoderAPI21([BI)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/pedro/encoder/audio/AudioEncoder;->getDataFromEncoder([BI)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->running:Z

    return v0
.end method

.method public prepareAudioEncoder()Z
    .locals 3

    .prologue
    .line 66
    iget v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->bitRate:I

    iget v1, p0, Lcom/pedro/encoder/audio/AudioEncoder;->sampleRate:I

    iget-boolean v2, p0, Lcom/pedro/encoder/audio/AudioEncoder;->isStereo:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/pedro/encoder/audio/AudioEncoder;->prepareAudioEncoder(IIZ)Z

    move-result v0

    return v0
.end method

.method public prepareAudioEncoder(IIZ)Z
    .locals 9
    .param p1, "bitRate"    # I
    .param p2, "sampleRate"    # I
    .param p3, "isStereo"    # Z

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    iput p2, p0, Lcom/pedro/encoder/audio/AudioEncoder;->sampleRate:I

    .line 43
    :try_start_0
    iget-object v5, p0, Lcom/pedro/encoder/audio/AudioEncoder;->mime:Ljava/lang/String;

    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    .line 44
    if-eqz p3, :cond_0

    .line 45
    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lcom/pedro/encoder/audio/AudioEncoder;->mime:Ljava/lang/String;

    invoke-static {v5, p2, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 46
    .local v1, "audioFormat":Landroid/media/MediaFormat;
    const-string v5, "bitrate"

    invoke-virtual {v1, v5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 47
    const-string v5, "max-input-size"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 48
    const-string v5, "aac-profile"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 50
    iget-object v5, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 51
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/pedro/encoder/audio/AudioEncoder;->running:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .end local v0    # "a":I
    .end local v1    # "audioFormat":Landroid/media/MediaFormat;
    :goto_1
    return v3

    :cond_0
    move v0, v3

    .line 44
    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v3, v4

    .line 55
    goto :goto_1

    .line 56
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v3, v4

    .line 58
    goto :goto_1
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/pedro/encoder/audio/AudioEncoder;->sampleRate:I

    .line 162
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->mPresentTimeUs:J

    .line 72
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->running:Z

    .line 74
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "AudioEncoder started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "AudioEncoder need be prepared, AudioEncoder not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->running:Z

    .line 82
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 84
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/pedro/encoder/audio/AudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "AudioEncoder stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
