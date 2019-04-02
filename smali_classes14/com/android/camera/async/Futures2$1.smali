.class final Lcom/android/camera/async/Futures2$1;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.source "Futures2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/Futures2;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 72
    .local p1, "x0":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfNecessary"    # Z

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method
