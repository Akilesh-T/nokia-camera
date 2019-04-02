.class public Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;
.super Ljava/lang/Object;
.source "DefaultRtmpPublisher.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/RtmpPublisher;


# instance fields
.field private rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;


# direct methods
.method public constructor <init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 1
    .param p1, "connectCheckerRtmp"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-direct {v0, p1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->close()V

    .line 33
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public publish(Ljava/lang/String;)Z
    .locals 1
    .param p1, "publishType"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publish(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public publishAudioData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "dts"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishAudioData([BII)V

    .line 43
    return-void
.end method

.method public publishVideoData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "dts"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishVideoData([BII)V

    .line 38
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setVideoResolution(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->setVideoResolution(II)V

    .line 48
    return-void
.end method
