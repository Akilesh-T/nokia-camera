.class public final Lcom/google/common/util/concurrent/JdkFutureAdapters;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listenInPoolThread(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 63
    .end local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :goto_0
    return-object p0

    .restart local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static listenInPoolThread(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    instance-of v0, p0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 94
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 96
    .end local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :goto_0
    return-object p0

    .restart local p0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    goto :goto_0
.end method
