.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;
.super Ljava/lang/Object;
.source "RtmpConnection.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;
.implements Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;,
        Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmpConnection"

.field private static final rtmpUrlPattern:Ljava/util/regex/Pattern;


# instance fields
.field private audioSampleRate:I

.field private audioSampleSize:I

.field private connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

.field private currentStreamId:I

.field private isAudioStereo:Z

.field private listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

.field private mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

.field private publishPermitted:Z

.field private readThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;

.field private sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

.field private socket:Ljava/net/Socket;

.field private state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

.field private transactionIdCounter:I

.field private videoHeight:I

.field private videoWidth:I

.field private writeThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "^rtmp://([^/:]+)(:(\\d+))*/([^/]+)(/(.*))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->rtmpUrlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->INIT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    return-void
.end method

.method private clearSocket()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createStream()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x6

    const/4 v8, 0x4

    .line 316
    sget-object v6, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->CREATE_STREAM:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    iput-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 317
    const-string v6, "RtmpConnection"

    const-string v7, "createStream(): Sending releaseStream command..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v5, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    const-string v6, "releaseStream"

    iget v7, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v5, v6, v7}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 320
    .local v5, "releaseStream":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;
    invoke-virtual {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setChunkStreamId(I)V

    .line 321
    new-instance v6, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;

    invoke-direct {v6}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;-><init>()V

    invoke-virtual {v5, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 322
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v6, v6, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->streamName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 323
    new-instance v2, Lcom/laifeng/sopcastsdk/entity/Frame;

    invoke-direct {v2, v5, v9, v8}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 324
    .local v2, "frame1":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v6, v2}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    .line 326
    const-string v6, "RtmpConnection"

    const-string v7, "createStream(): Sending FCPublish command..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    const-string v6, "FCPublish"

    iget v7, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v0, v6, v7}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 329
    .local v0, "FCPublish":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setChunkStreamId(I)V

    .line 330
    new-instance v6, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;

    invoke-direct {v6}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;-><init>()V

    invoke-virtual {v0, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 331
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v6, v6, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->streamName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 332
    new-instance v3, Lcom/laifeng/sopcastsdk/entity/Frame;

    invoke-direct {v3, v0, v9, v8}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 333
    .local v3, "frame2":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v6, v3}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    .line 335
    const-string v6, "RtmpConnection"

    const-string v7, "createStream(): Sending createStream command..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    const-string v6, "createStream"

    iget v7, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v1, v6, v7}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 338
    .local v1, "createStream":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;
    new-instance v6, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;

    invoke-direct {v6}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;-><init>()V

    invoke-virtual {v1, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 339
    new-instance v4, Lcom/laifeng/sopcastsdk/entity/Frame;

    invoke-direct {v4, v1, v9, v8}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 340
    .local v4, "frame3":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v6, v4}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    .line 341
    return-void
.end method

.method private fmlePublish()V
    .locals 4

    .prologue
    .line 344
    iget v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    if-nez v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    sget-object v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->PUBLISHING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 348
    const-string v2, "RtmpConnection"

    const-string v3, "fmlePublish(): Sending publish command..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    const-string v2, "publish"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 351
    .local v1, "publish":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;
    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setChunkStreamId(I)V

    .line 352
    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v2

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setMessageStreamId(I)V

    .line 353
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;

    invoke-direct {v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;-><init>()V

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 354
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v2, v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->streamName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 355
    const-string v2, "live"

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 356
    new-instance v0, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 357
    .local v0, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    goto :goto_0
.end method

.method private handleRxCommandInvoke(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;)V
    .locals 7
    .param p1, "command"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    .prologue
    const/4 v6, 0x1

    .line 262
    invoke-virtual {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getCommandName()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "commandName":Ljava/lang/String;
    const-string v3, "_result"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-virtual {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getTransactionId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->takeInvokedCommand(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "method":Ljava/lang/String;
    const-string v3, "RtmpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got result for invoked method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v3, "connect"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onRtmpConnectSuccess()V

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->createStream()V

    .line 313
    .end local v2    # "method":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 271
    .restart local v2    # "method":Ljava/lang/String;
    :cond_2
    const-string v3, "createStream"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    invoke-virtual {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;

    invoke-virtual {v3}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNumber;->getValue()D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    .line 273
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v3, :cond_3

    .line 274
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onCreateStreamSuccess()V

    .line 276
    :cond_3
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->fmlePublish()V

    goto :goto_0

    .line 278
    .end local v2    # "method":Ljava/lang/String;
    :cond_4
    const-string v3, "_error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 279
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-virtual {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getTransactionId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->takeInvokedCommand(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    .restart local v2    # "method":Ljava/lang/String;
    const-string v3, "RtmpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got error for invoked method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v3, "connect"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 282
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->stop()V

    .line 283
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v3, :cond_1

    .line 284
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onRtmpConnectFail()V

    goto :goto_0

    .line 286
    :cond_5
    const-string v3, "createStream"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->stop()V

    .line 288
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onCreateStreamFail()V

    goto :goto_0

    .line 292
    .end local v2    # "method":Ljava/lang/String;
    :cond_6
    const-string v3, "onStatus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 293
    invoke-virtual {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->getProperty(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/stream/amf/AmfData;

    move-result-object v3

    check-cast v3, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;

    invoke-virtual {v3}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "code":Ljava/lang/String;
    const-string v3, "NetStream.Publish.Start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 295
    const-string v3, "RtmpConnection"

    const-string v4, "Got publish start success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->LIVING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    iput-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 297
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v3, :cond_7

    .line 298
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onPublishSuccess()V

    .line 300
    :cond_7
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->onMetaData()V

    .line 302
    iput-boolean v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->publishPermitted:Z

    goto/16 :goto_0

    .line 304
    :cond_8
    const-string v3, "RtmpConnection"

    const-string v4, "Got publish start fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->stop()V

    .line 306
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v3, :cond_1

    .line 307
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onPublishFail()V

    goto/16 :goto_0

    .line 311
    .end local v0    # "code":Ljava/lang/String;
    :cond_9
    const-string v3, "RtmpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got Command result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
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
    .line 169
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Handshake;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Handshake;-><init>()V

    .line 170
    .local v0, "handshake":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Handshake;
    invoke-virtual {v0, p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Handshake;->writeC0(Ljava/io/OutputStream;)V

    .line 171
    invoke-virtual {v0, p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Handshake;->writeC1(Ljava/io/OutputStream;)V

    .line 172
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 173
    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Handshake;->readS0(Ljava/io/InputStream;)V

    .line 174
    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Handshake;->readS1(Ljava/io/InputStream;)V

    .line 175
    invoke-virtual {v0, p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Handshake;->writeC2(Ljava/io/OutputStream;)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Handshake;->readS2(Ljava/io/InputStream;)V

    .line 177
    return-void
.end method

.method private onMetaData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 361
    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 383
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v3, "RtmpConnection"

    const-string v4, "onMetaData(): Sending empty onMetaData..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;

    const-string v3, "@setDataFrame"

    invoke-direct {v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;-><init>(Ljava/lang/String;)V

    .line 367
    .local v2, "metadata":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;
    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v3

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v3, v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setMessageStreamId(I)V

    .line 368
    const-string v3, "onMetaData"

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->addData(Ljava/lang/String;)V

    .line 369
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;-><init>()V

    .line 370
    .local v0, "ecmaArray":Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;
    const-string v3, "duration"

    invoke-virtual {v0, v3, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 371
    const-string v3, "width"

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->videoWidth:I

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 372
    const-string v3, "height"

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->videoHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 373
    const-string v3, "videodatarate"

    invoke-virtual {v0, v3, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 374
    const-string v3, "framerate"

    invoke-virtual {v0, v3, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 375
    const-string v3, "audiodatarate"

    invoke-virtual {v0, v3, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 376
    const-string v3, "audiosamplerate"

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->audioSampleRate:I

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 377
    const-string v3, "audiosamplesize"

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->audioSampleSize:I

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 378
    const-string v3, "stereo"

    iget-boolean v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->isAudioStereo:Z

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;Z)V

    .line 379
    const-string v3, "filesize"

    invoke-virtual {v0, v3, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 380
    invoke-virtual {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Data;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 381
    new-instance v1, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v3, 0x6

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 382
    .local v1, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v3, v1}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    goto :goto_0
.end method

.method private parseRtmpUrl(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "connectData":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;
    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->rtmpUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 154
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    .end local v0    # "connectData":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;
    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;-><init>()V

    .line 156
    .restart local v0    # "connectData":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->tcUrl:Ljava/lang/String;

    .line 157
    const-string v3, ""

    iput-object v3, v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->swfUrl:Ljava/lang/String;

    .line 158
    const-string v3, ""

    iput-object v3, v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->pageUrl:Ljava/lang/String;

    .line 159
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->host:Ljava/lang/String;

    .line 160
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "portStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_0
    iput v3, v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->port:I

    .line 162
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->appName:Ljava/lang/String;

    .line 163
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->streamName:Ljava/lang/String;

    .line 165
    .end local v2    # "portStr":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 161
    .restart local v2    # "portStr":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x78f

    goto :goto_0
.end method

.method private rtmpConnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 191
    invoke-static {}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->markSessionTimestampTx()V

    .line 192
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    const-string v3, "connect"

    iget v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v2, v3, v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 194
    .local v2, "invoke":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;-><init>()V

    .line 195
    .local v0, "args":Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;
    const-string v3, "app"

    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v4, v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->appName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v3, "flashVer"

    const-string v4, "LNX 11,2,202,233"

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v3, "swfUrl"

    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v4, v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->swfUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v3, "tcUrl"

    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v4, v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->tcUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v3, "fpad"

    invoke-virtual {v0, v3, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;Z)V

    .line 200
    const-string v3, "capabilities"

    const/16 v4, 0xef

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 201
    const-string v3, "audioCodecs"

    const/16 v4, 0xdf7

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 202
    const-string v3, "videoCodecs"

    const/16 v4, 0xfc

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 203
    const-string v3, "videoFunction"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 204
    const-string v3, "pageUrl"

    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v4, v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "objectEncoding"

    invoke-virtual {v0, v3, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 206
    invoke-virtual {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 207
    new-instance v1, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v3, 0x6

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 208
    .local v1, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v3, v1}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    .line 209
    sget-object v3, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->CONNECTING:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    iput-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 210
    return-void
.end method


# virtual methods
.method public closeStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 437
    iget v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-boolean v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->publishPermitted:Z

    if-eqz v2, :cond_0

    .line 443
    const-string v2, "RtmpConnection"

    const-string v3, "closeStream(): setting current stream ID to -1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    const-string v2, "closeStream"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 445
    .local v0, "closeStream":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setChunkStreamId(I)V

    .line 446
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v2

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setMessageStreamId(I)V

    .line 447
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;

    invoke-direct {v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfNull;-><init>()V

    invoke-virtual {v0, v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->addData(Lcom/laifeng/sopcastsdk/stream/amf/AmfData;)V

    .line 448
    new-instance v1, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-direct {v1, v0, v2, v3}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 449
    .local v1, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v2, v1}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->INIT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 94
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->parseRtmpUrl(Ljava/lang/String;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    move-result-object v10

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    .line 95
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    if-nez v10, :cond_1

    .line 96
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v10, :cond_0

    .line 97
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onUrlInvalid()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v2, v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->host:Ljava/lang/String;

    .line 102
    .local v2, "host":Ljava/lang/String;
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget v7, v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->port:I

    .line 103
    .local v7, "port":I
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v0, v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->appName:Ljava/lang/String;

    .line 104
    .local v0, "appName":Ljava/lang/String;
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connectData:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;

    iget-object v9, v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;->streamName:Ljava/lang/String;

    .line 105
    .local v9, "streamName":Ljava/lang/String;
    const-string v10, "RtmpConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connect() called. Host: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", port: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", appName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", publishPath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v10, Ljava/net/Socket;

    invoke-direct {v10}, Ljava/net/Socket;-><init>()V

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    .line 107
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, v2, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 109
    .local v8, "socketAddress":Ljava/net/SocketAddress;
    :try_start_0
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    const/16 v11, 0xbb8

    invoke-virtual {v10, v8, v11}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v10, :cond_2

    .line 118
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onSocketConnectSuccess()V

    .line 120
    :cond_2
    const/4 v3, 0x0

    .line 121
    .local v3, "in":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 122
    .local v5, "out":Ljava/io/BufferedOutputStream;
    sget-object v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->HANDSHAKE:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 124
    :try_start_1
    const-string v10, "RtmpConnection"

    const-string v11, "connect(): socket connection established, doing handhake..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-direct {p0, v4, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->handshake(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 137
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v10, :cond_3

    .line 138
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onHandshakeSuccess()V

    .line 140
    :cond_3
    new-instance v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-direct {v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;-><init>()V

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    .line 141
    new-instance v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;

    iget-object v11, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-direct {v10, v4, v11}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;-><init>(Ljava/io/InputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->readThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;

    .line 142
    new-instance v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;

    iget-object v11, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-direct {v10, v6, v11}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;-><init>(Ljava/io/OutputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->writeThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;

    .line 143
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->readThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;

    invoke-virtual {v10, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->setOnReadListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;)V

    .line 144
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->writeThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;

    invoke-virtual {v10, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->setWriteListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;)V

    .line 145
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->writeThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;

    iget-object v11, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-virtual {v10, v11}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->setSendQueue(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;)V

    .line 146
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->readThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;

    invoke-virtual {v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->start()V

    .line 147
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->writeThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;

    invoke-virtual {v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->start()V

    .line 148
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->rtmpConnect()V

    goto/16 :goto_0

    .line 110
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v10, :cond_0

    .line 113
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onSocketConnectFail()V

    goto/16 :goto_0

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    sget-object v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->INIT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 131
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->clearSocket()V

    .line 132
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v10, :cond_0

    .line 133
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onHandshakeFail()V

    goto/16 :goto_0

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public getState()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    return-object v0
.end method

.method public onChunkRead(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;)V
    .locals 13
    .param p1, "chunk"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v1

    .line 215
    .local v1, "chunkHeader":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;
    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getMessageType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    move-result-object v4

    .line 216
    .local v4, "messageType":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;
    sget-object v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$1;->$SwitchMap$com$laifeng$sopcastsdk$stream$sender$rtmp$packets$MessageType:[I

    invoke-virtual {v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 256
    const-string v10, "RtmpConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not handling unimplemented/unknown packet of type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->getMessageType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/MessageType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local p1    # "chunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :cond_0
    :goto_0
    return-void

    .line 218
    .restart local p1    # "chunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_0
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->readThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;

    check-cast p1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Abort;

    .end local p1    # "chunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    invoke-virtual {p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Abort;->getChunkStreamId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->clearStoredChunks(I)V

    goto :goto_0

    .restart local p1    # "chunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_1
    move-object v5, p1

    .line 221
    check-cast v5, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;

    .line 222
    .local v5, "ping":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;
    invoke-virtual {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->getType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    move-result-object v10

    sget-object v11, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->PING_REQUEST:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    if-ne v10, v11, :cond_1

    .line 223
    const-string v10, "RtmpConnection"

    const-string v11, "Sending PONG reply.."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v6, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;

    invoke-direct {v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;-><init>()V

    .line 225
    .local v6, "pong":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;
    sget-object v10, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->PONG_REPLY:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    invoke-virtual {v6, v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->setType(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;)V

    .line 226
    invoke-virtual {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->getEventData()[I

    move-result-object v10

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v6, v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->setEventData(I)V

    .line 227
    new-instance v3, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v10, 0x6

    const/4 v11, 0x4

    invoke-direct {v3, v6, v10, v11}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 228
    .local v3, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v10, v3}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    goto :goto_0

    .line 229
    .end local v3    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    .end local v6    # "pong":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;
    :cond_1
    invoke-virtual {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;->getType()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    move-result-object v10

    sget-object v11, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;->STREAM_EOF:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl$Type;

    if-ne v10, v11, :cond_0

    .line 230
    const-string v10, "RtmpConnection"

    const-string v11, "Stream EOF reached"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5    # "ping":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/UserControl;
    :pswitch_2
    move-object v9, p1

    .line 234
    check-cast v9, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;

    .line 235
    .local v9, "windowAckSize":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;
    invoke-virtual {v9}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;->getAcknowledgementWindowSize()I

    move-result v8

    .line 236
    .local v8, "size":I
    const-string v10, "RtmpConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Setting acknowledgement window size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-virtual {v10, v8}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->setAcknowledgmentWindowSize(I)V

    .line 240
    :try_start_0
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v10, v8}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v2    # "e":Ljava/net/SocketException;
    .end local v8    # "size":I
    .end local v9    # "windowAckSize":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;
    :pswitch_3
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-virtual {v10}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->getAcknowledgementWindowSize()I

    move-result v0

    .line 247
    .local v0, "acknowledgementWindowsize":I
    const-string v10, "RtmpConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Send acknowledgement window size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v7, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;

    invoke-direct {v7, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/WindowAckSize;-><init>(I)V

    .line 249
    .local v7, "setPeerBandwidth":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    new-instance v3, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v10, 0x6

    const/4 v11, 0x4

    invoke-direct {v3, v7, v10, v11}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 250
    .restart local v3    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v10, v3}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    goto/16 :goto_0

    .line 253
    .end local v0    # "acknowledgementWindowsize":I
    .end local v3    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    .end local v7    # "setPeerBandwidth":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :pswitch_4
    check-cast p1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    .end local p1    # "chunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->handleRxCommandInvoke(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;)V

    goto/16 :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDisconnect()V
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->stop()V

    .line 484
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onSocketDisconnect()V

    .line 487
    :cond_0
    return-void
.end method

.method public onStreamEnd()V
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->stop()V

    .line 476
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;->onStreamEnd()V

    .line 479
    :cond_0
    return-void
.end method

.method public publishAudioData([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "type"    # I

    .prologue
    .line 397
    iget v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-boolean v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->publishPermitted:Z

    if-eqz v2, :cond_0

    .line 403
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Audio;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Audio;-><init>()V

    .line 404
    .local v0, "audio":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Audio;
    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Audio;->setData([B)V

    .line 405
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Audio;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v2

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setMessageStreamId(I)V

    .line 407
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 408
    new-instance v1, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v2, 0x4

    invoke-direct {v1, v0, p2, v2}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 412
    .local v1, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    :goto_1
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v2, v1}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    goto :goto_0

    .line 410
    .end local v1    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    :cond_2
    new-instance v1, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, v2}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .restart local v1    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    goto :goto_1
.end method

.method public publishVideoData([BI)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x4

    .line 416
    iget v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-boolean v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->publishPermitted:Z

    if-eqz v2, :cond_0

    .line 422
    new-instance v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Video;

    invoke-direct {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Video;-><init>()V

    .line 423
    .local v1, "video":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Video;
    invoke-virtual {v1, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Video;->setData([B)V

    .line 424
    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Video;->getChunkHeader()Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;

    move-result-object v2

    iget v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/ChunkHeader;->setMessageStreamId(I)V

    .line 426
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 427
    new-instance v0, Lcom/laifeng/sopcastsdk/entity/Frame;

    invoke-direct {v0, v1, p2, v4}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .line 433
    .local v0, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    :goto_1
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V

    goto :goto_0

    .line 428
    .end local v0    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    :cond_2
    if-ne p2, v4, :cond_3

    .line 429
    new-instance v0, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p2, v2}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .restart local v0    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    goto :goto_1

    .line 431
    .end local v0    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    :cond_3
    new-instance v0, Lcom/laifeng/sopcastsdk/entity/Frame;

    const/4 v2, 0x3

    invoke-direct {v0, v1, p2, v2}, Lcom/laifeng/sopcastsdk/entity/Frame;-><init>(Ljava/lang/Object;II)V

    .restart local v0    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    goto :goto_1
.end method

.method public setAudioParams(IIZ)V
    .locals 0
    .param p1, "sampleRate"    # I
    .param p2, "sampleSize"    # I
    .param p3, "isStereo"    # Z

    .prologue
    .line 391
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->audioSampleRate:I

    .line 392
    iput p2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->audioSampleSize:I

    .line 393
    iput-boolean p3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->isAudioStereo:Z

    .line 394
    return-void
.end method

.method public setConnectListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    .line 86
    return-void
.end method

.method public setSendQueue(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;)V
    .locals 0
    .param p1, "sendQueue"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    .line 90
    return-void
.end method

.method public setVideoParams(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 386
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->videoWidth:I

    .line 387
    iput p2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->videoHeight:I

    .line 388
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->closeStream()V

    .line 454
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->readThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->readThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->setOnReadListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;)V

    .line 456
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->readThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->shutdown()V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->writeThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->writeThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->setWriteListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;)V

    .line 460
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->writeThread:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->shutdown()V

    .line 462
    :cond_1
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->clearSocket()V

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->currentStreamId:I

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->transactionIdCounter:I

    .line 465
    sget-object v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;->INIT:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->state:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$State;

    .line 466
    return-void
.end method
