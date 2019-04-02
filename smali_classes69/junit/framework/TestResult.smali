.class public Ljunit/framework/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field protected fErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation
.end field

.field protected fFailures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation
.end field

.field protected fListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field protected fRunTests:I

.field private fStop:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/List;

    .line 28
    iput v1, p0, Ljunit/framework/TestResult;->fRunTests:I

    .line 29
    iput-boolean v1, p0, Ljunit/framework/TestResult;->fStop:Z

    .line 30
    return-void
.end method

.method private declared-synchronized cloneListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestListener;>;"
    iget-object v1, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object v0

    .line 72
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/List;

    new-instance v3, Ljunit/framework/TestFailure;

    invoke-direct {v3, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestListener;

    .line 39
    .local v0, "each":Ljunit/framework/TestListener;
    invoke-interface {v0, p1, p2}, Ljunit/framework/TestListener;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "each":Ljunit/framework/TestListener;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 41
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "e"    # Ljunit/framework/AssertionFailedError;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/List;

    new-instance v3, Ljunit/framework/TestFailure;

    invoke-direct {v3, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestListener;

    .line 50
    .local v0, "each":Ljunit/framework/TestListener;
    invoke-interface {v0, p1, p2}, Ljunit/framework/TestListener;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "each":Ljunit/framework/TestListener;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 52
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 3
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 81
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestListener;

    .line 82
    .local v0, "each":Ljunit/framework/TestListener;
    invoke-interface {v0, p1}, Ljunit/framework/TestListener;->endTest(Ljunit/framework/Test;)V

    goto :goto_0

    .line 84
    .end local v0    # "each":Ljunit/framework/TestListener;
    :cond_0
    return-void
.end method

.method public declared-synchronized errorCount()I
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized errors()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failureCount()I
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failures()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected run(Ljunit/framework/TestCase;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/TestCase;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->startTest(Ljunit/framework/Test;)V

    .line 120
    new-instance v0, Ljunit/framework/TestResult$1;

    invoke-direct {v0, p0, p1}, Ljunit/framework/TestResult$1;-><init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V

    .line 125
    .local v0, "p":Ljunit/framework/Protectable;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    .line 127
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->endTest(Ljunit/framework/Test;)V

    .line 128
    return-void
.end method

.method public declared-synchronized runCount()I
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljunit/framework/TestResult;->fRunTests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "p"    # Ljunit/framework/Protectable;

    .prologue
    .line 142
    :try_start_0
    invoke-interface {p2}, Ljunit/framework/Protectable;->protect()V
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljunit/framework/AssertionFailedError;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljunit/framework/AssertionFailedError;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/ThreadDeath;
    throw v0

    .line 147
    .end local v0    # "e":Ljava/lang/ThreadDeath;
    :catch_2
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized shouldStop()Z
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 4
    .param p1, "test"    # Ljunit/framework/Test;

    .prologue
    .line 163
    invoke-interface {p1}, Ljunit/framework/Test;->countTestCases()I

    move-result v0

    .line 164
    .local v0, "count":I
    monitor-enter p0

    .line 165
    :try_start_0
    iget v3, p0, Ljunit/framework/TestResult;->fRunTests:I

    add-int/2addr v3, v0

    iput v3, p0, Ljunit/framework/TestResult;->fRunTests:I

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    .line 168
    .local v1, "each":Ljunit/framework/TestListener;
    invoke-interface {v1, p1}, Ljunit/framework/TestListener;->startTest(Ljunit/framework/Test;)V

    goto :goto_0

    .line 166
    .end local v1    # "each":Ljunit/framework/TestListener;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 170
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wasSuccessful()Z
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljunit/framework/TestResult;->failureCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljunit/framework/TestResult;->errorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
