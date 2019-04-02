.class public Lcom/pedro/rtsp/rtsp/RtspClient;
.super Ljava/lang/Object;
.source "RtspClient.java"


# static fields
.field private static final rtspUrlPattern:Ljava/util/regex/Pattern;

.field private static final rtspsUrlPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aacPacket:Lcom/pedro/rtsp/rtp/packets/AacPacket;

.field private audioPorts:[I

.field private authorization:Ljava/lang/String;

.field private connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

.field private connectionSocket:Ljava/net/Socket;

.field private defaultPPS:Ljava/lang/String;

.field private defaultSPS:Ljava/lang/String;

.field private h264Packet:Lcom/pedro/rtsp/rtp/packets/H264Packet;

.field private host:Ljava/lang/String;

.field private isStereo:Z

.field private mCSeq:I

.field private outputStream:Ljava/io/OutputStream;

.field private password:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private pps:[B

.field private protocol:Lcom/pedro/rtsp/rtsp/Protocol;

.field private reader:Ljava/io/BufferedReader;

.field private sampleRate:I

.field private sessionId:Ljava/lang/String;

.field private sps:[B

.field private volatile streaming:Z

.field private thread:Ljava/lang/Thread;

.field private final timestamp:J

.field private tlsEnabled:Z

.field private final trackAudio:I

.field private final trackVideo:I

.field private user:Ljava/lang/String;

.field private videoPorts:[I

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "^rtsp://([^/:]+)(:(\\d+))*/([^/]+)(/(.*))*$"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pedro/rtsp/rtsp/RtspClient;->rtspUrlPattern:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "^rtsps://([^/:]+)(:(\\d+))*/([^/]+)(/(.*))*$"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/pedro/rtsp/rtsp/RtspClient;->rtspsUrlPattern:Ljava/util/regex/Pattern;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;)V
    .locals 9
    .param p1, "connectCheckerRtsp"    # Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .prologue
    const/16 v8, 0x20

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/16 v6, 0x3e8

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v2, "RtspClient"

    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->TAG:Ljava/lang/String;

    .line 37
    const-string v2, ""

    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    .line 40
    const v2, 0xac44

    iput v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sampleRate:I

    .line 41
    iput-boolean v4, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->isStereo:Z

    .line 43
    iput v4, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->trackVideo:I

    .line 44
    iput v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->trackAudio:I

    .line 45
    sget-object v2, Lcom/pedro/rtsp/rtsp/Protocol;->TCP:Lcom/pedro/rtsp/rtsp/Protocol;

    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->protocol:Lcom/pedro/rtsp/rtsp/Protocol;

    .line 46
    iput v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    .line 47
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    .line 60
    const-string v2, "Z0KAHtoHgUZA"

    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->defaultSPS:Ljava/lang/String;

    .line 61
    const-string v2, "aM4NiA=="

    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->defaultPPS:Ljava/lang/String;

    .line 63
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->audioPorts:[I

    .line 64
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->videoPorts:[I

    .line 67
    iput-boolean v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->streaming:Z

    .line 69
    iput-boolean v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->tlsEnabled:Z

    .line 75
    iput-object p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, "uptime":J
    div-long v2, v0, v6

    shl-long/2addr v2, v8

    div-long v4, v0, v6

    mul-long/2addr v4, v6

    sub-long v4, v0, v4

    shr-long/2addr v4, v8

    div-long/2addr v4, v6

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->timestamp:J

    .line 79
    return-void

    .line 63
    :array_0
    .array-data 4
        0x1388
        0x1389
    .end array-data

    .line 64
    :array_1
    .array-data 4
        0x138a
        0x138b
    .end array-data
.end method

.method static synthetic access$000(Lcom/pedro/rtsp/rtsp/RtspClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->tlsEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->connectionSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->getResponseStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->connectionSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->user:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendAnnounceWithAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/rtsp/Protocol;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->protocol:Lcom/pedro/rtsp/rtsp/Protocol;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/pedro/rtsp/rtsp/RtspClient;ILcom/pedro/rtsp/rtsp/Protocol;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendSetup(ILcom/pedro/rtsp/rtsp/Protocol;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendRecord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/rtp/packets/H264Packet;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->h264Packet:Lcom/pedro/rtsp/rtp/packets/H264Packet;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/pedro/rtsp/rtsp/RtspClient;)Lcom/pedro/rtsp/rtp/packets/AacPacket;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->aacPacket:Lcom/pedro/rtsp/rtp/packets/AacPacket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/pedro/rtsp/rtsp/RtspClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->streaming:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendTearDown()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/pedro/rtsp/rtsp/RtspClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    return v0
.end method

.method static synthetic access$402(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    .locals 0
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p1, "x1"    # Ljava/io/BufferedReader;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->reader:Ljava/io/BufferedReader;

    return-object p1
.end method

.method static synthetic access$500(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$502(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->outputStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$600(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/io/BufferedWriter;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->writer:Ljava/io/BufferedWriter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/pedro/rtsp/rtsp/RtspClient;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    .locals 0
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p1, "x1"    # Ljava/io/BufferedWriter;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->writer:Ljava/io/BufferedWriter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendOptions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/pedro/rtsp/rtsp/RtspClient;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/pedro/rtsp/rtsp/RtspClient;->getResponse(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/pedro/rtsp/rtsp/RtspClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/rtsp/rtsp/RtspClient;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/pedro/rtsp/rtsp/RtspClient;->sendAnnounce()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addHeaders(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "authorization"    # Ljava/lang/String;

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CSeq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nContent-Length: 0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authorization: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private createAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "authResponse"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 460
    const-string v7, "realm=\"(.+)\",\\s+nonce=\"(\\w+)\""

    .line 461
    invoke-static {v7, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 462
    .local v0, "authPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 463
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 464
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "realm":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, "nonce":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->user:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->password:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pedro/rtsp/utils/AuthUtil;->getMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "hash1":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ANNOUNCE:rtsp://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pedro/rtsp/utils/AuthUtil;->getMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "hash2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pedro/rtsp/utils/AuthUtil;->getMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "hash3":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Digest username=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->user:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\",realm=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\",nonce=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\",uri=\"rtsp://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\",response=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private createBody()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 303
    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sps:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->pps:[B

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sps:[B

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sps:[B

    array-length v3, v3

    invoke-static {v2, v6, v3, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "sSPS":Ljava/lang/String;
    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->pps:[B

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->pps:[B

    array-length v3, v3

    invoke-static {v2, v6, v3, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "sPPS":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v=0\r\no=- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN IP4 127.0.0.1\r\ns=Unnamed\r\ni=N/A\r\nc=IN IP4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nt=0 0\r\na=recvonly\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sampleRate:I

    iget-boolean v4, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->isStereo:Z

    .line 329
    invoke-static {v6, v3, v4}, Lcom/pedro/rtsp/rtsp/Body;->createAudioBody(IIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 330
    invoke-static {v3, v1, v0}, Lcom/pedro/rtsp/rtsp/Body;->createVideoBody(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    return-object v2

    .line 307
    .end local v0    # "sPPS":Ljava/lang/String;
    .end local v1    # "sSPS":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->defaultSPS:Ljava/lang/String;

    .line 308
    .restart local v1    # "sSPS":Ljava/lang/String;
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->defaultPPS:Ljava/lang/String;

    .restart local v0    # "sPPS":Ljava/lang/String;
    goto :goto_0
.end method

.method private getResponse(ZZ)Ljava/lang/String;
    .locals 8
    .param p1, "isAudio"    # Z
    .param p2, "checkStatus"    # Z

    .prologue
    .line 395
    :try_start_0
    const-string v3, ""

    .line 397
    .local v3, "response":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 398
    const-string v5, "Session"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 399
    const-string v5, "Session: (\\w+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 400
    .local v4, "rtspPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 401
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 402
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 404
    :cond_1
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 406
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "rtspPattern":Ljava/util/regex/Pattern;
    :cond_2
    const-string v5, "server_port"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 407
    const-string v5, "server_port=([0-9]+)-([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 408
    .restart local v4    # "rtspPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 409
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 410
    if-eqz p1, :cond_6

    .line 411
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->audioPorts:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 412
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->audioPorts:[I

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 419
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "rtspPattern":Ljava/util/regex/Pattern;
    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 423
    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, v3}, Lcom/pedro/rtsp/rtsp/RtspClient;->getResponseStatus(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_5

    .line 424
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error configure stream, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    .line 426
    :cond_5
    const-string v5, "RtspClient"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "response":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 414
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v4    # "rtspPattern":Ljava/util/regex/Pattern;
    :cond_6
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->videoPorts:[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 415
    iget-object v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->videoPorts:[I

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "rtspPattern":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "RtspClient"

    const-string v6, "read error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getResponseStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 486
    const-string v1, "RTSP/\\d.\\d (\\d+) (\\w+)"

    const/4 v2, 0x2

    .line 487
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 488
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 491
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private sendAnnounce()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/pedro/rtsp/rtsp/RtspClient;->createBody()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "body":Ljava/lang/String;
    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANNOUNCE rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RTSP/1.0\r\nCSeq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nContent-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nContent-Type: application/sdp\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "announce":Ljava/lang/String;
    :goto_0
    const-string v2, "RtspClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-object v0

    .line 278
    .end local v0    # "announce":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANNOUNCE rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RTSP/1.0\r\nCSeq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nContent-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nAuthorization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nContent-Type: application/sdp\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "announce":Ljava/lang/String;
    goto :goto_0
.end method

.method private sendAnnounceWithAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "authResponse"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/pedro/rtsp/rtsp/RtspClient;->createAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    .line 436
    const-string v2, "Auth"

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0}, Lcom/pedro/rtsp/rtsp/RtspClient;->createBody()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "body":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANNOUNCE rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RTSP/1.0\r\nCSeq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nContent-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 448
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nAuthorization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\nContent-Type: application/sdp\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "announce":Ljava/lang/String;
    const-string v2, "RtspClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-object v0
.end method

.method private sendOptions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPTIONS rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RTSP/1.0\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    .line 357
    invoke-direct {p0, v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->addHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "options":Ljava/lang/String;
    const-string v1, "RtspClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-object v0
.end method

.method private sendRecord()Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RECORD rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RTSP/1.0\r\nRange: npt=0.000-\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    .line 370
    invoke-direct {p0, v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->addHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "record":Ljava/lang/String;
    const-string v1, "RtspClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-object v0
.end method

.method private sendSetup(ILcom/pedro/rtsp/rtsp/Protocol;)Ljava/lang/String;
    .locals 4
    .param p1, "track"    # I
    .param p2, "protocol"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 334
    sget-object v2, Lcom/pedro/rtsp/rtsp/Protocol;->UDP:Lcom/pedro/rtsp/rtsp/Protocol;

    if-ne p2, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UDP;unicast;client_port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    add-int/lit16 v3, v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    add-int/lit16 v3, v3, 0x1388

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mode=record"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "params":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETUP rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/trackID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RTSP/1.0\r\nTransport: RTP/AVP/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    .line 350
    invoke-direct {p0, v3}, Lcom/pedro/rtsp/rtsp/RtspClient;->addHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "setup":Ljava/lang/String;
    const-string v2, "RtspClient"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-object v1

    .line 334
    .end local v0    # "params":Ljava/lang/String;
    .end local v1    # "setup":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TCP;interleaved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mode=record"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendTearDown()Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEARDOWN rtsp://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RTSP/1.0\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->authorization:Ljava/lang/String;

    .line 377
    invoke-direct {p0, v2}, Lcom/pedro/rtsp/rtsp/RtspClient;->addHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "teardown":Ljava/lang/String;
    const-string v1, "RtspClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 3

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->streaming:Z

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Lcom/pedro/rtsp/rtp/packets/H264Packet;

    iget-object v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->protocol:Lcom/pedro/rtsp/rtsp/Protocol;

    invoke-direct {v0, p0, v1}, Lcom/pedro/rtsp/rtp/packets/H264Packet;-><init>(Lcom/pedro/rtsp/rtsp/RtspClient;Lcom/pedro/rtsp/rtsp/Protocol;)V

    iput-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->h264Packet:Lcom/pedro/rtsp/rtp/packets/H264Packet;

    .line 156
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sps:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->pps:[B

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->h264Packet:Lcom/pedro/rtsp/rtp/packets/H264Packet;

    iget-object v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sps:[B

    iget-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->pps:[B

    invoke-virtual {v0, v1, v2}, Lcom/pedro/rtsp/rtp/packets/H264Packet;->setSPSandPPS([B[B)V

    .line 159
    :cond_0
    new-instance v0, Lcom/pedro/rtsp/rtp/packets/AacPacket;

    iget-object v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->protocol:Lcom/pedro/rtsp/rtsp/Protocol;

    invoke-direct {v0, p0, v1}, Lcom/pedro/rtsp/rtp/packets/AacPacket;-><init>(Lcom/pedro/rtsp/rtsp/RtspClient;Lcom/pedro/rtsp/rtsp/Protocol;)V

    iput-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->aacPacket:Lcom/pedro/rtsp/rtp/packets/AacPacket;

    .line 160
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->aacPacket:Lcom/pedro/rtsp/rtp/packets/AacPacket;

    iget v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sampleRate:I

    invoke-virtual {v0, v1}, Lcom/pedro/rtsp/rtp/packets/AacPacket;->setSampleRate(I)V

    .line 161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pedro/rtsp/rtsp/RtspClient$1;

    invoke-direct {v1, p0}, Lcom/pedro/rtsp/rtsp/RtspClient$1;-><init>(Lcom/pedro/rtsp/rtsp/RtspClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->thread:Ljava/lang/Thread;

    .line 228
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-boolean v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->streaming:Z

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pedro/rtsp/rtsp/RtspClient$2;

    invoke-direct {v1, p0}, Lcom/pedro/rtsp/rtsp/RtspClient$2;-><init>(Lcom/pedro/rtsp/rtsp/RtspClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->thread:Ljava/lang/Thread;

    .line 247
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 248
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->h264Packet:Lcom/pedro/rtsp/rtp/packets/H264Packet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->aacPacket:Lcom/pedro/rtsp/rtp/packets/AacPacket;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->h264Packet:Lcom/pedro/rtsp/rtp/packets/H264Packet;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtp/packets/H264Packet;->close()V

    .line 250
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->aacPacket:Lcom/pedro/rtsp/rtp/packets/AacPacket;

    invoke-virtual {v0}, Lcom/pedro/rtsp/rtp/packets/AacPacket;->close()V

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->mCSeq:I

    .line 253
    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sps:[B

    .line 254
    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->pps:[B

    .line 255
    iput-object v2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sessionId:Ljava/lang/String;

    .line 257
    :cond_1
    return-void
.end method

.method public getAudioPorts()[I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->audioPorts:[I

    return-object v0
.end method

.method public getConnectCheckerRtsp()Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    return v0
.end method

.method public getVideoPorts()[I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->videoPorts:[I

    return-object v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->streaming:Z

    return v0
.end method

.method public sendAudio(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "aacBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/pedro/rtsp/rtsp/RtspClient;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->aacPacket:Lcom/pedro/rtsp/rtp/packets/AacPacket;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtp/packets/AacPacket;->createAndSendPacket(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 513
    :cond_0
    return-void
.end method

.method public sendVideo(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "h264Buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/pedro/rtsp/rtsp/RtspClient;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->h264Packet:Lcom/pedro/rtsp/rtp/packets/H264Packet;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/rtsp/rtp/packets/H264Packet;->createAndSendPacket(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 507
    :cond_0
    return-void
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->user:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->password:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setIsStereo(Z)V
    .locals 0
    .param p1, "isStereo"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->isStereo:Z

    .line 151
    return-void
.end method

.method public setProtocol(Lcom/pedro/rtsp/rtsp/Protocol;)V
    .locals 0
    .param p1, "protocol"    # Lcom/pedro/rtsp/rtsp/Protocol;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->protocol:Lcom/pedro/rtsp/rtsp/Protocol;

    .line 83
    return-void
.end method

.method public setSPSandPPS(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    new-array v1, v2, [B

    .line 140
    .local v1, "mSPS":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    array-length v2, v1

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    new-array v0, v2, [B

    .line 143
    .local v0, "mPPS":[B
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    array-length v2, v0

    invoke-virtual {p2, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 145
    iput-object v1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sps:[B

    .line 146
    iput-object v0, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->pps:[B

    .line 147
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->sampleRate:I

    .line 120
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    sget-object v3, Lcom/pedro/rtsp/rtsp/RtspClient;->rtspUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 96
    .local v1, "rtspMatcher":Ljava/util/regex/Matcher;
    sget-object v3, Lcom/pedro/rtsp/rtsp/RtspClient;->rtspsUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 98
    .local v2, "rtspsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    move-object v0, v1

    .line 100
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iput-boolean v4, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->tlsEnabled:Z

    .line 109
    :goto_0
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->host:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->port:I

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->path:Ljava/lang/String;

    .line 112
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :goto_2
    return-void

    .line 101
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    move-object v0, v2

    .line 103
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    iput-boolean v5, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->tlsEnabled:Z

    goto :goto_0

    .line 105
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    iput-boolean v4, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->streaming:Z

    .line 106
    iget-object v3, p0, Lcom/pedro/rtsp/rtsp/RtspClient;->connectCheckerRtsp:Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;

    const-string v4, "Endpoint malformed, should be: rtsp://ip:port/appname/streamname"

    invoke-interface {v3, v4}, Lcom/pedro/rtsp/utils/ConnectCheckerRtsp;->onConnectionFailedRtsp(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    const-string v3, "1935"

    goto :goto_1
.end method
