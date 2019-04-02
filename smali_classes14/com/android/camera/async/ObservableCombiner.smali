.class final Lcom/android/camera/async/ObservableCombiner;
.super Ljava/lang/Object;
.source "ObservableCombiner.java"

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

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mInputs:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/camera/async/Observable",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mOutput:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/async/Observable",
            "<*>;>;",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/android/camera/async/ObservableCombiner;, "Lcom/android/camera/async/ObservableCombiner<TT;>;"
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<+Lcom/android/camera/async/Observable<*>;>;"
    .local p2, "output":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/async/ObservableCombiner;->mInputs:Lcom/google/common/collect/ImmutableList;

    .line 48
    iput-object p2, p0, Lcom/android/camera/async/ObservableCombiner;->mOutput:Lcom/google/common/base/Supplier;

    .line 49
    return-void
.end method

.method static transform(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/android/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/async/Observable",
            "<TI;>;>;",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/List",
            "<TI;>;TO;>;)",
            "Lcom/android/camera/async/Observable",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "inputs":Ljava/util/List;, "Ljava/util/List<+Lcom/android/camera/async/Observable<TI;>;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Ljava/util/List<TI;>;TO;>;"
    new-instance v0, Lcom/android/camera/async/ObservableCombiner;

    new-instance v1, Lcom/android/camera/async/ObservableCombiner$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/async/ObservableCombiner$1;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    invoke-direct {v0, p0, v1}, Lcom/android/camera/async/ObservableCombiner;-><init>(Ljava/util/List;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method static transform(Ljava/util/List;Lcom/google/common/base/Supplier;)Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/async/Observable",
            "<*>;>;",
            "Lcom/google/common/base/Supplier",
            "<TO;>;)",
            "Lcom/android/camera/async/Observable",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "inputs":Ljava/util/List;, "Ljava/util/List<+Lcom/android/camera/async/Observable<*>;>;"
    .local p1, "output":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TO;>;"
    new-instance v0, Lcom/android/camera/async/ObservableCombiner;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/async/ObservableCombiner;-><init>(Ljava/util/List;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/android/camera/async/ObservableCombiner;, "Lcom/android/camera/async/ObservableCombiner<TT;>;"
    new-instance v0, Lcom/android/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 87
    .local v0, "callbackLifetime":Lcom/android/camera/async/Lifetime;
    iget-object v2, p0, Lcom/android/camera/async/ObservableCombiner;->mInputs:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/async/Observable;

    .line 88
    .local v1, "input":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<*>;"
    invoke-interface {v1, p1, p2}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    goto :goto_0

    .line 91
    .end local v1    # "input":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<*>;"
    :cond_0
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
    .line 97
    .local p0, "this":Lcom/android/camera/async/ObservableCombiner;, "Lcom/android/camera/async/ObservableCombiner<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ObservableCombiner;->mOutput:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
