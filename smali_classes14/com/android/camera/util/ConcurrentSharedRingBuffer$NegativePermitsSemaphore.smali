.class Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;
.super Ljava/util/concurrent/Semaphore;
.source "ConcurrentSharedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/ConcurrentSharedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NegativePermitsSemaphore"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "permits"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public reducePermits(I)V
    .locals 2
    .param p1, "permits"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->availablePermits()I

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called without draining the semaphore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/Semaphore;->reducePermits(I)V

    .line 152
    return-void
.end method
