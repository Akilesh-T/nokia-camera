.class public Lcom/android/camera/util/ListenerCombiner;
.super Ljava/lang/Object;
.source "ListenerCombiner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/ListenerCombiner$StateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Input:",
        "Ljava/lang/Enum",
        "<TInput;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mInputs:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TInput;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/ListenerCombiner$StateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOutput:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TInput;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/util/ListenerCombiner;, "Lcom/android/camera/util/ListenerCombiner<TInput;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TInput;>;"
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/util/ListenerCombiner;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/util/ListenerCombiner;->mListeners:Ljava/util/List;

    .line 112
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/camera/util/ListenerCombiner;->mInputs:Ljava/util/EnumMap;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 115
    .local v0, "i":Ljava/lang/Enum;, "TInput;"
    iget-object v5, p0, Lcom/android/camera/util/ListenerCombiner;->mInputs:Ljava/util/EnumMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "i":Ljava/lang/Enum;, "TInput;"
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/android/camera/util/ListenerCombiner$StateChangeListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/android/camera/util/ListenerCombiner$StateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TInput;>;",
            "Lcom/android/camera/util/ListenerCombiner$StateChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/android/camera/util/ListenerCombiner;, "Lcom/android/camera/util/ListenerCombiner<TInput;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TInput;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/util/ListenerCombiner;-><init>(Ljava/lang/Class;)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/android/camera/util/ListenerCombiner;->addListener(Lcom/android/camera/util/ListenerCombiner$StateChangeListener;)V

    .line 109
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/util/ListenerCombiner$StateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/util/ListenerCombiner$StateChangeListener;

    .prologue
    .line 58
    .local p0, "this":Lcom/android/camera/util/ListenerCombiner;, "Lcom/android/camera/util/ListenerCombiner<TInput;>;"
    iget-object v0, p0, Lcom/android/camera/util/ListenerCombiner;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public getOutput()Z
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lcom/android/camera/util/ListenerCombiner;, "Lcom/android/camera/util/ListenerCombiner<TInput;>;"
    iget-object v1, p0, Lcom/android/camera/util/ListenerCombiner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    monitor-exit v1

    return v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyListeners()V
    .locals 4

    .prologue
    .line 126
    .local p0, "this":Lcom/android/camera/util/ListenerCombiner;, "Lcom/android/camera/util/ListenerCombiner<TInput;>;"
    iget-object v2, p0, Lcom/android/camera/util/ListenerCombiner;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/util/ListenerCombiner;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/ListenerCombiner$StateChangeListener;

    .line 128
    .local v0, "listener":Lcom/android/camera/util/ListenerCombiner$StateChangeListener;
    iget-boolean v3, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    invoke-interface {v0, v3}, Lcom/android/camera/util/ListenerCombiner$StateChangeListener;->onStateChange(Z)V

    goto :goto_0

    .line 130
    .end local v0    # "listener":Lcom/android/camera/util/ListenerCombiner$StateChangeListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    return-void
.end method

.method public removeListener(Lcom/android/camera/util/ListenerCombiner$StateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/util/ListenerCombiner$StateChangeListener;

    .prologue
    .line 62
    .local p0, "this":Lcom/android/camera/util/ListenerCombiner;, "Lcom/android/camera/util/ListenerCombiner<TInput;>;"
    iget-object v0, p0, Lcom/android/camera/util/ListenerCombiner;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public setInput(Ljava/lang/Enum;Z)Z
    .locals 6
    .param p2, "newValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInput;Z)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/android/camera/util/ListenerCombiner;, "Lcom/android/camera/util/ListenerCombiner<TInput;>;"
    .local p1, "input":Ljava/lang/Enum;, "TInput;"
    iget-object v3, p0, Lcom/android/camera/util/ListenerCombiner;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/util/ListenerCombiner;->mInputs:Ljava/util/EnumMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-boolean v2, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    if-ne p2, v2, :cond_0

    .line 86
    iget-boolean v2, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    monitor-exit v3

    .line 101
    :goto_0
    return v2

    .line 88
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    .line 91
    .local v1, "oldOutput":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    .line 92
    iget-object v2, p0, Lcom/android/camera/util/ListenerCombiner;->mInputs:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 93
    .local v0, "b":Ljava/lang/Boolean;
    iget-boolean v4, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    goto :goto_1

    .line 103
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v1    # "oldOutput":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 97
    .restart local v1    # "oldOutput":Z
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    if-eq v1, v2, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/util/ListenerCombiner;->notifyListeners()V

    .line 101
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/util/ListenerCombiner;->mOutput:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
