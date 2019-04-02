.class public Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;
.super Ljava/lang/Object;
.source "NormalSendQueue.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanSnapShot;,
        Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;
    }
.end annotation


# static fields
.field private static final NORMAL_FRAME_BUFFER_SIZE:I = 0x320


# instance fields
.field private mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/laifeng/sopcastsdk/entity/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mFullQueueCount:I

.field private mGiveUpFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mInFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mOutFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mScanFlag:Z

.field private mScanThread:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;

.field private mSendQueueListener:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;

.field private mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x320

    iput v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFullQueueCount:I

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mGiveUpFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mInFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mOutFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFullQueueCount:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 39
    return-void
.end method

.method private abandonData()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 107
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFullQueueCount:I

    div-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_7

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "pFrameDelete":Z
    const/4 v3, 0x0

    .line 111
    .local v3, "start":Z
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/entity/Frame;

    .line 112
    .local v0, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;
    iget v5, v0, Lcom/laifeng/sopcastsdk/entity/Frame;->frameType:I

    if-ne v5, v7, :cond_1

    .line 113
    const/4 v3, 0x1

    .line 115
    :cond_1
    if-eqz v3, :cond_0

    .line 116
    iget v5, v0, Lcom/laifeng/sopcastsdk/entity/Frame;->frameType:I

    if-ne v5, v7, :cond_2

    .line 117
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 118
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 119
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mGiveUpFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 120
    const/4 v2, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget v5, v0, Lcom/laifeng/sopcastsdk/entity/Frame;->frameType:I

    if-ne v5, v6, :cond_0

    .line 126
    .end local v0    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;
    :cond_3
    const/4 v1, 0x0

    .line 128
    .local v1, "kFrameDelete":Z
    if-nez v2, :cond_5

    .line 129
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/entity/Frame;

    .line 130
    .restart local v0    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;
    iget v5, v0, Lcom/laifeng/sopcastsdk/entity/Frame;->frameType:I

    if-ne v5, v6, :cond_4

    .line 131
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 133
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mGiveUpFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 134
    const/4 v1, 0x1

    .line 140
    .end local v0    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;
    :cond_5
    if-nez v2, :cond_7

    if-nez v1, :cond_7

    .line 141
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/entity/Frame;

    .line 142
    .restart local v0    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;
    iget v5, v0, Lcom/laifeng/sopcastsdk/entity/Frame;->frameType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 143
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 145
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mGiveUpFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 151
    .end local v0    # "frame":Lcom/laifeng/sopcastsdk/entity/Frame;
    .end local v1    # "kFrameDelete":Z
    .end local v2    # "pFrameDelete":Z
    .end local v3    # "start":Z
    :cond_7
    return-void
.end method

.method static synthetic access$100(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mScanFlag:Z

    return v0
.end method

.method static synthetic access$200(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mSendQueueListener:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mInFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mOutFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public getBufferFrameCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getGiveUpFrameCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mGiveUpFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V
    .locals 2
    .param p1, "frame"    # Lcom/laifeng/sopcastsdk/entity/Frame;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->abandonData()V

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mInFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 84
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFullQueueCount:I

    .line 65
    return-void
.end method

.method public setSendQueueListener(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mSendQueueListener:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;

    .line 60
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mScanFlag:Z

    .line 44
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$1;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mScanThread:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;

    .line 45
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mScanThread:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue$ScanThread;->start()V

    .line 46
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mScanFlag:Z

    .line 51
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mInFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 52
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mOutFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 53
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 54
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mGiveUpFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 55
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 56
    return-void
.end method

.method public takeFrame()Lcom/laifeng/sopcastsdk/entity/Frame;
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    if-nez v2, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 103
    :goto_0
    return-object v1

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 97
    .local v1, "frame":Lcom/laifeng/sopcastsdk/entity/Frame;
    :try_start_0
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mFrameBuffer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/laifeng/sopcastsdk/entity/Frame;

    move-object v1, v0

    .line 98
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mOutFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 99
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;->mTotalFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method
