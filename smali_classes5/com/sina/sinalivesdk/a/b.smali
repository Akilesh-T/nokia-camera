.class public final Lcom/sina/sinalivesdk/a/b;
.super Ljava/util/AbstractQueue;

# interfaces
.implements Lcom/sina/sinalivesdk/a/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Lcom/sina/sinalivesdk/a/a",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private transient c:Lcom/sina/sinalivesdk/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/a/d",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/sina/sinalivesdk/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sina/sinalivesdk/a/d",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/concurrent/locks/ReentrantLock;

.field private final h:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/a/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/b;->f:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/b;->h:Ljava/util/concurrent/locks/Condition;

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    new-instance v0, Lcom/sina/sinalivesdk/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sina/sinalivesdk/a/d;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/b;->d:Lcom/sina/sinalivesdk/a/d;

    return-void
.end method

.method static synthetic a(Lcom/sina/sinalivesdk/a/b;)Lcom/sina/sinalivesdk/a/d;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    return-object v0
.end method

.method private a(Lcom/sina/sinalivesdk/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/a/d",
            "<TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->d:Lcom/sina/sinalivesdk/a/d;

    iput-object p1, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    iput-object p1, p0, Lcom/sina/sinalivesdk/a/b;->d:Lcom/sina/sinalivesdk/a/d;

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v1, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private f()V
    .locals 2

    iget-object v1, p0, Lcom/sina/sinalivesdk/a/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private g()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v1, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    iput-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    iput-object v1, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v1, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sina/sinalivesdk/a/b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final a(Lcom/sina/sinalivesdk/a/d;Lcom/sina/sinalivesdk/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/sinalivesdk/a/d",
            "<TE;>;",
            "Lcom/sina/sinalivesdk/a/d",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    iget-object v0, p1, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    iput-object v0, p2, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->d:Lcom/sina/sinalivesdk/a/d;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lcom/sina/sinalivesdk/a/b;->d:Lcom/sina/sinalivesdk/a/d;

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/sina/sinalivesdk/a/d;

    invoke-direct {v0, p1}, Lcom/sina/sinalivesdk/a/d;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/a/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sina/sinalivesdk/a/b;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sina/sinalivesdk/a/b;->a(Lcom/sina/sinalivesdk/a/d;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sina/sinalivesdk/a/b;->e()V

    :cond_3
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sina/sinalivesdk/a/b;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/sina/sinalivesdk/a/b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v1, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sina/sinalivesdk/a/b;->f()V

    :cond_2
    return-object v2
.end method

.method final c()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    :goto_0
    iget-object v1, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    if-eqz v1, :cond_0

    iput-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->d:Lcom/sina/sinalivesdk/a/d;

    iput-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->c()V

    :try_start_0
    iget-object v1, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v1, v1, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    throw v0
.end method

.method final d()V
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sina/sinalivesdk/a/c;

    invoke-direct {v0, p0}, Lcom/sina/sinalivesdk/a/c;-><init>(Lcom/sina/sinalivesdk/a/b;)V

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v3, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    new-instance v3, Lcom/sina/sinalivesdk/a/d;

    invoke-direct {v3, p1}, Lcom/sina/sinalivesdk/a/d;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sina/sinalivesdk/a/b;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    if-ge v5, v6, :cond_2

    invoke-direct {p0, v3}, Lcom/sina/sinalivesdk/a/b;->a(Lcom/sina/sinalivesdk/a/d;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sina/sinalivesdk/a/b;->e()V

    :cond_3
    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v2, v2, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, v2, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v0, -0x1

    iget-object v3, p0, Lcom/sina/sinalivesdk/a/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0}, Lcom/sina/sinalivesdk/a/b;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v2, p0, Lcom/sina/sinalivesdk/a/b;->a:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/sina/sinalivesdk/a/b;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->c()V

    :try_start_0
    iget-object v2, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v1, v2, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/sina/sinalivesdk/a/b;->a(Lcom/sina/sinalivesdk/a/d;Lcom/sina/sinalivesdk/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    throw v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget-object v4, v0, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    aput-object v4, v3, v1

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    throw v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, v0, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    aput-object v3, p1, v1

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    move v1, v2

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aput-object v0, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/sina/sinalivesdk/a/b;->c:Lcom/sina/sinalivesdk/a/d;

    iget-object v0, v0, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    if-nez v0, :cond_0

    const-string v0, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/sina/sinalivesdk/a/d;->a:Ljava/lang/Object;

    if-ne v0, p0, :cond_1

    const-string v0, "(this Collection)"

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/sina/sinalivesdk/a/d;->b:Lcom/sina/sinalivesdk/a/d;

    if-nez v0, :cond_2

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2c

    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sina/sinalivesdk/a/b;->d()V

    throw v0
.end method
