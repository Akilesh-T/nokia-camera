.class public Lcom/pedro/rtplibrary/rtsp/RtspFromFile;
.super Lcom/pedro/rtplibrary/base/FromFileBase;
.source "RtspFromFile.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x12
.end annotation


# instance fields
.field private rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;


# direct methods
.method public constructor <init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;)V
    .locals 1
    .param p1, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;
    .param p2, "videoDecoderInterface"    # Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lcom/pedro/rtplibrary/base/FromFileBase;-><init>(Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;)V

    .line 27
    new-instance v0, Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-direct {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;-><init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspFromFile;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    .line 28
    return-void
.end method


# virtual methods
.method protected getH264DataRtp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspFromFile;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 65
    return-void
.end method

.method protected onSPSandPPSRtp(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 57
    .local v1, "newSps":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    .local v0, "newPps":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/pedro/rtplibrary/rtsp/RtspFromFile;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2, v1, v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->setSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 59
    iget-object v2, p0, Lcom/pedro/rtplibrary/rtsp/RtspFromFile;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->connect()V

    .line 60
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspFromFile;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public setProtocol(Lcom/pedro/rtsp/rtsp/Protocol;)V
    .locals 1
    .param p1, "protocol"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspFromFile;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setProtocol(Lcom/pedro/rtsp/rtsp/Protocol;)V

    .line 37
    return-void
.end method

.method protected startStreamRtp(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspFromFile;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->setUrl(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected stopStreamRtp()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pedro/rtplibrary/rtsp/RtspFromFile;->rtspClient:Lcom/pedro/rtsp/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtsp/RtspClient;->disconnect()V

    .line 52
    return-void
.end method
