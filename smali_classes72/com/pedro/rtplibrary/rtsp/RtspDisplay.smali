.class public Lcom/pedro/rtplibrary/rtsp/RtspDisplay;
.super Lcom/pedro/rtplibrary/base/DisplayBase;
.source "RtspDisplay.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field private rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/pedro/rtplibrary/base/DisplayBase;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 27
    return-void
.end method


# virtual methods
.method protected getAacDataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendAudio(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 62
    return-void
.end method

.method protected getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 75
    return-void
.end method

.method protected onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 67
    .local v1, "newSps":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 68
    .local v0, "newPps":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2, v1, v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->setSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 69
    iget-object v2, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->connect()V

    .line 70
    return-void
.end method

.method protected prepareAudioRtp(ZI)V
    .locals 1
    .param p1, "isStereo"    # Z
    .param p2, "sampleRate"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setIsStereo(Z)V

    .line 46
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->setSampleRate(I)V

    .line 47
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public setProtocol(Lcom/pedro/rtsp/rtsp/Protocol;)V
    .locals 1
    .param p1, "protocol"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setProtocol(Lcom/pedro/rtsp/rtsp/Protocol;)V

    .line 36
    return-void
.end method

.method protected startStreamRtp(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected stopStreamRtp()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspDisplay;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->disconnect()V

    .line 57
    return-void
.end method
