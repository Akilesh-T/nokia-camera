.class public Lcom/pedro/encoder/input/decoder/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private decoding:Z

.field private height:I

.field private loopMode:Z

.field private mime:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private videoDecoder:Landroid/media/MediaCodec;

.field private final videoDecoderInterface:Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

.field private videoExtractor:Landroid/media/MediaExtractor;

.field private videoFormat:Landroid/media/MediaFormat;

.field private videoInfo:Landroid/media/MediaCodec$BufferInfo;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;)V
    .locals 1
    .param p1, "videoDecoderInterface"    # Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "VideoDecoder"

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->mime:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->loopMode:Z

    .line 32
    iput-object p1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoderInterface:Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/pedro/encoder/input/decoder/VideoDecoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/input/decoder/VideoDecoder;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/pedro/encoder/input/decoder/VideoDecoder;->decodeVideo()V

    return-void
.end method

.method private decodeVideo()V
    .locals 18

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 108
    .local v11, "inputBuffers":[Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 109
    .local v14, "startMs":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->decoding:Z

    if-eqz v2, :cond_7

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 111
    .local v3, "inIndex":I
    if-ltz v3, :cond_1

    .line 112
    aget-object v9, v11, v3

    .line 113
    .local v9, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v2, v9, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 114
    .local v5, "sampleSize":I
    if-gez v5, :cond_4

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 116
    .end local v5    # "sampleSize":I
    const-string v2, "VideoDecoder"

    const-string v4, "end of file in"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12

    .line 123
    .local v12, "outIndex":I
    if-ltz v12, :cond_3

    .line 125
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v16, 0x3e8

    div-long v6, v6, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    cmp-long v2, v6, v16

    if-lez v2, :cond_2

    .line 127
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 128
    :catch_0
    move-exception v10

    .line 129
    .local v10, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 133
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v4, v12, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 135
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 136
    const-string v2, "VideoDecoder"

    const-string v4, "end of file out"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->loopMode:Z

    if-eqz v2, :cond_6

    .line 138
    const-string v2, "VideoDecoder"

    const-string v4, "loop mode, restreaming file"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    goto/16 :goto_0

    .line 118
    .end local v12    # "outIndex":I
    .restart local v5    # "sampleSize":I
    .restart local v9    # "buffer":Ljava/nio/ByteBuffer;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_1

    .line 133
    .end local v5    # "sampleSize":I
    .end local v9    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v12    # "outIndex":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoderInterface:Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

    invoke-interface {v2}, Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;->onVideoDecoderFinished()V

    goto/16 :goto_0

    .line 146
    .end local v3    # "inIndex":I
    .end local v12    # "outIndex":I
    :cond_7
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->width:I

    return v0
.end method

.method public initExtractor(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->decoding:Z

    .line 37
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    .line 38
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->mime:Ljava/lang/String;

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoFormat:Landroid/media/MediaFormat;

    .line 41
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoFormat:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->mime:Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->mime:Ljava/lang/String;

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 39
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iput-object v4, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoFormat:Landroid/media/MediaFormat;

    goto :goto_1

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoFormat:Landroid/media/MediaFormat;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->mime:Ljava/lang/String;

    const-string v3, "video/avc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoFormat:Landroid/media/MediaFormat;

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->width:I

    .line 50
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoFormat:Landroid/media/MediaFormat;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->height:I

    .line 51
    const/4 v1, 0x1

    .line 56
    :goto_2
    return v1

    .line 54
    :cond_2
    const-string v2, ""

    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->mime:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoFormat:Landroid/media/MediaFormat;

    goto :goto_2
.end method

.method public prepareVideo(Landroid/view/Surface;)Z
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v1, 0x0

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->mime:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    .line 63
    iget-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoFormat:Landroid/media/MediaFormat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v1, 0x1

    .line 67
    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "VideoDecoder"

    const-string v3, "Prepare decoder error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLoopMode(Z)V
    .locals 0
    .param p1, "loopMode"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->loopMode:Z

    .line 150
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->decoding:Z

    .line 73
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pedro/encoder/input/decoder/VideoDecoder$1;

    invoke-direct {v1, p0}, Lcom/pedro/encoder/input/decoder/VideoDecoder$1;-><init>(Lcom/pedro/encoder/input/decoder/VideoDecoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->thread:Ljava/lang/Thread;

    .line 81
    iget-object v0, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->decoding:Z

    .line 86
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->thread:Ljava/lang/Thread;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 97
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 98
    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoDecoder:Landroid/media/MediaCodec;

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 102
    iput-object v2, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->videoExtractor:Landroid/media/MediaExtractor;

    .line 104
    :cond_2
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/pedro/encoder/input/decoder/VideoDecoder;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
