.class public Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;
.super Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;
.source "RtmpConnection.java"


# instance fields
.field private mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;


# direct methods
.method public constructor <init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 1
    .param p1, "connectChecker"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpBase;-><init>()V

    .line 18
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-direct {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .line 19
    return-void
.end method


# virtual methods
.method protected getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->sendAudio(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 41
    return-void
.end method

.method protected getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 51
    return-void
.end method

.method protected onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->setSpsPPs(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 46
    return-void
.end method

.method protected prepareAudioRtp(ZI)V
    .locals 1
    .param p1, "isStereo"    # Z
    .param p2, "sampleRate"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->setIsStereo(Z)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-virtual {v0, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->setSampleRate(I)V

    .line 25
    return-void
.end method

.method protected startStreamRtp(Ljava/lang/String;II)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->setVideoResolution(II)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->start(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected stopStreamRtp()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->mSrsFlvMuxer:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->stop()V

    .line 36
    return-void
.end method
