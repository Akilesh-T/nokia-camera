.class public Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;
.super Ljava/lang/Object;
.source "DefaultRtmpPublisher.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/RtmpPublisher;


# instance fields
.field private rtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;


# direct methods
.method public constructor <init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 1
    .param p1, "connectCheckerRtmp"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-direct {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->rtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->rtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->close()V

    .line 34
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->rtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->connect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public publish(Ljava/lang/String;)Z
    .locals 1
    .param p1, "publishType"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->rtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->publish(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public publishAudioData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "dts"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->rtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->publishAudioData([BII)V

    .line 44
    return-void
.end method

.method public publishVideoData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "dts"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->rtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->publishVideoData([BII)V

    .line 39
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->rtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setVideoResolution(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->rtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/RtmpConnection;->setVideoResolution(II)V

    .line 49
    return-void
.end method
