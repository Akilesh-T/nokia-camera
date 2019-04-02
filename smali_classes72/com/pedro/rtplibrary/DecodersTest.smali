.class public Lcom/pedro/rtplibrary/DecodersTest;
.super Ljava/lang/Object;
.source "DecodersTest.java"

# interfaces
.implements Lcom/pedro/encoder/input/audio/GetMicrophoneData;
.implements Lcom/pedro/encoder/input/decoder/AudioDecoderInterface;
.implements Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private audioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "DecodersTest"

    iput-object v0, p0, Lcom/pedro/rtplibrary/DecodersTest;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public audioDecoderTest(Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    const/4 v4, 0x2

    .line 26
    new-instance v7, Lcom/pedro/encoder/input/decoder/AudioDecoder;

    invoke-direct {v7, p0, p0}, Lcom/pedro/encoder/input/decoder/AudioDecoder;-><init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;Lcom/pedro/encoder/input/decoder/AudioDecoderInterface;)V

    .line 27
    .local v7, "audioDecoderThread":Lcom/pedro/encoder/input/decoder/AudioDecoder;
    invoke-virtual {v7, p1}, Lcom/pedro/encoder/input/decoder/AudioDecoder;->initExtractor(Ljava/lang/String;)Z

    .line 28
    invoke-virtual {v7}, Lcom/pedro/encoder/input/decoder/AudioDecoder;->prepareAudio()Z

    .line 30
    invoke-virtual {v7}, Lcom/pedro/encoder/input/decoder/AudioDecoder;->getSampleRate()I

    move-result v0

    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 32
    .local v5, "buffsize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    invoke-virtual {v7}, Lcom/pedro/encoder/input/decoder/AudioDecoder;->getSampleRate()I

    move-result v2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/pedro/rtplibrary/DecodersTest;->audioTrack:Landroid/media/AudioTrack;

    .line 35
    iget-object v0, p0, Lcom/pedro/rtplibrary/DecodersTest;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 36
    invoke-virtual {v7}, Lcom/pedro/encoder/input/decoder/AudioDecoder;->start()V

    .line 37
    return-void
.end method

.method public inputPCMData([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pedro/rtplibrary/DecodersTest;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([BII)I

    .line 49
    return-void
.end method

.method public onAudioDecoderFinished()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onVideoDecoderFinished()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public videoDecoderTest(Landroid/view/Surface;Ljava/lang/String;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/pedro/encoder/input/decoder/VideoDecoder;

    invoke-direct {v0, p0}, Lcom/pedro/encoder/input/decoder/VideoDecoder;-><init>(Lcom/pedro/encoder/input/decoder/VideoDecoderInterface;)V

    .line 41
    .local v0, "videoDecoder":Lcom/pedro/encoder/input/decoder/VideoDecoder;
    invoke-virtual {v0, p2}, Lcom/pedro/encoder/input/decoder/VideoDecoder;->initExtractor(Ljava/lang/String;)Z

    .line 42
    invoke-virtual {v0, p1}, Lcom/pedro/encoder/input/decoder/VideoDecoder;->prepareVideo(Landroid/view/Surface;)Z

    .line 43
    invoke-virtual {v0}, Lcom/pedro/encoder/input/decoder/VideoDecoder;->start()V

    .line 44
    return-void
.end method
