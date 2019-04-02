.class public Lcom/android/camera/async/ConcurrentState;
.super Ljava/lang/Object;
.source "ConcurrentState.java"

# interfaces
.implements Lcom/android/camera/async/Updatable;
.implements Lcom/android/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Updatable",
        "<TT;>;",
        "Lcom/android/camera/async/Observable",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/ConcurrentState;->mListeners:Ljava/util/Set;

    .line 59
    iput-object p1, p0, Lcom/android/camera/async/ConcurrentState;->mValue:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/async/ConcurrentState;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/async/ConcurrentState;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/async/ConcurrentState;->mListeners:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<TT;>;"
    new-instance v0, Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;

    invoke-direct {v0, p2, p1}, Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 84
    .local v0, "pair":Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;
    iget-object v1, p0, Lcom/android/camera/async/ConcurrentState;->mListeners:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/android/camera/async/ConcurrentState$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/async/ConcurrentState$1;-><init>(Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;)V

    return-object v1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ConcurrentState;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;Z)V

    .line 68
    return-void
.end method

.method public update(Ljava/lang/Object;Z)V
    .locals 3
    .param p2, "needCallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/camera/async/ConcurrentState;->mValue:Ljava/lang/Object;

    .line 72
    if-eqz p2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/camera/async/ConcurrentState;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;

    .line 74
    .local v0, "pair":Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;
    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;->run()V

    goto :goto_0

    .line 77
    .end local v0    # "pair":Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;
    :cond_0
    return-void
.end method
