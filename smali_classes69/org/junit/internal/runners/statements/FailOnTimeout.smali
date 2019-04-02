.class public Lorg/junit/internal/runners/statements/FailOnTimeout;
.super Lorg/junit/runners/model/Statement;
.source "FailOnTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/statements/FailOnTimeout$1;,
        Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;,
        Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    }
.end annotation


# instance fields
.field private final lookForStuckThread:Z

.field private final originalStatement:Lorg/junit/runners/model/Statement;

.field private volatile threadGroup:Ljava/lang/ThreadGroup;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final timeout:J


# direct methods
.method private constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V
    .locals 2
    .param p1, "builder"    # Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .param p2, "statement"    # Lorg/junit/runners/model/Statement;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->threadGroup:Ljava/lang/ThreadGroup;

    .line 46
    iput-object p2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->originalStatement:Lorg/junit/runners/model/Statement;

    .line 47
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->access$100(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    .line 48
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->access$200(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 49
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->access$300(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->lookForStuckThread:Z

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .param p2, "x1"    # Lorg/junit/runners/model/Statement;
    .param p3, "x2"    # Lorg/junit/internal/runners/statements/FailOnTimeout$1;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V

    return-void
.end method

.method public constructor <init>(Lorg/junit/runners/model/Statement;J)V
    .locals 2
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;
    .param p2, "timeoutMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lorg/junit/internal/runners/statements/FailOnTimeout;->builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V

    .line 43
    return-void
.end method

.method static synthetic access$600(Lorg/junit/internal/runners/statements/FailOnTimeout;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->originalStatement:Lorg/junit/runners/model/Statement;

    return-object v0
.end method

.method public static builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V

    return-object v0
.end method

.method private copyThreads([Ljava/lang/Thread;I)[Ljava/lang/Thread;
    .locals 4
    .param p1, "threads"    # [Ljava/lang/Thread;
    .param p2, "count"    # I

    .prologue
    .line 268
    array-length v3, p1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 269
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/Thread;

    .line 270
    .local v2, "result":[Ljava/lang/Thread;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 271
    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return-object v2
.end method

.method private cpuTime(Ljava/lang/Thread;)J
    .locals 4
    .param p1, "thr"    # Ljava/lang/Thread;

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    .line 283
    .local v0, "mxBean":Ljava/lang/management/ThreadMXBean;
    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->isThreadCpuTimeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ljava/lang/management/ThreadMXBean;->getThreadCpuTime(J)J
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 289
    :goto_0
    return-wide v2

    .line 286
    :catch_0
    move-exception v1

    .line 289
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private createTimeoutException(Ljava/lang/Thread;)Ljava/lang/Exception;
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 156
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 157
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    iget-boolean v4, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->lookForStuckThread:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getStuckThread(Ljava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v2

    .line 158
    .local v2, "stuckThread":Ljava/lang/Thread;
    :goto_0
    new-instance v0, Lorg/junit/runners/model/TestTimedOutException;

    iget-wide v4, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    iget-object v6, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v4, v5, v6}, Lorg/junit/runners/model/TestTimedOutException;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 159
    .local v0, "currThreadException":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 161
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 163
    :cond_0
    if-eqz v2, :cond_1

    .line 164
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appears to be stuck in thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, "stuckThreadException":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 168
    new-instance v4, Lorg/junit/runners/model/MultipleFailureException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/junit/runners/model/MultipleFailureException;-><init>(Ljava/util/List;)V

    move-object v0, v4

    .line 171
    .end local v0    # "currThreadException":Ljava/lang/Exception;
    .end local v3    # "stuckThreadException":Ljava/lang/Exception;
    :cond_1
    return-object v0

    .line 157
    .end local v2    # "stuckThread":Ljava/lang/Thread;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getResult(Ljava/util/concurrent/FutureTask;Ljava/lang/Thread;)Ljava/lang/Throwable;
    .locals 6
    .param p2, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Thread;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Throwable;>;"
    :try_start_0
    iget-wide v2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 141
    iget-wide v2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    iget-object v1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 151
    :goto_0
    return-object v1

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    move-object v1, v0

    .line 146
    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 151
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-direct {p0, p2}, Lorg/junit/internal/runners/statements/FailOnTimeout;->createTimeoutException(Ljava/lang/Thread;)Ljava/lang/Exception;

    move-result-object v1

    goto :goto_0
.end method

.method private getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 183
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private getStuckThread(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 13
    .param p1, "mainThread"    # Ljava/lang/Thread;

    .prologue
    const/4 v10, 0x0

    .line 200
    iget-object v11, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->threadGroup:Ljava/lang/ThreadGroup;

    if-nez v11, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v10

    .line 203
    :cond_1
    iget-object v11, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-direct {p0, v11}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getThreadArray(Ljava/lang/ThreadGroup;)[Ljava/lang/Thread;

    move-result-object v7

    .line 204
    .local v7, "threadsInGroup":[Ljava/lang/Thread;
    if-eqz v7, :cond_0

    .line 213
    const/4 v3, 0x0

    .line 214
    .local v3, "stuckThread":Ljava/lang/Thread;
    const-wide/16 v4, 0x0

    .line 215
    .local v4, "maxCpuTime":J
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/Thread;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v6, v0, v1

    .line 216
    .local v6, "thread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v11

    sget-object v12, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v11, v12, :cond_3

    .line 217
    invoke-direct {p0, v6}, Lorg/junit/internal/runners/statements/FailOnTimeout;->cpuTime(Ljava/lang/Thread;)J

    move-result-wide v8

    .line 218
    .local v8, "threadCpuTime":J
    if-eqz v3, :cond_2

    cmp-long v11, v8, v4

    if-lez v11, :cond_3

    .line 219
    :cond_2
    move-object v3, v6

    .line 220
    move-wide v4, v8

    .line 215
    .end local v8    # "threadCpuTime":J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v6    # "thread":Ljava/lang/Thread;
    :cond_4
    if-ne v3, p1, :cond_5

    move-object v3, v10

    .end local v3    # "stuckThread":Ljava/lang/Thread;
    :cond_5
    move-object v10, v3

    goto :goto_0
.end method

.method private getThreadArray(Ljava/lang/ThreadGroup;)[Ljava/lang/Thread;
    .locals 7
    .param p1, "group"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 237
    .local v0, "count":I
    mul-int/lit8 v5, v0, 0x2

    const/16 v6, 0x64

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 240
    .local v2, "enumSize":I
    const/4 v3, 0x0

    .line 242
    .local v3, "loopCount":I
    :cond_0
    new-array v4, v2, [Ljava/lang/Thread;

    .line 243
    .local v4, "threads":[Ljava/lang/Thread;
    invoke-virtual {p1, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    .line 244
    .local v1, "enumCount":I
    if-ge v1, v2, :cond_1

    .line 257
    invoke-direct {p0, v4, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout;->copyThreads([Ljava/lang/Thread;I)[Ljava/lang/Thread;

    move-result-object v5

    :goto_0
    return-object v5

    .line 250
    :cond_1
    add-int/lit8 v2, v2, 0x64

    .line 251
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x5

    if-lt v3, v5, :cond_0

    .line 252
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout;Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V

    .line 121
    .local v0, "callable":Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 122
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Throwable;>;"
    new-instance v4, Ljava/lang/ThreadGroup;

    const-string v5, "FailOnTimeoutGroup"

    invoke-direct {v4, v5}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->threadGroup:Ljava/lang/ThreadGroup;

    .line 123
    new-instance v2, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->threadGroup:Ljava/lang/ThreadGroup;

    const-string v5, "Time-limited test"

    invoke-direct {v2, v4, v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 124
    .local v2, "thread":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 125
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 126
    invoke-virtual {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->awaitStarted()V

    .line 127
    invoke-direct {p0, v1, v2}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getResult(Ljava/util/concurrent/FutureTask;Ljava/lang/Thread;)Ljava/lang/Throwable;

    move-result-object v3

    .line 128
    .local v3, "throwable":Ljava/lang/Throwable;
    if-eqz v3, :cond_0

    .line 129
    throw v3

    .line 131
    :cond_0
    return-void
.end method
