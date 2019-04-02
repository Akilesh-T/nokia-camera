.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;
.super Ljava/lang/Thread;
.source "ReadThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadThread"


# instance fields
.field private in:Ljava/io/InputStream;

.field private listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

.field private rtmpDecoder:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;

.field private volatile startFlag:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sessionInfo"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->in:Ljava/io/InputStream;

    .line 27
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;

    invoke-direct {v0, p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->rtmpDecoder:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->startFlag:Z

    .line 29
    return-void
.end method


# virtual methods
.method public clearStoredChunks(I)V
    .locals 1
    .param p1, "chunkStreamId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->rtmpDecoder:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->clearStoredChunks(I)V

    .line 65
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->startFlag:Z

    if-eqz v2, :cond_1

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->rtmpDecoder:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpDecoder;->readPacket(Ljava/io/InputStream;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;

    move-result-object v0

    .line 40
    .local v0, "chunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

    invoke-interface {v2, v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;->onChunkRead(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 43
    .end local v0    # "chunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/io/EOFException;
    iput-boolean v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->startFlag:Z

    .line 45
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

    invoke-interface {v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;->onStreamEnd()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v1

    .line 49
    .local v1, "e":Ljava/io/IOException;
    iput-boolean v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->startFlag:Z

    .line 50
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

    invoke-interface {v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;->onDisconnect()V

    goto :goto_0

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public setOnReadListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

    .line 33
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnReadListener;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->startFlag:Z

    .line 60
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/ReadThread;->interrupt()V

    .line 61
    return-void
.end method
