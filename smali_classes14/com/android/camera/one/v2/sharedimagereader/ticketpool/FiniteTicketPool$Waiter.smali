.class Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;
.super Ljava/lang/Object;
.source "FiniteTicketPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Waiter"
.end annotation


# instance fields
.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private final mTicketsRequested:I

.field final synthetic this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;ILjava/util/concurrent/locks/Condition;)V
    .locals 0
    .param p2, "ticketsRequested"    # I
    .param p3, "condition"    # Ljava/util/concurrent/locks/Condition;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->mTicketsRequested:I

    .line 63
    iput-object p3, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;ILjava/util/concurrent/locks/Condition;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/concurrent/locks/Condition;
    .param p4, "x3"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;ILjava/util/concurrent/locks/Condition;)V

    return-void
.end method


# virtual methods
.method public getCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->mCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public getTicketsRequested()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool$Waiter;->mTicketsRequested:I

    return v0
.end method
