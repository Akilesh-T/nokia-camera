.class public Lcom/android/camera/async/Futures2;
.super Ljava/lang/Object;
.source "Futures2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3;,
        Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2;,
        Lcom/android/camera/async/Futures2$Function3;,
        Lcom/android/camera/async/Futures2$Function2;,
        Lcom/android/camera/async/Futures2$AsyncFunction3;,
        Lcom/android/camera/async/Futures2$AsyncFunction2;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT1;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT2;>;",
            "Lcom/android/camera/async/Futures2$AsyncFunction2",
            "<TT1;TT2;TTResult;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "f1":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT1;>;"
    .local p1, "f2":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT2;>;"
    .local p2, "fn":Lcom/android/camera/async/Futures2$AsyncFunction2;, "Lcom/android/camera/async/Futures2$AsyncFunction2<TT1;TT2;TTResult;>;"
    const/4 v2, 0x2

    new-array v0, v2, [Lcom/google/common/util/concurrent/ListenableFuture;

    .line 92
    .local v0, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 93
    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 98
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->allAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 99
    .local v1, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Ljava/lang/Object;>;>;"
    new-instance v2, Lcom/android/camera/async/Futures2$2;

    invoke-direct {v2, p2}, Lcom/android/camera/async/Futures2$2;-><init>(Lcom/android/camera/async/Futures2$AsyncFunction2;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2
.end method

.method public static joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/async/Futures2$Function2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT1;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT2;>;",
            "Lcom/android/camera/async/Futures2$Function2",
            "<TT1;TT2;TTResult;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "f1":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT1;>;"
    .local p1, "f2":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT2;>;"
    .local p2, "fn":Lcom/android/camera/async/Futures2$Function2;, "Lcom/android/camera/async/Futures2$Function2<TT1;TT2;TTResult;>;"
    new-instance v0, Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2;

    invoke-direct {v0, p2}, Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2;-><init>(Lcom/android/camera/async/Futures2$Function2;)V

    invoke-static {p0, p1, v0}, Lcom/android/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/async/Futures2$AsyncFunction3;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT1;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT2;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT3;>;",
            "Lcom/android/camera/async/Futures2$AsyncFunction3",
            "<TT1;TT2;TT3;TTResult;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "f1":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT1;>;"
    .local p1, "f2":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT2;>;"
    .local p2, "f3":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT3;>;"
    .local p3, "fn":Lcom/android/camera/async/Futures2$AsyncFunction3;, "Lcom/android/camera/async/Futures2$AsyncFunction3<TT1;TT2;TT3;TTResult;>;"
    const/4 v2, 0x3

    new-array v0, v2, [Lcom/google/common/util/concurrent/ListenableFuture;

    .line 136
    .local v0, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 137
    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 138
    const/4 v2, 0x2

    aput-object p2, v0, v2

    .line 143
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->allAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 144
    .local v1, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/util/List<Ljava/lang/Object;>;>;"
    new-instance v2, Lcom/android/camera/async/Futures2$3;

    invoke-direct {v2, p3}, Lcom/android/camera/async/Futures2$3;-><init>(Lcom/android/camera/async/Futures2$AsyncFunction3;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2
.end method

.method public static joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/async/Futures2$Function3;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT1;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT2;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT3;>;",
            "Lcom/android/camera/async/Futures2$Function3",
            "<TT1;TT2;TT3;TTResult;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "f1":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT1;>;"
    .local p1, "f2":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT2;>;"
    .local p2, "f3":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT3;>;"
    .local p3, "fn":Lcom/android/camera/async/Futures2$Function3;, "Lcom/android/camera/async/Futures2$Function3<TT1;TT2;TT3;TTResult;>;"
    new-instance v0, Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3;

    invoke-direct {v0, p3}, Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3;-><init>(Lcom/android/camera/async/Futures2$Function3;)V

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/async/Futures2$AsyncFunction3;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    new-instance v0, Lcom/android/camera/async/Futures2$1;

    invoke-direct {v0, p0}, Lcom/android/camera/async/Futures2$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method
