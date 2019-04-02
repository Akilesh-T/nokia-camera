.class public Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsRawH264Stream;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrameBytes;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAnnexbSearch;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAvcNaluType;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsAacObjectType;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsCodecVideo;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsCodecAudioSampleRate;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsCodecFlvTag;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsCodecVideoAVCType;,
        Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsCodecVideoAVCFrame;
    }
.end annotation


# static fields
.field private static final AUDIO_ALLOC_SIZE:I = 0x1000

.field private static final DROP_FRAME_INTERVAL_TIME:J = 0x1388L

.field private static final DROP_FRAME_WAIT_TIME:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "SrsFlvMuxer"

.field private static final VIDEO_ALLOC_SIZE:I = 0x20000


# instance fields
.field private connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

.field private volatile connected:Z

.field private flv:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;

.field private isPpsSpsSend:Z

.field private mAudioAllocator:Lnet/ossrs/rtmp/SrsAllocator;

.field private mAudioSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

.field private mFlvTagCache:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDropFrameTime:J

.field private mVideoAllocator:Lnet/ossrs/rtmp/SrsAllocator;

.field private mVideoSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

.field private needToFindKeyFrame:Z

.field private profileIop:B

.field private publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

.field private sampleRate:I

.field private worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 3
    .param p1, "connectCheckerRtmp"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connected:Z

    .line 61
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->flv:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->needToFindKeyFrame:Z

    .line 65
    new-instance v0, Lnet/ossrs/rtmp/SrsAllocator;

    const/high16 v1, 0x20000

    invoke-direct {v0, v1}, Lnet/ossrs/rtmp/SrsAllocator;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mVideoAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    .line 66
    new-instance v0, Lnet/ossrs/rtmp/SrsAllocator;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lnet/ossrs/rtmp/SrsAllocator;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mAudioAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    .line 67
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mFlvTagCache:Ljava/util/concurrent/BlockingQueue;

    .line 69
    const v0, 0xac44

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->sampleRate:I

    .line 70
    iput-boolean v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->isPpsSpsSend:Z

    .line 71
    iput-byte v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->profileIop:B

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mLastDropFrameTime:J

    .line 84
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .line 85
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    invoke-direct {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lnet/ossrs/rtmp/ConnectCheckerRtmp;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-byte v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->profileIop:B

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsAllocator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mVideoAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->isPpsSpsSend:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->isPpsSpsSend:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lnet/ossrs/rtmp/SrsAllocator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mAudioAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->sampleRate:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mLastDropFrameTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mLastDropFrameTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mFlvTagCache:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mVideoSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mVideoSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->sendFlvTag(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mAudioSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mAudioSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->flv:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->needToFindKeyFrame:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->needToFindKeyFrame:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;
    .param p1, "x1"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->disconnect(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    return-void
.end method

.method private connect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connected:Z

    if-nez v0, :cond_1

    .line 137
    const-string v0, "SrsFlvMuxer"

    const-string v1, "worker: connecting to RTMP server by url=%s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->connect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    const-string v1, "live"

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->publish(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connected:Z

    .line 141
    :cond_0
    iput-object v4, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mVideoSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .line 142
    iput-object v4, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mAudioSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .line 144
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connected:Z

    return v0
.end method

.method private disconnect(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 2
    .param p1, "connectChecker"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connected:Z

    .line 129
    iput-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mVideoSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .line 130
    iput-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mAudioSequenceHeader:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .line 131
    invoke-interface {p1}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onDisconnectRtmp()V

    .line 132
    const-string v0, "SrsFlvMuxer"

    const-string v1, "worker: disconnect ok."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendFlvTag(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;)V
    .locals 5
    .param p1, "frame"    # Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->connected:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_keyframe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const-string v0, "SrsFlvMuxer"

    const-string v1, "worker: send frame type=%d, dts=%d, size=%dB"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->type:I

    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->dts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .line 156
    invoke-virtual {v4}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 155
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    iget-object v1, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v2}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size()I

    move-result v2

    iget v3, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->dts:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->publishVideoData([BII)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mVideoAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    iget-object v1, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v0, v1}, Lnet/ossrs/rtmp/SrsAllocator;->release(Lnet/ossrs/rtmp/SrsAllocator$Allocation;)V

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    iget-object v1, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->array()[B

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v2}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size()I

    move-result v2

    iget v3, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->dts:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->publishAudioData([BII)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mAudioAllocator:Lnet/ossrs/rtmp/SrsAllocator;

    iget-object v1, p1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlvFrame;->flvTag:Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-virtual {v0, v1}, Lnet/ossrs/rtmp/SrsAllocator;->release(Lnet/ossrs/rtmp/SrsAllocator$Allocation;)V

    goto :goto_0
.end method


# virtual methods
.method public sendAudio(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->flv:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->writeAudioSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 241
    return-void
.end method

.method public sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->flv:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->writeVideoSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 237
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->setAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setIsStereo(Z)V
    .locals 2
    .param p1, "isStereo"    # Z

    .prologue
    .line 102
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 103
    .local v0, "channel":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->flv:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v1, v0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->setAchannel(I)V

    .line 104
    return-void

    .line 102
    .end local v0    # "channel":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setProfileIop(B)V
    .locals 0
    .param p1, "profileIop"    # B

    .prologue
    .line 90
    iput-byte p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->profileIop:B

    .line 91
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->sampleRate:I

    .line 99
    return-void
.end method

.method public setSpsPPs(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->flv:Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$SrsFlv;->setSpsPPs(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 95
    return-void
.end method

.method public setVideoResolution(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->publisher:Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/livebroadcast/v2/streaming/library/DefaultRtmpPublisher;->setVideoResolution(II)V

    .line 120
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 4
    .param p1, "rtmpUrl"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mLastDropFrameTime:J

    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$1;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    .line 203
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;->mLastDropFrameTime:J

    .line 211
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer$2;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/library/SrsFlvMuxer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    return-void
.end method
