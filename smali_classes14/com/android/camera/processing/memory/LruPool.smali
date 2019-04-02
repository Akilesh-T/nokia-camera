.class public Lcom/android/camera/processing/memory/LruPool;
.super Ljava/lang/Object;
.source "LruPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/memory/LruPool$Configuration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mConfiguration:Lcom/android/camera/processing/memory/LruPool$Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/processing/memory/LruPool$Configuration",
            "<TTKey;TTValue;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLruKeyList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TTKey;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mMaxSize:I

.field private mSize:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mValuePool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TTKey;",
            "Ljava/util/Queue",
            "<TTValue;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 117
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool;, "Lcom/android/camera/processing/memory/LruPool<TTKey;TTValue;>;"
    new-instance v0, Lcom/android/camera/processing/memory/LruPool$Configuration;

    invoke-direct {v0}, Lcom/android/camera/processing/memory/LruPool$Configuration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/processing/memory/LruPool;-><init>(ILcom/android/camera/processing/memory/LruPool$Configuration;)V

    .line 118
    return-void
.end method

.method public constructor <init>(ILcom/android/camera/processing/memory/LruPool$Configuration;)V
    .locals 2
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera/processing/memory/LruPool$Configuration",
            "<TTKey;TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool;, "Lcom/android/camera/processing/memory/LruPool<TTKey;TTValue;>;"
    .local p2, "configuration":Lcom/android/camera/processing/memory/LruPool$Configuration;, "Lcom/android/camera/processing/memory/LruPool$Configuration<TTKey;TTValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "maxSize must be > 0."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 123
    iput p1, p0, Lcom/android/camera/processing/memory/LruPool;->mMaxSize:I

    .line 124
    iput-object p2, p0, Lcom/android/camera/processing/memory/LruPool;->mConfiguration:Lcom/android/camera/processing/memory/LruPool$Configuration;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->mLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->mLruKeyList:Ljava/util/LinkedList;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->mValuePool:Ljava/util/HashMap;

    .line 129
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkedSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)I"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool;, "Lcom/android/camera/processing/memory/LruPool<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mConfiguration:Lcom/android/camera/processing/memory/LruPool$Configuration;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/processing/memory/LruPool$Configuration;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 252
    .local v0, "result":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Size was < 0."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 253
    return v0

    .line 252
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unsafeTrimToSize(I)V
    .locals 5
    .param p1, "trimToSize"    # I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool;, "Lcom/android/camera/processing/memory/LruPool<TTKey;TTValue;>;"
    :goto_0
    iget v3, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    if-le v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/camera/processing/memory/LruPool;->mLruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/android/camera/processing/memory/LruPool;->mLruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, "key":Ljava/lang/Object;, "TTKey;"
    if-nez v0, :cond_2

    .line 244
    .end local v0    # "key":Ljava/lang/Object;, "TTKey;"
    :cond_0
    iget v3, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/processing/memory/LruPool;->mLruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    if-eqz v3, :cond_4

    .line 245
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "LruPool.sizeOf() is reporting inconsistent results!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    .restart local v0    # "key":Ljava/lang/Object;, "TTKey;"
    :cond_2
    iget-object v3, p0, Lcom/android/camera/processing/memory/LruPool;->mValuePool:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 234
    .local v1, "pool":Ljava/util/Queue;, "Ljava/util/Queue<TTValue;>;"
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    .line 236
    .local v2, "value":Ljava/lang/Object;, "TTValue;"
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 237
    iget-object v3, p0, Lcom/android/camera/processing/memory/LruPool;->mValuePool:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_3
    iget v3, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    invoke-direct {p0, v0, v2}, Lcom/android/camera/processing/memory/LruPool;->checkedSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    .line 241
    iget-object v3, p0, Lcom/android/camera/processing/memory/LruPool;->mConfiguration:Lcom/android/camera/processing/memory/LruPool$Configuration;

    invoke-virtual {v3, v0, v2}, Lcom/android/camera/processing/memory/LruPool$Configuration;->entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    .end local v0    # "key":Ljava/lang/Object;, "TTKey;"
    .end local v1    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<TTValue;>;"
    .end local v2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_4
    return-void
.end method


# virtual methods
.method public final acquire(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)TTValue;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool;, "Lcom/android/camera/processing/memory/LruPool<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/android/camera/processing/memory/LruPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mLruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mValuePool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "value":Ljava/lang/Object;, "TTValue;"
    iget v1, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/processing/memory/LruPool;->checkedSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    .line 158
    :goto_0
    monitor-exit v2

    .line 160
    return-object v0

    .line 156
    .end local v0    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mConfiguration:Lcom/android/camera/processing/memory/LruPool$Configuration;

    invoke-virtual {v1, p1}, Lcom/android/camera/processing/memory/LruPool$Configuration;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "value":Ljava/lang/Object;, "TTValue;"
    goto :goto_0

    .line 158
    .end local v0    # "value":Ljava/lang/Object;, "TTValue;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool;, "Lcom/android/camera/processing/memory/LruPool<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Lcom/android/camera/processing/memory/LruPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mLruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mValuePool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 181
    .local v0, "pool":Ljava/util/Queue;, "Ljava/util/Queue<TTValue;>;"
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mValuePool:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 186
    iget v1, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/memory/LruPool;->checkedSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    .line 188
    iget v1, p0, Lcom/android/camera/processing/memory/LruPool;->mMaxSize:I

    invoke-direct {p0, v1}, Lcom/android/camera/processing/memory/LruPool;->unsafeTrimToSize(I)V

    .line 189
    monitor-exit v2

    .line 190
    return-void

    .line 183
    .end local v0    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<TTValue;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mValuePool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .restart local v0    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<TTValue;>;"
    goto :goto_0

    .line 189
    .end local v0    # "pool":Ljava/util/Queue;, "Ljava/util/Queue<TTValue;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getMaxSize()I
    .locals 1

    .prologue
    .line 222
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool;, "Lcom/android/camera/processing/memory/LruPool<TTKey;TTValue;>;"
    iget v0, p0, Lcom/android/camera/processing/memory/LruPool;->mMaxSize:I

    return v0
.end method

.method public final getSize()I
    .locals 2

    .prologue
    .line 211
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool;, "Lcom/android/camera/processing/memory/LruPool<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget v0, p0, Lcom/android/camera/processing/memory/LruPool;->mSize:I

    monitor-exit v1

    return v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final trimToSize(I)V
    .locals 2
    .param p1, "trimToSize"    # I

    .prologue
    .line 200
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool;, "Lcom/android/camera/processing/memory/LruPool<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/processing/memory/LruPool;->unsafeTrimToSize(I)V

    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
