.class public Lcom/android/camera/one/v2/sharedimagereader/util/TicketImageProxy;
.super Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;
.source "TicketImageProxy.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTicket:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;)V
    .locals 2
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "ticket"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 37
    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/util/TicketImageProxy;->mTicket:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/util/TicketImageProxy;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/util/TicketImageProxy;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->close()V

    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/util/TicketImageProxy;->mTicket:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    invoke-interface {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;->close()V

    goto :goto_0
.end method
