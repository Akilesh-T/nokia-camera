.class final Lcom/google/common/util/concurrent/Futures$5;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->inCompletionOrder(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegates:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$delegates:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$delegates:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 1671
    return-void
.end method
