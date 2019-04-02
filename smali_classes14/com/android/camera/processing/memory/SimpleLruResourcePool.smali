.class public abstract Lcom/android/camera/processing/memory/SimpleLruResourcePool;
.super Ljava/lang/Object;
.source "SimpleLruResourcePool.java"

# interfaces
.implements Lcom/android/camera/processing/memory/LruResourcePool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/processing/memory/LruResourcePool",
        "<TTKey;TTValue;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mLruPool:Lcom/android/camera/processing/memory/LruPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/processing/memory/LruPool",
            "<TTKey;TTValue;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "lruSize"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/android/camera/processing/memory/SimpleLruResourcePool;, "Lcom/android/camera/processing/memory/SimpleLruResourcePool<TTKey;TTValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->mLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/android/camera/processing/memory/LruPool;

    invoke-direct {v0, p1}, Lcom/android/camera/processing/memory/LruPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->mLruPool:Lcom/android/camera/processing/memory/LruPool;

    .line 41
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/processing/memory/SimpleLruResourcePool;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/processing/memory/SimpleLruResourcePool;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->release(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private release(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/android/camera/processing/memory/SimpleLruResourcePool;, "Lcom/android/camera/processing/memory/SimpleLruResourcePool<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->mLruPool:Lcom/android/camera/processing/memory/LruPool;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->recycle(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/processing/memory/LruPool;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method


# virtual methods
.method public acquire(Ljava/lang/Object;)Lcom/android/camera/processing/memory/LruResourcePool$Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)",
            "Lcom/android/camera/processing/memory/LruResourcePool$Resource",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/android/camera/processing/memory/SimpleLruResourcePool;, "Lcom/android/camera/processing/memory/SimpleLruResourcePool<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    iget-object v2, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->mLruPool:Lcom/android/camera/processing/memory/LruPool;

    invoke-virtual {v1, p1}, Lcom/android/camera/processing/memory/LruPool;->acquire(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "value":Ljava/lang/Object;, "TTValue;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    :cond_0
    new-instance v1, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;-><init>(Lcom/android/camera/processing/memory/SimpleLruResourcePool;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 48
    .end local v0    # "value":Ljava/lang/Object;, "TTValue;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)TTValue;"
        }
    .end annotation
.end method

.method protected recycle(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)TTValue;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/android/camera/processing/memory/SimpleLruResourcePool;, "Lcom/android/camera/processing/memory/SimpleLruResourcePool<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    return-object p2
.end method
