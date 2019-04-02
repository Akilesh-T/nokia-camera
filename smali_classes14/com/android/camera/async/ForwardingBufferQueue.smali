.class public abstract Lcom/android/camera/async/ForwardingBufferQueue;
.super Ljava/lang/Object;
.source "ForwardingBufferQueue.java"

# interfaces
.implements Lcom/android/camera/async/BufferQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/BufferQueue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/camera/async/BufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/BufferQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/android/camera/async/ForwardingBufferQueue;, "Lcom/android/camera/async/ForwardingBufferQueue<TT;>;"
    .local p1, "delegate":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/async/ForwardingBufferQueue;->mDelegate:Lcom/android/camera/async/BufferQueue;

    .line 30
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/android/camera/async/ForwardingBufferQueue;, "Lcom/android/camera/async/ForwardingBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ForwardingBufferQueue;->mDelegate:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueue;->close()V

    .line 35
    return-void
.end method

.method public discardNext()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/android/camera/async/ForwardingBufferQueue;, "Lcom/android/camera/async/ForwardingBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ForwardingBufferQueue;->mDelegate:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueue;->discardNext()V

    .line 56
    return-void
.end method

.method public getNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/android/camera/async/ForwardingBufferQueue;, "Lcom/android/camera/async/ForwardingBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ForwardingBufferQueue;->mDelegate:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueue;->getNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/android/camera/async/ForwardingBufferQueue;, "Lcom/android/camera/async/ForwardingBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ForwardingBufferQueue;->mDelegate:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/android/camera/async/ForwardingBufferQueue;, "Lcom/android/camera/async/ForwardingBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ForwardingBufferQueue;->mDelegate:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueue;->isClosed()Z

    move-result v0

    return v0
.end method

.method public peekNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/android/camera/async/ForwardingBufferQueue;, "Lcom/android/camera/async/ForwardingBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ForwardingBufferQueue;->mDelegate:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/android/camera/async/ForwardingBufferQueue;, "Lcom/android/camera/async/ForwardingBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ForwardingBufferQueue;->mDelegate:Lcom/android/camera/async/BufferQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
