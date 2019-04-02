.class Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;
.super Ljava/lang/Object;
.source "FiniteTicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TicketImpl"
.end annotation


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;)V
    .locals 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 48
    .local v0, "alreadyClosed":Z
    if-nez v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->access$000(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->access$100(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;)V

    .line 51
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$TicketImpl;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;->access$200(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;)V

    .line 52
    monitor-exit v2

    .line 54
    :cond_0
    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
