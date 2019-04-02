.class Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;
.super Ljava/lang/Object;
.source "ConcurrentState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/async/ConcurrentState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutorListenerPair"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;->mExecutor:Ljava/util/concurrent/Executor;

    .line 39
    iput-object p2, p0, Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;->mListener:Ljava/lang/Runnable;

    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;->mListener:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method
