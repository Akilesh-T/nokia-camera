.class public abstract Lcom/pedro/rtplibrary/base/FromFileBase;
.super Ljava/lang/Object;
.source "FromFileBase.java"

# interfaces
.implements Lcom/pedro/encoder/input/video/GetCameraData;
.implements Lcom/pedro/encoder/video/GetH264Data;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x12
.end annotation


# instance fields
.field private canRecord:Z

.field private mediaMuxer:Landroid/media/MediaMuxer;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private recording:Z

.field private streaming:Z

.field private videoDecoderInterface:Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

.field private videoEnabled:Z

.field protected videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

.field private videoFormat:Landroid/media/MediaFormat;

.field private videoTrack:I


# direct methods
.method public constructor <init>(Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;)V
    .locals 2
    .param p1, "videoDecoderInterface"    # Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEnabled:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoTrack:I

    .line 36
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->recording:Z

    .line 37
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->canRecord:Z

    .line 45
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoDecoderInterface:Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

    .line 46
    new-instance v0, Lcom/pedro/encoder/video/VideoEncoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/video/VideoEncoder;-><init>(Lcom/pedro/encoder/video/GetH264Data;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    .line 48
    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->streaming:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/pedro/rtplibrary/base/FromFileBase;)Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtplibrary/base/FromFileBase;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoDecoderInterface:Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

    return-object v0
.end method


# virtual methods
.method public disableVideo()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->startSendBlackImage()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEnabled:Z

    .line 171
    return-void
.end method

.method public enableVideo()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->stopSendBlackImage()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEnabled:Z

    .line 179
    return-void
.end method

.method public getH264Data(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->recording:Z

    if-eqz v0, :cond_1

    .line 231
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->canRecord:Z

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->canRecord:Z

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoTrack:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 236
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/FromFileBase;->getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 237
    return-void
.end method

.method protected abstract getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public inputYUVData([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 241
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->inputYUVData([B)V

    .line 242
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->recording:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->streaming:Z

    return v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEnabled:Z

    return v0
.end method

.method public onSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/pedro/rtplibrary/base/FromFileBase;->onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 224
    return-void
.end method

.method protected abstract onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public onVideoFormat(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoFormat:Landroid/media/MediaFormat;

    .line 247
    return-void
.end method

.method public prepareVideo(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "bitRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 68
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/pedro/rtplibrary/base/FromFileBase$1;

    invoke-direct {v1, p0}, Lcom/pedro/rtplibrary/base/FromFileBase$1;-><init>(Lcom/pedro/rtplibrary/base/FromFileBase;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 74
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 76
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 78
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 79
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    const/16 v3, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/pedro/encoder/video/VideoEncoder;->prepareVideoEncoder(IIIIIZLcom/pedro/encoder/video/FormatVideoEncoder;)Z

    move-result v8

    .line 81
    .local v8, "result":Z
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v1}, Lcom/pedro/encoder/video/VideoEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 83
    return v8
.end method

.method public abstract setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setLoopMode(Z)V
    .locals 1
    .param p1, "loopMode"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 162
    return-void
.end method

.method public setVideoBitrateOnFly(I)V
    .locals 2
    .param p1, "bitrate"    # I

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/video/VideoEncoder;->setVideoBitrateOnFly(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->streaming:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 95
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoTrack:I

    .line 96
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->recording:Z

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Need be called while stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startStream(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/pedro/rtplibrary/base/FromFileBase;->startStreamRtp(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->start()V

    .line 133
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->streaming:Z

    .line 135
    return-void
.end method

.method protected abstract startStreamRtp(Ljava/lang/String;)V
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->recording:Z

    .line 108
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 110
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 113
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoTrack:I

    .line 114
    return-void
.end method

.method public stopStream()V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/pedro/rtplibrary/base/FromFileBase;->stopStreamRtp()V

    .line 144
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 146
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->videoEncoder:Lcom/pedro/encoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/pedro/encoder/video/VideoEncoder;->stop()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/rtplibrary/base/FromFileBase;->streaming:Z

    .line 152
    return-void
.end method

.method protected abstract stopStreamRtp()V
.end method
