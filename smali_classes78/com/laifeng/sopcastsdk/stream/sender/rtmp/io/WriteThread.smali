.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;
.super Ljava/lang/Thread;
.source "WriteThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WriteThread"


# instance fields
.field private listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;

.field private mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

.field private out:Ljava/io/OutputStream;

.field private sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

.field private volatile startFlag:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sessionInfo"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->out:Ljava/io/OutputStream;

    .line 27
    iput-object p2, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->startFlag:Z

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 37
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->startFlag:Z

    if-eqz v5, :cond_2

    .line 39
    :try_start_0
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v5}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->takeFrame()Lcom/laifeng/sopcastsdk/entity/Frame;

    move-result-object v4

    .line 40
    .local v4, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    if-eqz v4, :cond_0

    .line 41
    iget-object v1, v4, Lcom/laifeng/sopcastsdk/entity/Frame;->data:Ljava/lang/Object;

    check-cast v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;

    .line 42
    .local v1, "chunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-virtual {v1, v5, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;->writeTo(Ljava/io/OutputStream;Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;)V

    .line 43
    instance-of v5, v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    if-eqz v5, :cond_1

    .line 44
    move-object v0, v1

    check-cast v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;

    move-object v2, v0

    .line 45
    .local v2, "command":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->sessionInfo:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;

    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getTransactionId()I

    move-result v6

    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;->getCommandName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/SessionInfo;->addInvokedCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .end local v2    # "command":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Command;
    :cond_1
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1    # "chunk":Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;
    .end local v4    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;, "Lcom/laifeng/sopcastsdk/entity/Frame<Lcom/laifeng/sopcastsdk/stream/sender/rtmp/packets/Chunk;>;"
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->startFlag:Z

    .line 51
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;

    if-eqz v5, :cond_0

    .line 52
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;

    invoke-interface {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;->onDisconnect()V

    goto :goto_0

    .line 56
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method public setSendQueue(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;)V
    .locals 0
    .param p1, "sendQueue"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    .line 60
    return-void
.end method

.method public setWriteListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;

    .line 33
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/OnWriteListener;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->startFlag:Z

    .line 65
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/WriteThread;->interrupt()V

    .line 66
    return-void
.end method
