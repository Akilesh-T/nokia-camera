.class Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;
.super Ljava/lang/Object;
.source "ReservableTicketPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Waiter"
.end annotation


# instance fields
.field private final mDoneCondition:Ljava/util/concurrent/locks/Condition;

.field private final mRequestedTicketCount:I


# direct methods
.method private constructor <init>(Ljava/util/concurrent/locks/Condition;I)V
    .locals 0
    .param p1, "doneCondition"    # Ljava/util/concurrent/locks/Condition;
    .param p2, "requestedTicketCount"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->mDoneCondition:Ljava/util/concurrent/locks/Condition;

    .line 58
    iput p2, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->mRequestedTicketCount:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/locks/Condition;ILcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/locks/Condition;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$1;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;-><init>(Ljava/util/concurrent/locks/Condition;I)V

    return-void
.end method


# virtual methods
.method public getDoneCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->mDoneCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public getRequestedTicketCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool$Waiter;->mRequestedTicketCount:I

    return v0
.end method
