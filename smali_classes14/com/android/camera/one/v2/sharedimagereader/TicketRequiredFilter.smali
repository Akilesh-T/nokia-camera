.class Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;
.super Ljava/lang/Object;
.source "TicketRequiredFilter.java"

# interfaces
.implements Lcom/android/camera/async/BufferQueueController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/BufferQueueController",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImageSequence:Lcom/android/camera/async/BufferQueueController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mTicketProvider:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketProvider;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketProvider;Lcom/android/camera/async/BufferQueueController;)V
    .locals 0
    .param p1, "ticketProvider"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketProvider;",
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "imageSequence":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;->mTicketProvider:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketProvider;

    .line 39
    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;->mImageSequence:Lcom/android/camera/async/BufferQueueController;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;->mImageSequence:Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueueController;->close()V

    .line 55
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;->mImageSequence:Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueueController;->isClosed()Z

    move-result v0

    return v0
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 3
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;->mTicketProvider:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketProvider;

    invoke-interface {v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketProvider;->tryAcquire()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    move-result-object v0

    .line 45
    .local v0, "ticket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    if-nez v0, :cond_0

    .line 46
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;->mImageSequence:Lcom/android/camera/async/BufferQueueController;

    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/util/TicketImageProxy;

    invoke-direct {v2, p1, v0}, Lcom/android/camera/one/v2/sharedimagereader/util/TicketImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;)V

    invoke-interface {v1, v2}, Lcom/android/camera/async/BufferQueueController;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 32
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;->update(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    return-void
.end method
