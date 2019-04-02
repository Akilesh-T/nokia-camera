.class final Lcom/android/camera/one/v2/core/ObservableFrameServer;
.super Ljava/lang/Object;
.source "ObservableFrameServer.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameServer;
.implements Lcom/android/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/core/FrameServer;",
        "Lcom/android/camera/async/Observable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mAvailability:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDelegate:Lcom/android/camera/one/v2/core/FrameServer;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;)V
    .locals 2
    .param p1, "delegate"    # Lcom/android/camera/one/v2/core/FrameServer;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mAvailability:Lcom/android/camera/async/ConcurrentState;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/core/ObservableFrameServer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/core/ObservableFrameServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/core/ObservableFrameServer;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/core/ObservableFrameServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mAvailability:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mAvailability:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 107
    iget-object v3, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 108
    .local v0, "clients":I
    iget-object v6, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mAvailability:Lcom/android/camera/async/ConcurrentState;

    if-nez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v3}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v2

    .line 113
    .local v2, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    new-instance v3, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v2, v6}, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;-><init>(Lcom/android/camera/one/v2/core/ObservableFrameServer;Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/ObservableFrameServer$1;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .end local v2    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :cond_0
    move v3, v5

    .line 108
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 118
    iget-object v3, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mAvailability:Lcom/android/camera/async/ConcurrentState;

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 119
    throw v1

    :cond_1
    move v4, v5

    .line 118
    goto :goto_1
.end method

.method public get()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mAvailability:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/camera/one/v2/core/ObservableFrameServer;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v2, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mDelegate:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v2}, Lcom/android/camera/one/v2/core/FrameServer;->tryCreateExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;

    move-result-object v1

    .line 127
    .local v1, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 132
    :goto_0
    return-object v2

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 131
    .local v0, "clients":I
    iget-object v4, p0, Lcom/android/camera/one/v2/core/ObservableFrameServer;->mAvailability:Lcom/android/camera/async/ConcurrentState;

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 132
    new-instance v2, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/camera/one/v2/core/ObservableFrameServer$SessionImpl;-><init>(Lcom/android/camera/one/v2/core/ObservableFrameServer;Lcom/android/camera/one/v2/core/FrameServer$Session;Lcom/android/camera/one/v2/core/ObservableFrameServer$1;)V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
