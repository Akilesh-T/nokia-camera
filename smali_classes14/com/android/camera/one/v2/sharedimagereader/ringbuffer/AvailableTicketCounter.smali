.class final Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;
.super Ljava/lang/Object;
.source "AvailableTicketCounter.java"

# interfaces
.implements Lcom/android/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Observable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mCount:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCounterLocked:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mInputs:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mCount:Lcom/android/camera/async/ConcurrentState;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mCounterLocked:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    return-void
.end method

.method private compute()I
    .locals 4

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "sum":I
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mInputs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/async/Observable;

    .line 65
    .local v0, "input":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 66
    goto :goto_0

    .line 67
    .end local v0    # "input":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_0
    return v1
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 56
    .local v0, "callbackLifetime":Lcom/android/camera/async/Lifetime;
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mInputs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/async/Observable;

    .line 57
    .local v1, "input":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-interface {v1, p1, p2}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    goto :goto_0

    .line 59
    .end local v1    # "input":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    :cond_0
    return-object v0
.end method

.method public freeze()V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->compute()I

    move-result v0

    .line 89
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mCounterLocked:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 90
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mCount:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public get()Ljava/lang/Integer;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mCount:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mCounterLocked:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->compute()I

    move-result v0

    .line 77
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public unfreeze()V
    .locals 4

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->compute()I

    move-result v0

    .line 103
    .local v0, "newValue":I
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mCounterLocked:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 104
    .local v1, "numLocksHeld":I
    if-nez v1, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->mCount:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 107
    :cond_0
    return-void
.end method
