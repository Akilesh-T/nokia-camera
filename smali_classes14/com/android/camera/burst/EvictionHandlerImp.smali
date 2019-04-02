.class public Lcom/android/camera/burst/EvictionHandlerImp;
.super Ljava/lang/Object;
.source "EvictionHandlerImp.java"

# interfaces
.implements Lcom/android/camera/burst/EvictionHandler;


# instance fields
.field private final mBufferList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/EvictionHandlerImp;->mBufferList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/burst/EvictionHandlerImp;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/burst/EvictionHandlerImp;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/EvictionHandlerImp;->mBufferList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public onFrameCaptureResultAvailable(JLandroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 75
    return-void
.end method

.method public onFrameDropped(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/burst/EvictionHandlerImp;->mBufferList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public onFrameInserted(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/burst/EvictionHandlerImp;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/EvictionHandlerImp;->mBufferList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public selectFrameToDrop()J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/burst/EvictionHandlerImp;->mBufferList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/burst/EvictionHandlerImp;->mBufferList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 61
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
