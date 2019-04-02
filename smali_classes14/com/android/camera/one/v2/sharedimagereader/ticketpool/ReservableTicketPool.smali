.class public Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;
.super Ljava/lang/Object;
.source "ReservableTicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;,
        Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mAvailableTicketCount:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCapacity:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mParentPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

.field private final mParentTickets:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTicketWaiters:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;)V
    .locals 3
    .param p1, "parentPool"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    .line 149
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 150
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    .line 151
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    .line 152
    iput v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    .line 153
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mAvailableTicketCount:Lcom/android/camera/async/ConcurrentState;

    .line 154
    return-void
.end method

.method private abortWaitersOnCapacityDecrease()V
    .locals 5

    .prologue
    .line 381
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 385
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v0, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;>;"
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;

    .line 387
    .local v1, "waiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->getRequestedTicketCount()I

    move-result v3

    iget v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    if-le v3, v4, :cond_0

    .line 388
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 395
    .end local v0    # "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;>;"
    .end local v1    # "waiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 391
    .restart local v0    # "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;

    .line 392
    .restart local v1    # "waiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->getDoneCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 395
    .end local v1    # "waiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 397
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->updateCurrentTicketCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->releaseWaitersOnTicketAvailability()V

    return-void
.end method

.method private acquireParentTickets(I)Ljava/util/Collection;
    .locals 4
    .param p1, "tickets"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "acquiredParentTickets":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;>;"
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->tryAcquireAtomically(I)Ljava/util/List;

    move-result-object v0

    .line 311
    :cond_0
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;-><init>(Ljava/util/concurrent/locks/Condition;ILcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$1;)V

    .line 312
    .local v1, "thisWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->updateCurrentTicketCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    :goto_0
    if-nez v0, :cond_1

    .line 316
    :try_start_1
    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->getDoneCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 317
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->tryAcquireAtomically(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 322
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->updateCurrentTicketCount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    return-object v0

    .line 320
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    .end local v1    # "thisWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method private releaseAllCapacity()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 283
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->releaseCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 287
    return-void

    .line 285
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private releaseWaitersOnTicketAvailability()V
    .locals 4

    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    .line 365
    .local v1, "numTicketsReadilyAvailable":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;

    .line 367
    .local v0, "nextWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->getRequestedTicketCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->getRequestedTicketCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 369
    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->getDoneCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 370
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 376
    .end local v0    # "nextWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    .end local v1    # "numTicketsReadilyAvailable":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v0    # "nextWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    .restart local v1    # "numTicketsReadilyAvailable":I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 378
    .end local v0    # "nextWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
    :goto_1
    return-void

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1
.end method

.method private tryAcquireAtomically(I)Ljava/util/List;
    .locals 4
    .param p1, "tickets"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "acquiredParentTickets":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;>;"
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_0
    iget v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    if-le p1, v2, :cond_0

    .line 344
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v2}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 346
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-lt v2, p1, :cond_2

    .line 347
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->updateCurrentTicketCount()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 356
    .end local v0    # "acquiredParentTickets":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;>;"
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 354
    .restart local v0    # "acquiredParentTickets":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 356
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCurrentTicketCount()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mAvailableTicketCount:Lcom/android/camera/async/ConcurrentState;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 168
    return-void

    .line 163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mAvailableTicketCount:Lcom/android/camera/async/ConcurrentState;

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public acquire(I)Ljava/util/Collection;
    .locals 6
    .param p1, "tickets"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->acquireParentTickets(I)Ljava/util/Collection;

    move-result-object v0

    .line 176
    .local v0, "acquiredParentTickets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, "wrappedTicketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    .line 178
    .local v1, "parentTicket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    new-instance v4, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$1;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v1    # "parentTicket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    :cond_0
    return-object v2
.end method

.method public close()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->releaseAllCapacity()V

    .line 292
    return-void
.end method

.method public getAvailableTicketCount()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mAvailableTicketCount:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method public getMaxCapability()I
    .locals 1

    .prologue
    .line 401
    const v0, 0x7fffffff

    return v0
.end method

.method public releaseCapacity(I)V
    .locals 6
    .param p1, "capacityToRelease"    # I

    .prologue
    .line 246
    if-gtz p1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, "parentTicketsToRelease":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;>;"
    iget-object v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 253
    :try_start_0
    iget v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    if-le p1, v4, :cond_1

    .line 254
    iget p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    .line 257
    :cond_1
    iget v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    .line 260
    iget-object v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 261
    .local v1, "numParentTicketsToRelease":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 262
    iget-object v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->abortWaitersOnCapacityDecrease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-object v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 270
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    .line 271
    .local v3, "ticket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;->close()V

    goto :goto_2

    .line 267
    .end local v0    # "i":I
    .end local v1    # "numParentTicketsToRelease":I
    .end local v3    # "ticket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 274
    .restart local v0    # "i":I
    .restart local v1    # "numParentTicketsToRelease":I
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->updateCurrentTicketCount()V

    goto :goto_0
.end method

.method public reserveCapacity(I)V
    .locals 6
    .param p1, "additionalCapacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    invoke-interface {v2, p1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->acquire(I)Ljava/util/Collection;

    move-result-object v1

    .line 218
    .local v1, "tickets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;>;"
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x1388

    sget-object v3, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->RESERVE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    :try_start_0
    iget v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mCapacity:I

    .line 222
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    .line 223
    .local v0, "ticket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
    .end local v0    # "ticket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 226
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->releaseWaitersOnTicketAvailability()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 231
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->updateCurrentTicketCount()V

    .line 235
    return-void

    .line 233
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "try to reserve Capacity timeout"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public tryAcquire()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mTicketWaiters:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_1

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v2

    .line 203
    :goto_0
    return-object v1

    .line 197
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mParentTickets:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    .line 198
    .local v0, "parentTicket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->updateCurrentTicketCount()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$1;)V

    goto :goto_0

    .line 200
    .end local v0    # "parentTicket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
