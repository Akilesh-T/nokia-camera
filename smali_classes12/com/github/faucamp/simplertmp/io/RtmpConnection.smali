.class public Lcom/github/faucamp/simplertmp/io/RtmpConnection;
.super Ljava/lang/Object;
.source "RtmpConnection.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/RtmpPublisher;


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmpConnection"

.field private static final rtmpUrlPattern:Ljava/util/regex/Pattern;

.field private static final rtmpsUrlPattern:Ljava/util/regex/Pattern;


# instance fields
.field private appName:Ljava/lang/String;

.field private challenge:Ljava/lang/String;

.field private connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

.field private volatile connected:Z

.field private final connectingLock:Ljava/lang/Object;

.field private currentStreamId:I

.field private host:Ljava/lang/String;

.field private inputStream:Ljava/io/BufferedInputStream;

.field private onAuth:Z

.field private opaque:Ljava/lang/String;

.field private outputStream:Ljava/io/BufferedOutputStream;

.field private pageUrl:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:I

.field private final publishLock:Ljava/lang/Object;

.field private volatile publishPermitted:Z

.field private publishType:Ljava/lang/String;

.field private rtmpDecoder:Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

.field private rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

.field private rxPacketHandler:Ljava/lang/Thread;

.field private salt:Ljava/lang/String;

.field private socket:Ljava/net/Socket;

.field private socketExceptionCause:Ljava/lang/String;

.field private streamName:Ljava/lang/String;

.field private swfUrl:Ljava/lang/String;

.field private tcUrl:Ljava/lang/String;

.field private tlsEnabled:Z

.field private transactionIdCounter:I

.field private user:Ljava/lang/String;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "^rtmp://([^/:]+)(:(\\d+))*/([^/]+)(/(.*))*$"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpUrlPattern:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "^rtmps://([^/:]+)(:(\\d+))*/([^/]+)(/(.*))*$"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpsUrlPattern:Ljava/util/regex/Pattern;

    .line 49
    return-void
.end method

.method public constructor <init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V
    .locals 3
    .param p1, "connectCheckerRtmp"    # Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socketExceptionCause:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 68
    iput-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    .line 71
    iput v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    .line 72
    iput v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    .line 79
    iput-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->user:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->password:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->salt:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->challenge:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->opaque:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->onAuth:Z

    .line 87
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/github/faucamp/simplertmp/io/RtmpConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/faucamp/simplertmp/io/RtmpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->handleRxPacketLoop()V

    return-void
.end method

.method private closeStream()V
    .locals 3

    .prologue
    .line 386
    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    if-nez v1, :cond_1

    .line 387
    :cond_0
    const-string v1, "RtmpConnection"

    const-string v2, "closeStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    return-void

    .line 390
    :cond_1
    const-string v1, "RtmpConnection"

    const-string v2, "closeStream(): setting current stream ID to 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v1, "closeStream"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 392
    .local v0, "closeStream":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setChunkStreamId(I)V

    .line 393
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 394
    new-instance v1, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v1}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 395
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto :goto_0
.end method

.method private createStream()Z
    .locals 8

    .prologue
    const/4 v6, 0x5

    .line 291
    iget-boolean v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-eqz v4, :cond_1

    .line 292
    :cond_0
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create stream failed, connected= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", StreamId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    .line 294
    const/4 v4, 0x0

    .line 333
    :goto_0
    return v4

    .line 297
    :cond_1
    const-string v4, "RtmpConnection"

    const-string v5, "createStream(): Sending releaseStream command..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v3, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v4, "releaseStream"

    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v3, v4, v5}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 300
    .local v3, "releaseStream":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setChunkStreamId(I)V

    .line 301
    new-instance v4, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v4}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v3, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 302
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, v3}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 305
    const-string v4, "RtmpConnection"

    const-string v5, "createStream(): Sending FCPublish command..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v4, "FCPublish"

    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v0, v4, v5}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 308
    .local v0, "FCPublish":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setChunkStreamId(I)V

    .line 309
    new-instance v4, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v4}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v0, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 310
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 313
    const-string v4, "RtmpConnection"

    const-string v5, "createStream(): Sending createStream command..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v5, 0x3

    .line 315
    invoke-virtual {v4, v5}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v1

    .line 317
    .local v1, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v4, "createStream"

    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v2, v4, v5, v1}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 318
    .local v2, "createStream":Lcom/github/faucamp/simplertmp/packets/Command;
    new-instance v4, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v4}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v2, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 319
    invoke-direct {p0, v2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 322
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    monitor-enter v5

    .line 324
    :try_start_0
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    iget-boolean v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    if-nez v4, :cond_2

    .line 330
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->shutdown(Z)V

    .line 331
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    const-string v5, "Error configure stream, publish permitted failed"

    invoke-interface {v4, v5}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    .line 333
    :cond_2
    iget-boolean v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    goto/16 :goto_0

    .line 328
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 325
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private fmlePublish()V
    .locals 3

    .prologue
    .line 337
    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-nez v1, :cond_1

    .line 338
    :cond_0
    const-string v1, "RtmpConnection"

    const-string v2, "fmlePublish failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 342
    :cond_1
    const-string v1, "RtmpConnection"

    const-string v2, "fmlePublish(): Sending publish command..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v1, "publish"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 344
    .local v0, "publish":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setChunkStreamId(I)V

    .line 345
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 346
    new-instance v1, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v1}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 347
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto :goto_0
.end method

.method private handleRxInvoke(Lcom/github/faucamp/simplertmp/packets/Command;)V
    .locals 12
    .param p1, "invoke"    # Lcom/github/faucamp/simplertmp/packets/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 590
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getCommandName()Ljava/lang/String;

    move-result-object v7

    .line 591
    .local v7, "commandName":Ljava/lang/String;
    const/4 v0, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 711
    const-string v0, "RtmpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRxInvoke(): Unknown/unhandled server invoke: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1
    :goto_1
    return-void

    .line 591
    :sswitch_0
    const-string v2, "_error"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v11

    goto :goto_0

    :sswitch_1
    const-string v2, "_result"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "onBWDone"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "onFCPublish"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "onStatus"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 594
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->getProperty(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/amf/AmfString;

    .line 595
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfString;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 596
    .local v8, "description":Ljava/lang/String;
    const-string v0, "RtmpConnection"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v0, "reason=authfailed"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    invoke-interface {v0}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onAuthErrorRtmp()V

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 600
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :try_start_1
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 602
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 652
    .end local v8    # "description":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 653
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    .line 654
    iput-boolean v11, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 655
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :try_start_3
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 657
    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 603
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "description":Ljava/lang/String;
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->user:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->password:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "challenge="

    .line 605
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "salt="

    .line 606
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->onAuth:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 609
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->shutdown(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 613
    :goto_2
    :try_start_6
    new-instance v0, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    .line 614
    new-instance v0, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-direct {v0, v1}, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;-><init>(Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpDecoder:Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

    .line 615
    iget-boolean v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tlsEnabled:Z

    if-nez v0, :cond_3

    .line 616
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->host:Ljava/lang/String;

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    .line 620
    :goto_3
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->inputStream:Ljava/io/BufferedInputStream;

    .line 621
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    .line 622
    const-string v0, "RtmpConnection"

    const-string v1, "connect(): socket connection established, doing handshake..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {v8}, Lcom/github/faucamp/simplertmp/Util;->getSalt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->salt:Ljava/lang/String;

    .line 624
    invoke-static {v8}, Lcom/github/faucamp/simplertmp/Util;->getChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->challenge:Ljava/lang/String;

    .line 625
    invoke-static {v8}, Lcom/github/faucamp/simplertmp/Util;->getOpaque(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->opaque:Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->inputStream:Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-direct {p0, v0, v1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->handshake(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 627
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/github/faucamp/simplertmp/io/RtmpConnection$2;

    invoke-direct {v1, p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection$2;-><init>(Lcom/github/faucamp/simplertmp/io/RtmpConnection;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    .line 637
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 638
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->salt:Ljava/lang/String;

    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->challenge:Ljava/lang/String;

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->opaque:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendConnectAuthPacketFinal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    :catch_1
    move-exception v9

    .line 611
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 618
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->host:Ljava/lang/String;

    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->port:I

    invoke-static {v0, v1}, Lnet/ossrs/rtmp/CreateSSLSocket;->createSSlSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    goto :goto_3

    .line 639
    :cond_4
    const-string v0, "code=403"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->user:Ljava/lang/String;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->password:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 640
    :cond_6
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    invoke-interface {v0}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onAuthErrorRtmp()V

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 642
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 643
    :try_start_7
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 644
    monitor-exit v1

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    .line 646
    :cond_7
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    invoke-interface {v0, v8}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 648
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 649
    :try_start_9
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 650
    monitor-exit v1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 662
    .end local v8    # "description":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getTransactionId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->takeInvokedCommand(I)Ljava/lang/String;

    move-result-object v10

    .line 664
    .local v10, "method":Ljava/lang/String;
    const-string v0, "RtmpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRxInvoke: Got result for invoked method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v0, "connect"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 666
    iget-boolean v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->onAuth:Z

    if-eqz v0, :cond_8

    .line 667
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    invoke-interface {v0}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onAuthSuccessRtmp()V

    .line 668
    iput-boolean v11, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->onAuth:Z

    .line 672
    :cond_8
    iput-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 673
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_b
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 675
    monitor-exit v1

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    .line 676
    :cond_9
    const-string v0, "createStream"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 678
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->getValue()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    .line 679
    const-string v0, "RtmpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRxInvoke(): Stream ID to publish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 681
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->fmlePublish()V

    goto/16 :goto_1

    .line 683
    :cond_a
    const-string v0, "releaseStream"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 684
    const-string v0, "RtmpConnection"

    const-string v1, "handleRxInvoke(): \'releaseStream\'"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 685
    :cond_b
    const-string v0, "FCPublish"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 686
    const-string v0, "RtmpConnection"

    const-string v1, "handleRxInvoke(): \'FCPublish\'"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 688
    :cond_c
    const-string v0, "RtmpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRxInvoke(): \'_result\' message received for unknown method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 692
    .end local v10    # "method":Ljava/lang/String;
    :pswitch_2
    const-string v0, "RtmpConnection"

    const-string v1, "handleRxInvoke(): \'onBWDone\'"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 695
    :pswitch_3
    const-string v0, "RtmpConnection"

    const-string v1, "handleRxInvoke(): \'onFCPublish\'"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 699
    :pswitch_4
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->getProperty(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/amf/AmfString;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfString;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, "code":Ljava/lang/String;
    const-string v0, "RtmpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRxInvoke(): onStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v0, "NetStream.Publish.Start"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->onMetaData()V

    .line 704
    iput-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    .line 705
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    monitor-enter v1

    .line 706
    :try_start_c
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 707
    monitor-exit v1

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    .line 591
    :sswitch_data_0
    .sparse-switch
        -0x6971956d -> :sswitch_3
        -0x581ecaf7 -> :sswitch_0
        0x3b1a5816 -> :sswitch_2
        0x59c2a6b1 -> :sswitch_4
        0x69bdc53c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleRxPacketLoop()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v12

    if-nez v12, :cond_1

    .line 524
    :try_start_0
    iget-object v12, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpDecoder:Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

    iget-object v13, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v12, v13}, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;->readPacket(Ljava/io/InputStream;)Lcom/github/faucamp/simplertmp/packets/RtmpPacket;

    move-result-object v8

    .line 525
    .local v8, "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    if-eqz v8, :cond_0

    .line 527
    sget-object v12, Lcom/github/faucamp/simplertmp/io/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

    invoke-virtual {v8}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getMessageType()Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 574
    const-string v12, "RtmpConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleRxPacketLoop(): Not handling unimplemented/unknown packet of type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 575
    invoke-virtual {v8}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getMessageType()Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 574
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 579
    .end local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :catch_0
    move-exception v6

    .line 580
    .local v6, "eof":Ljava/io/EOFException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 529
    .end local v6    # "eof":Ljava/io/EOFException;
    .restart local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_1
    :try_start_1
    iget-object v12, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    check-cast v8, Lcom/github/faucamp/simplertmp/packets/Abort;

    .end local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    invoke-virtual {v8}, Lcom/github/faucamp/simplertmp/packets/Abort;->getChunkStreamId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v12

    .line 530
    invoke-virtual {v12}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->clearStoredChunks()V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 581
    :catch_1
    move-exception v5

    .line 582
    .local v5, "e":Ljava/io/IOException;
    iget-object v12, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading packet: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    .line 583
    const-string v12, "RtmpConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Caught SocketException while reading/decoding packet, shutting down: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 584
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 583
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 533
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_2
    :try_start_2
    move-object v0, v8

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/UserControl;

    move-object v10, v0

    .line 534
    .local v10, "user":Lcom/github/faucamp/simplertmp/packets/UserControl;
    sget-object v12, Lcom/github/faucamp/simplertmp/io/RtmpConnection$3;->$SwitchMap$com$github$faucamp$simplertmp$packets$UserControl$Type:[I

    invoke-virtual {v10}, Lcom/github/faucamp/simplertmp/packets/UserControl;->getType()Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1

    goto/16 :goto_0

    .line 538
    :pswitch_3
    iget-object v12, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v13, 0x2

    .line 539
    invoke-virtual {v12, v13}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v3

    .line 540
    .local v3, "channelInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    const-string v12, "RtmpConnection"

    const-string v13, "handleRxPacketLoop(): Sending PONG reply.."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v7, Lcom/github/faucamp/simplertmp/packets/UserControl;

    invoke-direct {v7, v10, v3}, Lcom/github/faucamp/simplertmp/packets/UserControl;-><init>(Lcom/github/faucamp/simplertmp/packets/UserControl;Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 542
    .local v7, "pong":Lcom/github/faucamp/simplertmp/packets/UserControl;
    invoke-direct {p0, v7}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto/16 :goto_0

    .line 545
    .end local v3    # "channelInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    .end local v7    # "pong":Lcom/github/faucamp/simplertmp/packets/UserControl;
    :pswitch_4
    const-string v12, "RtmpConnection"

    const-string v13, "handleRxPacketLoop(): Stream EOF reached, closing RTMP writer..."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 553
    .end local v10    # "user":Lcom/github/faucamp/simplertmp/packets/UserControl;
    :pswitch_5
    move-object v0, v8

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;

    move-object v11, v0

    .line 554
    .local v11, "windowAckSize":Lcom/github/faucamp/simplertmp/packets/WindowAckSize;
    invoke-virtual {v11}, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;->getAcknowledgementWindowSize()I

    move-result v9

    .line 555
    .local v9, "size":I
    const-string v12, "RtmpConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleRxPacketLoop(): Setting acknowledgement window size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v12, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v12, v9}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->setAcknowledgmentWindowSize(I)V

    goto/16 :goto_0

    .line 559
    .end local v9    # "size":I
    .end local v11    # "windowAckSize":Lcom/github/faucamp/simplertmp/packets/WindowAckSize;
    :pswitch_6
    move-object v0, v8

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;

    move-object v2, v0

    .line 560
    .local v2, "bw":Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;
    iget-object v12, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v2}, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->getAcknowledgementWindowSize()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->setAcknowledgmentWindowSize(I)V

    .line 561
    iget-object v12, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v12}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getAcknowledgementWindowSize()I

    move-result v1

    .line 562
    .local v1, "acknowledgementWindowsize":I
    iget-object v12, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v13, 0x2

    .line 563
    invoke-virtual {v12, v13}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v4

    .line 564
    .local v4, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    const-string v12, "RtmpConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleRxPacketLoop(): Send acknowledgement window size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v12, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;

    invoke-direct {v12, v1, v4}, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;-><init>(ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    invoke-direct {p0, v12}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 568
    iget-object v12, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v12, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    goto/16 :goto_0

    .line 571
    .end local v1    # "acknowledgementWindowsize":I
    .end local v2    # "bw":Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;
    .end local v4    # "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    :pswitch_7
    check-cast v8, Lcom/github/faucamp/simplertmp/packets/Command;

    .end local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    invoke-direct {p0, v8}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->handleRxInvoke(Lcom/github/faucamp/simplertmp/packets/Command;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 587
    :cond_1
    return-void

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 534
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handshake(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Handshake;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/packets/Handshake;-><init>()V

    .line 92
    .local v0, "handshake":Lcom/github/faucamp/simplertmp/packets/Handshake;
    invoke-virtual {v0, p2}, Lcom/github/faucamp/simplertmp/packets/Handshake;->writeC0(Ljava/io/OutputStream;)V

    .line 93
    invoke-virtual {v0, p2}, Lcom/github/faucamp/simplertmp/packets/Handshake;->writeC1(Ljava/io/OutputStream;)V

    .line 94
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 95
    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/packets/Handshake;->readS0(Ljava/io/InputStream;)V

    .line 96
    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/packets/Handshake;->readS1(Ljava/io/InputStream;)V

    .line 97
    invoke-virtual {v0, p2}, Lcom/github/faucamp/simplertmp/packets/Handshake;->writeC2(Ljava/io/OutputStream;)V

    .line 98
    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/packets/Handshake;->readS2(Ljava/io/InputStream;)V

    .line 99
    return-void
.end method

.method private onMetaData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 353
    iget-boolean v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-nez v2, :cond_1

    .line 354
    :cond_0
    const-string v2, "RtmpConnection"

    const-string v3, "onMetaData failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 358
    :cond_1
    const-string v2, "RtmpConnection"

    const-string v3, "onMetaData(): Sending empty onMetaData..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v1, Lcom/github/faucamp/simplertmp/packets/Data;

    const-string v2, "@setDataFrame"

    invoke-direct {v1, v2}, Lcom/github/faucamp/simplertmp/packets/Data;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "metadata":Lcom/github/faucamp/simplertmp/packets/Data;
    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/Data;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v2

    iget v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v2, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 361
    const-string v2, "onMetaData"

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/Data;->addData(Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfMap;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfMap;-><init>()V

    .line 363
    .local v0, "ecmaArray":Lcom/github/faucamp/simplertmp/amf/AmfMap;
    const-string v2, "duration"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 364
    const-string v2, "width"

    iget v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoWidth:I

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 365
    const-string v2, "height"

    iget v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 366
    const-string v2, "videodatarate"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 367
    const-string v2, "framerate"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 368
    const-string v2, "audiodatarate"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 369
    const-string v2, "audiosamplerate"

    const v3, 0xac44

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 370
    const-string v2, "audiosamplesize"

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 371
    const-string v2, "stereo"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;Z)V

    .line 372
    const-string v2, "filesize"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 373
    invoke-virtual {v1, v0}, Lcom/github/faucamp/simplertmp/packets/Data;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 374
    invoke-direct {p0, v1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 435
    iput-boolean v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 436
    iput-boolean v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    .line 437
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tcUrl:Ljava/lang/String;

    .line 438
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->swfUrl:Ljava/lang/String;

    .line 439
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->pageUrl:Ljava/lang/String;

    .line 440
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    .line 441
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    .line 442
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishType:Ljava/lang/String;

    .line 443
    iput v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    .line 444
    iput v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    .line 445
    const-string v0, ""

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socketExceptionCause:Ljava/lang/String;

    .line 446
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    .line 447
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    .line 448
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->user:Ljava/lang/String;

    .line 449
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->password:Ljava/lang/String;

    .line 450
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->salt:Ljava/lang/String;

    .line 451
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->challenge:Ljava/lang/String;

    .line 452
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->opaque:Ljava/lang/String;

    .line 453
    return-void
.end method

.method private rtmpConnect()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 175
    iget-boolean v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    const-string v5, "Already connected"

    invoke-interface {v4, v5}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    .line 216
    :goto_0
    return v3

    .line 180
    :cond_0
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->user:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->password:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 181
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->user:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendConnectAuthPacketUser(Ljava/lang/String;)V

    .line 205
    :goto_1
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    monitor-enter v4

    .line 207
    :try_start_0
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    iget-boolean v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-nez v3, :cond_1

    .line 213
    invoke-direct {p0, v8}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->shutdown(Z)V

    .line 214
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    const-string v4, "Fail to connect, time out"

    invoke-interface {v3, v4}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    .line 216
    :cond_1
    iget-boolean v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->markSessionTimestampTx()V

    .line 185
    const-string v4, "RtmpConnection"

    const-string v5, "rtmpConnect(): Building \'connect\' invoke packet"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v5, 0x3

    .line 187
    invoke-virtual {v4, v5}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v1

    .line 188
    .local v1, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v4, "connect"

    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v2, v4, v5, v1}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 189
    .local v2, "invoke":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v2}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 190
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfObject;-><init>()V

    .line 191
    .local v0, "args":Lcom/github/faucamp/simplertmp/amf/AmfObject;
    const-string v4, "app"

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v4, "flashVer"

    const-string v5, "FMLE/3.0 (compatible; Lavf57.56.101)"

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v4, "swfUrl"

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->swfUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v4, "tcUrl"

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tcUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "fpad"

    invoke-virtual {v0, v4, v3}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Z)V

    .line 196
    const-string v4, "capabilities"

    const/16 v5, 0xef

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 197
    const-string v4, "audioCodecs"

    const/16 v5, 0xdf7

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 198
    const-string v4, "videoCodecs"

    const/16 v5, 0xfc

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 199
    const-string v4, "videoFunction"

    invoke-virtual {v0, v4, v8}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 200
    const-string v4, "pageUrl"

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v4, "objectEncoding"

    invoke-virtual {v0, v4, v3}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 202
    invoke-virtual {v2, v0}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 203
    invoke-direct {p0, v2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto/16 :goto_1

    .line 211
    .end local v0    # "args":Lcom/github/faucamp/simplertmp/amf/AmfObject;
    .end local v1    # "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    .end local v2    # "invoke":Lcom/github/faucamp/simplertmp/packets/Command;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 208
    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method private sendConnectAuthPacketFinal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "salt"    # Ljava/lang/String;
    .param p4, "challenge"    # Ljava/lang/String;
    .param p5, "opaque"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v6, "%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "challenge2":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/github/faucamp/simplertmp/Util;->stringToMD5BASE64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "response":Ljava/lang/String;
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/github/faucamp/simplertmp/Util;->stringToMD5BASE64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?authmod=adobe&user="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&challenge="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&response="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&opaque="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    :cond_1
    invoke-static {}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->markSessionTimestampTx()V

    .line 259
    const-string v6, "RtmpConnection"

    const-string v7, "rtmpConnect(): Building \'connect\' invoke packet"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v7, 0x5

    .line 261
    invoke-virtual {v6, v7}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v2

    .line 262
    .local v2, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    new-instance v3, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v6, "connect"

    iget v7, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v3, v6, v7, v2}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 263
    .local v3, "invoke":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 264
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfObject;-><init>()V

    .line 265
    .local v0, "args":Lcom/github/faucamp/simplertmp/amf/AmfObject;
    const-string v6, "app"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v6, "flashVer"

    const-string v7, "FMLE/3.0 (compatible; Lavf57.56.101)"

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v6, "swfUrl"

    iget-object v7, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->swfUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v6, "tcUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tcUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v6, "fpad"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Z)V

    .line 270
    const-string v6, "capabilities"

    const/16 v7, 0xef

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 271
    const-string v6, "audioCodecs"

    const/16 v7, 0xdf7

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 272
    const-string v6, "videoCodecs"

    const/16 v7, 0xfc

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 273
    const-string v6, "videoFunction"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 274
    const-string v6, "pageUrl"

    iget-object v7, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v6, "objectEncoding"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 276
    invoke-virtual {v3, v0}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 277
    invoke-direct {p0, v3}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 278
    return-void

    .line 248
    .end local v0    # "args":Lcom/github/faucamp/simplertmp/amf/AmfObject;
    .end local v2    # "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    .end local v3    # "invoke":Lcom/github/faucamp/simplertmp/packets/Command;
    .end local v5    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private sendConnectAuthPacketUser(Ljava/lang/String;)V
    .locals 7
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 220
    invoke-static {}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->markSessionTimestampTx()V

    .line 221
    const-string v3, "RtmpConnection"

    const-string v4, "rtmpConnect(): Building \'connect\' invoke packet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v4, 0x5

    .line 223
    invoke-virtual {v3, v4}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v1

    .line 224
    .local v1, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v3, "connect"

    iget v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v2, v3, v4, v1}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 225
    .local v2, "invoke":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v2}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 226
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfObject;-><init>()V

    .line 227
    .local v0, "args":Lcom/github/faucamp/simplertmp/amf/AmfObject;
    const-string v3, "app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?authmod=adobe&user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v3, "flashVer"

    const-string v4, "FMLE/3.0 (compatible; Lavf57.56.101)"

    invoke-virtual {v0, v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v3, "swfUrl"

    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->swfUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v3, "tcUrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tcUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?authmod=adobe&user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "fpad"

    invoke-virtual {v0, v3, v6}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Z)V

    .line 232
    const-string v3, "capabilities"

    const/16 v4, 0xef

    invoke-virtual {v0, v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 233
    const-string v3, "audioCodecs"

    const/16 v4, 0xdf7

    invoke-virtual {v0, v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 234
    const-string v3, "videoCodecs"

    const/16 v4, 0xfc

    invoke-virtual {v0, v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 235
    const-string v3, "videoFunction"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 236
    const-string v3, "pageUrl"

    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v3, "objectEncoding"

    invoke-virtual {v0, v3, v6}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 238
    invoke-virtual {v2, v0}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 239
    invoke-direct {p0, v2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 240
    return-void
.end method

.method private sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V
    .locals 8
    .param p1, "rtmpPacket"    # Lcom/github/faucamp/simplertmp/packets/RtmpPacket;

    .prologue
    .line 491
    :try_start_0
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    .line 492
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getChunkStreamId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v2

    .line 493
    .local v2, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->setPrevHeaderTx(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 494
    instance-of v5, p1, Lcom/github/faucamp/simplertmp/packets/Video;

    if-nez v5, :cond_0

    instance-of v5, p1, Lcom/github/faucamp/simplertmp/packets/Audio;

    if-nez v5, :cond_0

    .line 495
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v5

    .line 496
    invoke-virtual {v2}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->markAbsoluteTimestampTx()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setAbsoluteTimestamp(I)V

    .line 498
    :cond_0
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v6}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getTxChunkSize()I

    move-result v6

    invoke-virtual {p1, v5, v6, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->writeTo(Ljava/io/OutputStream;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 499
    const-string v5, "RtmpConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wrote packet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 500
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 499
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    instance-of v5, p1, Lcom/github/faucamp/simplertmp/packets/Command;

    if-eqz v5, :cond_1

    .line 502
    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    move-object v0, p1

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/Command;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/faucamp/simplertmp/packets/Command;->getTransactionId()I

    move-result v5

    check-cast p1, Lcom/github/faucamp/simplertmp/packets/Command;

    .line 503
    .end local p1    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getCommandName()Ljava/lang/String;

    move-result-object v7

    .line 502
    invoke-virtual {v6, v5, v7}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->addInvokedCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 505
    :cond_1
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 517
    .end local v2    # "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    :cond_2
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v4

    .line 509
    .local v4, "se":Ljava/net/SocketException;
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socketExceptionCause:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 510
    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socketExceptionCause:Ljava/lang/String;

    .line 511
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error send packet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    .line 512
    const-string v5, "RtmpConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught SocketException during write loop, shutting down: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 514
    .end local v4    # "se":Ljava/net/SocketException;
    :catch_1
    move-exception v3

    .line 515
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "RtmpConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught IOException during write loop, shutting down: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shutdown(Z)V
    .locals 5
    .param p1, "r"    # Z

    .prologue
    .line 399
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_1

    .line 402
    :try_start_0
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownInput()V

    .line 404
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 413
    :try_start_1
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    .line 422
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 423
    const-string v3, "RtmpConnection"

    const-string v4, "socket closed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 429
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 430
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->reset()V

    .line 432
    :cond_2
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 415
    .local v2, "ie":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 424
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 425
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "RtmpConnection"

    const-string v4, "shutdown(): failed to close socket"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 405
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->closeStream()V

    .line 382
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->shutdown(Z)V

    .line 383
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 103
    sget-object v6, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 104
    .local v3, "rtmpMatcher":Ljava/util/regex/Matcher;
    sget-object v6, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpsUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 106
    .local v4, "rtmpsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    move-object v1, v3

    .line 108
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iput-boolean v7, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tlsEnabled:Z

    .line 118
    :goto_0
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tcUrl:Ljava/lang/String;

    .line 119
    const-string v6, ""

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->swfUrl:Ljava/lang/String;

    .line 120
    const-string v6, ""

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->pageUrl:Ljava/lang/String;

    .line 121
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->host:Ljava/lang/String;

    .line 122
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "portStr":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_1
    iput v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->port:I

    .line 124
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    .line 125
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    .line 128
    const-string v6, "RtmpConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connect() called. Host: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->host:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", port: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->port:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", appName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", publishPath: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v6, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-direct {v6}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;-><init>()V

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    .line 137
    new-instance v6, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

    iget-object v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-direct {v6, v8}, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;-><init>(Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;)V

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpDecoder:Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

    .line 139
    :try_start_0
    iget-boolean v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tlsEnabled:Z

    if-nez v6, :cond_3

    .line 140
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    .line 141
    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->host:Ljava/lang/String;

    iget v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->port:I

    invoke-direct {v5, v6, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 142
    .local v5, "socketAddress":Ljava/net/SocketAddress;
    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    const/16 v8, 0xbb8

    invoke-virtual {v6, v5, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 146
    .end local v5    # "socketAddress":Ljava/net/SocketAddress;
    :goto_2
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->inputStream:Ljava/io/BufferedInputStream;

    .line 147
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    .line 148
    const-string v6, "RtmpConnection"

    const-string v8, "connect(): socket connection established, doing handhake..."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->inputStream:Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-direct {p0, v6, v8}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->handshake(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 150
    const-string v6, "RtmpConnection"

    const-string v8, "connect(): handshake done"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/github/faucamp/simplertmp/io/RtmpConnection$1;

    invoke-direct {v7, p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection$1;-><init>(Lcom/github/faucamp/simplertmp/io/RtmpConnection;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    .line 170
    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 171
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpConnect()Z

    move-result v6

    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "portStr":Ljava/lang/String;
    :goto_3
    return v6

    .line 109
    :cond_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    move-object v1, v4

    .line 111
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    iput-boolean v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tlsEnabled:Z

    goto/16 :goto_0

    .line 113
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    const-string v8, "Endpoint malformed, should be: rtmp://ip:port/appname/streamname"

    invoke-interface {v6, v8}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    move v6, v7

    .line 115
    goto :goto_3

    .line 123
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "portStr":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x78f

    goto/16 :goto_1

    .line 144
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->host:Ljava/lang/String;

    iget v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->port:I

    invoke-static {v6, v8}, Lnet/ossrs/rtmp/CreateSSLSocket;->createSSlSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v6

    iput-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "RtmpConnection"

    const-string v8, "Error"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connect error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    move v6, v7

    .line 154
    goto :goto_3
.end method

.method public publish(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectCheckerRtmp:Lnet/ossrs/rtmp/ConnectCheckerRtmp;

    const-string v1, "Null publish type"

    invoke-interface {v0, v1}, Lnet/ossrs/rtmp/ConnectCheckerRtmp;->onConnectionFailedRtmp(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishType:Ljava/lang/String;

    .line 287
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->createStream()Z

    move-result v0

    goto :goto_0
.end method

.method public publishAudioData([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "dts"    # I

    .prologue
    .line 457
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    if-ltz p3, :cond_0

    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Audio;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/packets/Audio;-><init>()V

    .line 466
    .local v0, "audio":Lcom/github/faucamp/simplertmp/packets/Audio;
    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/packets/Audio;->setData([BI)V

    .line 467
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Audio;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setAbsoluteTimestamp(I)V

    .line 468
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Audio;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 469
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto :goto_0
.end method

.method public publishVideoData([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "dts"    # I

    .prologue
    .line 474
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    if-ltz p3, :cond_0

    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    if-nez v1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Video;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/packets/Video;-><init>()V

    .line 483
    .local v0, "video":Lcom/github/faucamp/simplertmp/packets/Video;
    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/packets/Video;->setData([BI)V

    .line 484
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Video;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setAbsoluteTimestamp(I)V

    .line 485
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Video;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 486
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto :goto_0
.end method

.method public setAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->user:Ljava/lang/String;

    .line 725
    iput-object p2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->password:Ljava/lang/String;

    .line 726
    return-void
.end method

.method public setVideoResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 718
    iput p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoWidth:I

    .line 719
    iput p2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoHeight:I

    .line 720
    return-void
.end method
