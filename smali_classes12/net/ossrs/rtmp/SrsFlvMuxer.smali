.class public Lnet/ossrs/rtmp/SrsFlvMuxer;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsRawH264Stream;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrameBytes;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAnnexbSearch;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAvcNaluType;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsAacObjectType;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecVideo;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecAudioSampleRate;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecFlvTag;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecVideoAVCType;,
        Lnet/ossrs/rtmp/SrsFlvMuxer$SrsCodecVideoAVCFrame;
    }
.end annotation


# static fields
.field private static final AUDIO_ALLOC_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "SrsFlvMuxer"

.field private static final VIDEO_ALLOC_SIZE:I = 0x20000


# instance fields
.field private connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

.field private volatile connected:Z

.field private flv:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;

.field private isPpsSpsSend:Z

.field private mAudioAllocator:Lnet/ossrs/rtmp/SrsAllocator;

.field private mAudioSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

.field private mFlvTagCache:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoAllocator:Lnet/ossrs/rtmp/SrsAllocator;

.field private mVideoSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

.field private needToFindKeyFrame:Z

.field private profileIop:B

.field private publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

.field private sampleRate:I

.field private worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 3
    .param p1, "connectCheckerRtmp"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->connected:Z

    .line 54
    new-instance v0, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;

    invoke-direct {v0, p0}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->flv:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->needToFindKeyFrame:Z

    .line 58
    new-instance v0, Lnet/ossrs/rtmp/SrsAllocator;

    const/high16 v1, 0x20000

    invoke-direct {v0, v1}, Lnet/ossrs/rtmp/SrsAllocator;-><init>(I)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mVideoAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    .line 59
    new-instance v0, Lnet/ossrs/rtmp/SrsAllocator;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lnet/ossrs/rtmp/SrsAllocator;-><init>(I)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mAudioAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mFlvTagCache:Ljava/util/concurrent/BlockingQueue;

    .line 62
    const v0, 0xac44

    iput v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->sampleRate:I

    .line 63
    iput-boolean v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->isPpsSpsSend:Z

    .line 64
    iput-byte v2, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->profileIop:B

    .line 70
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .line 71
    new-instance v0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-direct {v0, p1}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lnet/ossrs/rtmp/SrsFlvMuxer;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->connect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/ConnectCheckerRtmp;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/ossrs/rtmp/SrsFlvMuxer;)B
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-byte v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->profileIop:B

    return v0
.end method

.method static synthetic access$1100(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsAllocator;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mVideoAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/ossrs/rtmp/SrsFlvMuxer;)Z
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-boolean v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->isPpsSpsSend:Z

    return v0
.end method

.method static synthetic access$1302(Lnet/ossrs/rtmp/SrsFlvMuxer;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->isPpsSpsSend:Z

    return p1
.end method

.method static synthetic access$1400(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsAllocator;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mAudioAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    return-object v0
.end method

.method static synthetic access$1500(Lnet/ossrs/rtmp/SrsFlvMuxer;)I
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->sampleRate:I

    return v0
.end method

.method static synthetic access$1700(Lnet/ossrs/rtmp/SrsFlvMuxer;)Z
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-boolean v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->needToFindKeyFrame:Z

    return v0
.end method

.method static synthetic access$1702(Lnet/ossrs/rtmp/SrsFlvMuxer;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->needToFindKeyFrame:Z

    return p1
.end method

.method static synthetic access$200(Lnet/ossrs/rtmp/SrsFlvMuxer;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mFlvTagCache:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$300(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mVideoSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    return-object v0
.end method

.method static synthetic access$302(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p1, "x1"    # Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 45
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mVideoSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    return-object p1
.end method

.method static synthetic access$400(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)V
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p1, "x1"    # Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->sendFlvTag(Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)V

    return-void
.end method

.method static synthetic access$500(Lnet/ossrs/rtmp/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mAudioSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    return-object v0
.end method

.method static synthetic access$502(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p1, "x1"    # Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 45
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mAudioSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    return-object p1
.end method

.method static synthetic access$600(Lnet/ossrs/rtmp/SrsFlvMuxer;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;

    .prologue
    .line 45
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$700(Lnet/ossrs/rtmp/SrsFlvMuxer;Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/rtmp/SrsFlvMuxer;
    .param p1, "x1"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer;->disconnect(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    return-void
.end method

.method private connect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-boolean v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->connected:Z

    if-nez v0, :cond_1

    .line 123
    const-string v0, "SrsFlvMuxer"

    const-string v1, "worker: connecting to RTMP server by url=%s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->connect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    const-string v1, "live"

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->publish(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->connected:Z

    .line 127
    :cond_0
    iput-object v4, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mVideoSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .line 128
    iput-object v4, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mAudioSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .line 130
    :cond_1
    iget-boolean v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->connected:Z

    return v0
.end method

.method private disconnect(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 2
    .param p1, "connectChecker"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    const/4 v1, 0x0

    .line 110
    :try_start_0
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->connected:Z

    .line 115
    iput-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mVideoSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .line 116
    iput-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mAudioSequenceHeader:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .line 117
    invoke-interface {p1}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onDisconnectRtmp()V

    .line 118
    const-string v0, "SrsFlvMuxer"

    const-string v1, "worker: disconnect ok."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendFlvTag(Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;)V
    .locals 5
    .param p1, "frame"    # Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 134
    iget-boolean v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->connected:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->is_keyframe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const-string v0, "SrsFlvMuxer"

    const-string v1, "worker: send frame type=%d, dts=%d, size=%dB"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->type:I

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->dts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .line 142
    invoke-virtual {v4}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 141
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    iget-object v1, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v1

    iget-object v2, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v2}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size()I

    move-result v2

    iget v3, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->dts:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->publishVideoData([BII)V

    .line 145
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mVideoAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    iget-object v1, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v0, v1}, Lnet/ossrs/rtmp/SrsAllocator;->release(Lnet/ossrs/rtmp/SrsAllocator$Allocation;)V

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    iget-object v1, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v1

    iget-object v2, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v2}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size()I

    move-result v2

    iget v3, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->dts:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->publishAudioData([BII)V

    .line 148
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mAudioAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    iget-object v1, p1, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v0, v1}, Lnet/ossrs/rtmp/SrsAllocator;->release(Lnet/ossrs/rtmp/SrsAllocator$Allocation;)V

    goto :goto_0
.end method


# virtual methods
.method public sendAudio(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 222
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->flv:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;->writeAudioSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 223
    return-void
.end method

.method public sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 218
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->flv:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;->writeVideoSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 219
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setIsStereo(Z)V
    .locals 2
    .param p1, "isStereo"    # Z

    .prologue
    .line 88
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 89
    .local v0, "channel":I
    :goto_0
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->flv:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v1, v0}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;->setAchannel(I)V

    .line 90
    return-void

    .line 88
    .end local v0    # "channel":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setProfileIop(B)V
    .locals 0
    .param p1, "profileIop"    # B

    .prologue
    .line 76
    iput-byte p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->profileIop:B

    .line 77
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 84
    iput p1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->sampleRate:I

    .line 85
    return-void
.end method

.method public setSpsPPs(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 80
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->flv:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;->setSpsPPs(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 81
    return-void
.end method

.method public setVideoResolution(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->setVideoResolution(II)V

    .line 106
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "rtmpUrl"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/ossrs/rtmp/SrsFlvMuxer$1;

    invoke-direct {v1, p0, p1}, Lnet/ossrs/rtmp/SrsFlvMuxer$1;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    .line 188
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 198
    :try_start_0
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    .line 204
    :cond_0
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->mFlvTagCache:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 205
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->flv:Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsFlvMuxer$SrsFlv;->reset()V

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->needToFindKeyFrame:Z

    .line 207
    const-string v1, "SrsFlvMuxer"

    const-string v2, "SrsFlvMuxer closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lnet/ossrs/rtmp/SrsFlvMuxer$2;

    invoke-direct {v2, p0}, Lnet/ossrs/rtmp/SrsFlvMuxer$2;-><init>(Lnet/ossrs/rtmp/SrsFlvMuxer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 215
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
