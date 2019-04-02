.class public interface abstract Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
.super Ljava/lang/Object;
.source "TicketPool.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;
    }
.end annotation


# static fields
.field public static final RESERVE_TIMEOUT:J = 0x1388L

.field public static final RESERVE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->RESERVE_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public abstract acquire(I)Ljava/util/Collection;
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
.end method

.method public abstract getAvailableTicketCount()Lcom/android/camera/async/Observable;
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
.end method

.method public abstract getMaxCapability()I
.end method

.method public abstract tryAcquire()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
