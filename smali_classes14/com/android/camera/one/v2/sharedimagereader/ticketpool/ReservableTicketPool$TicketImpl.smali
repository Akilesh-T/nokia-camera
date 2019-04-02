.class Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;
.super Ljava/lang/Object;
.source "ReservableTicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TicketImpl"
.end annotation


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mParentTicket:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

.field final synthetic this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;)V
    .locals 2
    .param p2, "parentTicket"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->mParentTicket:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;
    .param p2, "x1"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    .param p3, "x2"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$1;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 86
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->access$000(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->access$100(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-static {v2}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->access$200(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 97
    .local v0, "releaseToParent":Z
    :goto_1
    if-nez v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->access$100(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)Ljava/util/ArrayDeque;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->mParentTicket:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->access$300(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)V

    .line 100
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->access$400(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->access$000(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->mParentTicket:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    invoke-interface {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;->close()V

    goto :goto_0

    .line 96
    .end local v0    # "releaseToParent":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 103
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-static {v2}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->access$000(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
