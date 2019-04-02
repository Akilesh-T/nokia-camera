.class public Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;
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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "AudioEncoder"

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 35
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->mime:Ljava/lang/String;

    .line 36
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->bitRate:I

    .line 37
    const v0, 0xac44

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->sampleRate:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->isStereo:Z

    .line 41
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    .line 42
    return-void
.end method

.method private getDataFromEncoder([BI)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 173
    .local v10, "inputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 175
    .local v12, "outputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 176
    .local v3, "inBufferIndex":I
    if-ltz v3, :cond_0

    .line 177
    aget-object v9, v10, v3

    .line 178
    .local v9, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 179
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 180
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->mPresentTimeUs:J

    sub-long v6, v4, v14

    .line 181
    .local v6, "pts":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 185
    .end local v6    # "pts":J
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v4, v14, v15}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11

    .line 186
    .local v11, "outBufferIndex":I
    const/4 v2, -0x2

    if-ne v11, v2, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/pedro/encoder/audio/GetAacData;->onAudioFormat(Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 188
    :cond_1
    if-ltz v11, :cond_2

    .line 190
    aget-object v9, v12, v11

    .line 191
    .restart local v9    # "bb":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v2, v9, v4}, Lcom/pedro/encoder/audio/GetAacData;->getAacData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v11, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 197
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
    .line 148
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 149
    .local v1, "inBufferIndex":I
    if-ltz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 151
    .local v7, "bb":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    invoke-virtual {v7, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    iget-wide v10, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->mPresentTimeUs:J

    sub-long v4, v2, v10

    .line 153
    .local v4, "pts":J
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 157
    .end local v4    # "pts":J
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v2, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    .line 158
    .local v8, "outBufferIndex":I
    const/4 v0, -0x2

    if-ne v8, v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/pedro/encoder/audio/GetAacData;->onAudioFormat(Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 160
    :cond_1
    if-ltz v8, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 163
    .restart local v7    # "bb":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->getAacData:Lcom/pedro/encoder/audio/GetAacData;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v7, v2}, Lcom/pedro/encoder/audio/GetAacData;->getAacData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 169
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
    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->getDataFromEncoderAPI21([BI)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->getDataFromEncoder([BI)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->running:Z

    return v0
.end method

.method public prepareAudioEncoder()Z
    .locals 4

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->bitRate:I

    iget v1, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->sampleRate:I

    iget-boolean v2, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->isStereo:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->prepareAudioEncoder(IIZLcom/android/camera/OZO/OZOSettings;)Z

    move-result v0

    return v0
.end method

.method public prepareAudioEncoder(IIZLcom/android/camera/OZO/OZOSettings;)Z
    .locals 10
    .param p1, "bitRate"    # I
    .param p2, "sampleRate"    # I
    .param p3, "isStereo"    # Z
    .param p4, "ozoSettings"    # Lcom/android/camera/OZO/OZOSettings;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    .line 49
    iput p2, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->sampleRate:I

    .line 53
    if-nez p4, :cond_1

    .line 54
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->TAG:Ljava/lang/String;

    const-string v7, "OZO - setting is NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->mime:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    .line 56
    if-eqz p3, :cond_0

    .line 57
    .local v0, "a":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->mime:Ljava/lang/String;

    invoke-static {v6, p2, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 58
    .local v1, "audioFormat":Landroid/media/MediaFormat;
    const-string v6, "bitrate"

    invoke-virtual {v1, v6, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 59
    const/4 v6, 0x2

    invoke-static {p2, v0, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    .line 60
    .local v2, "buffSize":I
    const-string v6, "max-input-size"

    invoke-virtual {v1, v6, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 61
    const-string v6, "aac-profile"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    iget-object v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 64
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->running:Z

    .line 97
    .end local v0    # "a":I
    .end local v1    # "audioFormat":Landroid/media/MediaFormat;
    .end local v2    # "buffSize":I
    :goto_1
    return v4

    :cond_0
    move v0, v4

    .line 56
    goto :goto_0

    .line 67
    :cond_1
    iget-object v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->TAG:Ljava/lang/String;

    const-string v7, "OZO - setting the properties."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v6, "audio/ozoaudio"

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    .line 69
    const-string v6, "audio/ozoaudio"

    sget v7, Lcom/android/camera/OZO/OZOConst$AudioParam;->SAMPLE_RATE:I

    invoke-virtual {p4}, Lcom/android/camera/OZO/OZOSettings;->getChannelCount()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 70
    .restart local v1    # "audioFormat":Landroid/media/MediaFormat;
    const-string v6, "bitrate"

    sget v7, Lcom/android/camera/OZO/OZOConst$AudioParam;->BIT_RATE:I

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 71
    sget v6, Lcom/android/camera/OZO/OZOConst$AudioParam;->SAMPLE_RATE:I

    invoke-virtual {p4}, Lcom/android/camera/OZO/OZOSettings;->getChannelCount()I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    .line 72
    .restart local v2    # "buffSize":I
    const-string v6, "max-input-size"

    sget v7, Lcom/android/camera/OZO/OZOConst$AudioParam;->BUFFER_SIZE:I

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 73
    const-string v6, "aac-profile"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 77
    const-string v6, "vendor.ozoaudio.device"

    invoke-virtual {p4}, Lcom/android/camera/OZO/OZOSettings;->getDevice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v6, "vendor.ozoaudio.mode"

    invoke-virtual {p4}, Lcom/android/camera/OZO/OZOSettings;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v6, "vendor.ozoaudio.focus-direction"

    invoke-virtual {p4}, Lcom/android/camera/OZO/OZOSettings;->getFocusDirection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v6, "vendor.ozoaudio.sample-depth"

    invoke-virtual {p4}, Lcom/android/camera/OZO/OZOSettings;->getSampleDepth()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 81
    const-string v6, "channel-count"

    invoke-virtual {p4}, Lcom/android/camera/OZO/OZOSettings;->getChannelCount()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 82
    const-string v6, "priority"

    invoke-virtual {p4}, Lcom/android/camera/OZO/OZOSettings;->getPriority()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 84
    iget-object v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 85
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->running:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 92
    .end local v1    # "audioFormat":Landroid/media/MediaFormat;
    .end local v2    # "buffSize":I
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move v4, v5

    .line 94
    goto/16 :goto_1

    .line 95
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v4, v5

    .line 97
    goto/16 :goto_1
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->sampleRate:I

    .line 201
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->mPresentTimeUs:J

    .line 111
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->running:Z

    .line 113
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "AudioEncoder started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "AudioEncoder need be prepared, AudioEncoder not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->running:Z

    .line 121
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 123
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->audioEncoder:Landroid/media/MediaCodec;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/AudioEncoder;->TAG:Ljava/lang/String;

    const-string v1, "AudioEncoder stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method
