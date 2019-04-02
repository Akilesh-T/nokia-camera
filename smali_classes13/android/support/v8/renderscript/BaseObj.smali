.class public Landroid/support/v8/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field private mDestroyed:Z

.field private mID:J

.field mRS:Landroid/support/v8/renderscript/RenderScript;


# direct methods
.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p3}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 31
    iput-object p3, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 32
    iput-wide p1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    .line 34
    return-void
.end method

.method private helpDestroy()V
    .locals 6

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "shouldDestroy":Z
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v2, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    if-nez v2, :cond_0

    .line 84
    const/4 v1, 0x1

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    .line 87
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz v1, :cond_2

    .line 91
    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, v2, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 92
    .local v0, "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 93
    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-wide v4, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    invoke-virtual {v2, v4, v5}, Landroid/support/v8/renderscript/RenderScript;->nObjDestroy(J)V

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 98
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    .line 100
    .end local v0    # "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    :cond_2
    return-void

    .line 87
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method checkValid()V
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/BaseObj;->helpDestroy()V

    .line 118
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    if-ne p0, p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 144
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 148
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 151
    check-cast v0, Landroid/support/v8/renderscript/BaseObj;

    .line 152
    .local v0, "b":Landroid/support/v8/renderscript/BaseObj;
    iget-wide v4, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    iget-wide v6, v0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/support/v8/renderscript/BaseObj;->helpDestroy()V

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    return-void
.end method

.method getID(Landroid/support/v8/renderscript/RenderScript;)J
    .locals 4
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 54
    iget-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "using a destroyed object."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Internal error: Object id 0."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    if-eq p1, v0, :cond_2

    .line 61
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "using object with mismatched context."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    iget-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    return-wide v0
.end method

.method getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    const-wide/32 v2, 0xfffffff

    and-long/2addr v0, v2

    iget-wide v2, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method setID(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 37
    iget-wide v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Internal Error, reset of object ID."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-wide p1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:J

    .line 41
    return-void
.end method
