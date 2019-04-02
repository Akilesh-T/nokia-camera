.class final Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;
.super Ljava/lang/Object;
.source "SimpleLruResourcePool.java"

# interfaces
.implements Lcom/android/camera/processing/memory/LruResourcePool$Resource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/memory/SimpleLruResourcePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/processing/memory/LruResourcePool$Resource",
        "<TTValue;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTKey;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPool:Lcom/android/camera/processing/memory/SimpleLruResourcePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/processing/memory/SimpleLruResourcePool",
            "<TTKey;TTValue;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/processing/memory/SimpleLruResourcePool;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/memory/SimpleLruResourcePool",
            "<TTKey;TTValue;>;TTKey;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;, "Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource<TTKey;TTValue;>;"
    .local p1, "pool":Lcom/android/camera/processing/memory/SimpleLruResourcePool;, "Lcom/android/camera/processing/memory/SimpleLruResourcePool<TTKey;TTValue;>;"
    .local p2, "key":Ljava/lang/Object;, "TTKey;"
    .local p3, "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mPool:Lcom/android/camera/processing/memory/SimpleLruResourcePool;

    .line 97
    iput-object p2, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mKey:Ljava/lang/Object;

    .line 98
    iput-object p3, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mValue:Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mLock:Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 116
    .local p0, "this":Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;, "Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mPool:Lcom/android/camera/processing/memory/SimpleLruResourcePool;

    iget-object v2, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mValue:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->access$000(Lcom/android/camera/processing/memory/SimpleLruResourcePool;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mValue:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mKey:Ljava/lang/Object;

    .line 122
    :cond_0
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;, "Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool$SynchronizedResource;->mValue:Ljava/lang/Object;

    monitor-exit v1

    .line 111
    :goto_0
    return-object v0

    .line 110
    :cond_0
    monitor-exit v1

    .line 111
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
