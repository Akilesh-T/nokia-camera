.class public final Lcom/google/common/collect/Interners;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Interners$InternerFunction;,
        Lcom/google/common/collect/Interners$WeakInterner;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFunction(Lcom/google/common/collect/Interner;)Lcom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Interner",
            "<TE;>;)",
            "Lcom/google/common/base/Function",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "interner":Lcom/google/common/collect/Interner;, "Lcom/google/common/collect/Interner<TE;>;"
    new-instance v1, Lcom/google/common/collect/Interners$InternerFunction;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Interner;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Interners$InternerFunction;-><init>(Lcom/google/common/collect/Interner;)V

    return-object v1
.end method

.method public static newStrongInterner()Lcom/google/common/collect/Interner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/Interner",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v1, Lcom/google/common/collect/MapMaker;

    invoke-direct {v1}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v1}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 46
    .local v0, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;TE;>;"
    new-instance v1, Lcom/google/common/collect/Interners$1;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Interners$1;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v1
.end method

.method public static newWeakInterner()Lcom/google/common/collect/Interner;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/Interner",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/google/common/collect/Interners$WeakInterner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/Interners$WeakInterner;-><init>(Lcom/google/common/collect/Interners$1;)V

    return-object v0
.end method
