.class public abstract Lcom/android/camera/async/ForwardingObservable;
.super Ljava/lang/Object;
.source "ForwardingObservable.java"

# interfaces
.implements Lcom/android/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Observable",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/android/camera/async/ForwardingObservable;, "Lcom/android/camera/async/ForwardingObservable<TT;>;"
    .local p1, "delegate":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/async/ForwardingObservable;->mDelegate:Lcom/android/camera/async/Observable;

    .line 33
    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/android/camera/async/ForwardingObservable;, "Lcom/android/camera/async/ForwardingObservable<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ForwardingObservable;->mDelegate:Lcom/android/camera/async/Observable;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
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
    .line 45
    .local p0, "this":Lcom/android/camera/async/ForwardingObservable;, "Lcom/android/camera/async/ForwardingObservable<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ForwardingObservable;->mDelegate:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
