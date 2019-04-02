.class public Lcom/android/camera/async/Lifetime;
.super Ljava/lang/Object;
.source "Lifetime.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# instance fields
.field private final mCloseables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/async/SafeCloseable;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mParent:Lcom/android/camera/async/Lifetime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/Lifetime;->mLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/Lifetime;->mParent:Lcom/android/camera/async/Lifetime;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/async/Lifetime;->mClosed:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/Lifetime;)V
    .locals 1
    .param p1, "parent"    # Lcom/android/camera/async/Lifetime;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/Lifetime;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/android/camera/async/Lifetime;->mParent:Lcom/android/camera/async/Lifetime;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/async/Lifetime;->mClosed:Z

    .line 60
    iget-object v0, p1, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method


# virtual methods
.method public add(ILcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/async/SafeCloseable;",
            ">(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "closeable":Lcom/android/camera/async/SafeCloseable;, "TT;"
    const/4 v0, 0x0

    .line 83
    .local v0, "needToClose":Z
    iget-object v2, p0, Lcom/android/camera/async/Lifetime;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/async/Lifetime;->mClosed:Z

    if-eqz v1, :cond_1

    .line 85
    const/4 v0, 0x1

    .line 89
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {p2}, Lcom/android/camera/async/SafeCloseable;->close()V

    .line 93
    :cond_0
    return-object p2

    .line 87
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/async/SafeCloseable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "closeable":Lcom/android/camera/async/SafeCloseable;, "TT;"
    const/4 v0, 0x0

    .line 68
    .local v0, "needToClose":Z
    iget-object v2, p0, Lcom/android/camera/async/Lifetime;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 69
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/async/Lifetime;->mClosed:Z

    if-eqz v1, :cond_1

    .line 70
    const/4 v0, 0x1

    .line 74
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/android/camera/async/SafeCloseable;->close()V

    .line 78
    :cond_0
    return-object p1

    .line 72
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 8

    .prologue
    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, "toClose":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/SafeCloseable;>;"
    iget-object v5, p0, Lcom/android/camera/async/Lifetime;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 109
    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/async/Lifetime;->mClosed:Z

    if-eqz v4, :cond_0

    .line 110
    monitor-exit v5

    .line 136
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/async/Lifetime;->mClosed:Z

    .line 116
    iget-object v4, p0, Lcom/android/camera/async/Lifetime;->mParent:Lcom/android/camera/async/Lifetime;

    if-eqz v4, :cond_1

    .line 117
    iget-object v4, p0, Lcom/android/camera/async/Lifetime;->mParent:Lcom/android/camera/async/Lifetime;

    iget-object v4, v4, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    iget-object v4, p0, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v4, p0, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 121
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lifetime close - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    .line 124
    .local v2, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/async/SafeCloseable;

    .line 125
    .local v0, "closeable":Lcom/android/camera/async/SafeCloseable;
    if-eqz v0, :cond_2

    .line 126
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 127
    invoke-interface {v0}, Lcom/android/camera/async/SafeCloseable;->close()V

    .line 129
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    .end local v0    # "closeable":Lcom/android/camera/async/SafeCloseable;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 135
    .restart local v2    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_3
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_0
.end method

.method public remove(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/camera/async/SafeCloseable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "closeable":Lcom/android/camera/async/SafeCloseable;, "TT;"
    iget-object v1, p0, Lcom/android/camera/async/Lifetime;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/camera/async/Lifetime;->mCloseables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    monitor-exit v1

    .line 102
    return-object p1

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
