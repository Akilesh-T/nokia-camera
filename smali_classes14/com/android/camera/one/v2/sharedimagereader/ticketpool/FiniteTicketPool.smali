.class public final Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;
.super Ljava/lang/Object;
.source "FiniteTicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;,
        Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;
    }
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

.field private mClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mMaxCapacity:I

.field private mTickets:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mWaiters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mMaxCapacity:I

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 88
    iput p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mClosed:Z

    .line 91
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mAvailableTicketCount:Lcom/android/camera/async/ConcurrentState;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->releaseTicket()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->updateAvailableTicketCount()V

    return-void
.end method

.method private releaseTicket()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 96
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 98
    :try_start_0
    iget v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    .line 102
    iget v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    .line 103
    .local v1, "ticketsRemaining":I
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;

    .line 104
    .local v0, "nextWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->getTicketsRequested()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->getTicketsRequested()I

    move-result v2

    sub-int/2addr v1, v2

    .line 106
    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 108
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 109
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nextWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;
    check-cast v0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "nextWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;
    goto :goto_0

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 114
    return-void

    .line 112
    .end local v0    # "nextWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;
    .end local v1    # "ticketsRemaining":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method private updateAvailableTicketCount()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mAvailableTicketCount:Lcom/android/camera/async/ConcurrentState;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mAvailableTicketCount:Lcom/android/camera/async/ConcurrentState;

    iget v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public acquire(I)Ljava/util/Collection;
    .locals 5
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
    .line 120
    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 122
    :try_start_0
    iget v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mMaxCapacity:I

    if-gt p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 123
    :cond_0
    new-instance v3, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v3}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 125
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;

    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v3, v4}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;ILjava/util/concurrent/locks/Condition;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$1;)V

    .line 126
    .local v1, "thisWaiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;
    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->updateAvailableTicketCount()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_0
    :try_start_2
    iget v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    if-ge v3, p1, :cond_2

    iget-boolean v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mClosed:Z

    if-nez v3, :cond_2

    .line 130
    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 146
    :catchall_1
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->updateAvailableTicketCount()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :cond_2
    :try_start_4
    iget-boolean v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mClosed:Z

    if-eqz v3, :cond_3

    .line 133
    new-instance v3, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;

    invoke-direct {v3}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;-><init>()V

    throw v3

    .line 136
    :cond_3
    iget v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    .line 138
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->updateAvailableTicketCount()V

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "ticketList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 142
    new-instance v3, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;

    invoke-direct {v3, p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_4
    :try_start_5
    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->updateAvailableTicketCount()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 144
    return-object v2
.end method

.method public close()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mClosed:Z

    .line 195
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;

    .line 196
    .local v0, "waiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;
    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 201
    .end local v0    # "waiter":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 199
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->updateAvailableTicketCount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
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
    .line 166
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mAvailableTicketCount:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method public getMaxCapability()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mMaxCapacity:I

    return v0
.end method

.method public tryAcquire()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mWaiters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 174
    iget v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mTickets:I

    .line 175
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->updateAvailableTicketCount()V

    .line 176
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
