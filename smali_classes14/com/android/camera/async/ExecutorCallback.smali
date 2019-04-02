.class public Lcom/android/camera/async/ExecutorCallback;
.super Ljava/lang/Object;
.source "ExecutorCallback.java"

# interfaces
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Updatable",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mCallback:Lcom/android/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/util/Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/Callback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/android/camera/async/ExecutorCallback;, "Lcom/android/camera/async/ExecutorCallback<TT;>;"
    .local p1, "callback":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/async/ExecutorCallback;->mCallback:Lcom/android/camera/util/Callback;

    .line 42
    iput-object p2, p0, Lcom/android/camera/async/ExecutorCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/async/ExecutorCallback;)Lcom/android/camera/util/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/async/ExecutorCallback;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/async/ExecutorCallback;->mCallback:Lcom/android/camera/util/Callback;

    return-object v0
.end method


# virtual methods
.method public update(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/android/camera/async/ExecutorCallback;, "Lcom/android/camera/async/ExecutorCallback<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/camera/async/ExecutorCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/async/ExecutorCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/async/ExecutorCallback$1;-><init>(Lcom/android/camera/async/ExecutorCallback;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
