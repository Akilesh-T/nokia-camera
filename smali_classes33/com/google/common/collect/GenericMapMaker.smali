.class abstract Lcom/google/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/GenericMapMaker$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$RemovalListener",
            "<TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/collect/GenericMapMaker;, "Lcom/google/common/collect/GenericMapMaker<TK0;TV0;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract concurrencyLevel(I)Lcom/google/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method abstract expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method abstract expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method getRemovalListener()Lcom/google/common/collect/MapMaker$RemovalListener;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/MapMaker$RemovalListener",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/collect/GenericMapMaker;, "Lcom/google/common/collect/GenericMapMaker<TK0;TV0;>;"
    iget-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$RemovalListener;

    return-object v0
.end method

.method public abstract initialCapacity(I)Lcom/google/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method abstract keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method abstract makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract makeCustomMap()Lcom/google/common/collect/MapMakerInternalMap;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MapMakerInternalMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract makeMap()Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract maximumSize(I)Lcom/google/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method abstract softValues()Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract weakKeys()Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract weakValues()Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method
