.class Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;
.super Lcom/google/common/util/concurrent/Futures$ImmediateFuture;
.source "Futures.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "TODO"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateCancelledFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Futures$ImmediateFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final thrown:Ljava/util/concurrent/CancellationException;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 249
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    .line 250
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Immediate cancelled future."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;->thrown:Ljava/util/concurrent/CancellationException;

    .line 251
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture<TV;>;"
    const-string v0, "Task was cancelled."

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;->thrown:Ljava/util/concurrent/CancellationException;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method
