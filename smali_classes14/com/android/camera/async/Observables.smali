.class public Lcom/android/camera/async/Observables;
.super Ljava/lang/Object;
.source "Observables.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final NOOP_CALLBACK_HANDLE:Lcom/android/camera/async/SafeCloseable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/async/Observables$1;

    invoke-direct {v0}, Lcom/android/camera/async/Observables$1;-><init>()V

    sput-object v0, Lcom/android/camera/async/Observables;->NOOP_CALLBACK_HANDLE:Lcom/android/camera/async/SafeCloseable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/async/Observables;->NOOP_CALLBACK_HANDLE:Lcom/android/camera/async/SafeCloseable;

    return-object v0
.end method

.method public static addThreadSafeCallback(Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;)Lcom/android/camera/async/SafeCloseable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/async/Observable",
            "<TT;>;",
            "Lcom/android/camera/async/Updatable",
            "<TT;>;)",
            "Lcom/android/camera/async/SafeCloseable;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 112
    .local p0, "observable":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<TT;>;"
    .local p1, "callback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<TT;>;"
    new-instance v0, Lcom/android/camera/async/Observables$4;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/async/Observables$4;-><init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)V

    .line 117
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    .line 112
    invoke-interface {p0, v0, v1}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/android/camera/async/Observable;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 92
    .local p0, "constant":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/android/camera/async/Observables$3;

    invoke-direct {v0, p0}, Lcom/android/camera/async/Observables$3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static transform(Lcom/android/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/async/Observable",
            "<TF;>;",
            "Lcom/google/common/base/Function",
            "<TF;TT;>;)",
            "Lcom/android/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "input":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<TF;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TF;TT;>;"
    new-instance v0, Lcom/android/camera/async/Observables$2;

    invoke-direct {v0, p1, p0}, Lcom/android/camera/async/Observables$2;-><init>(Lcom/google/common/base/Function;Lcom/android/camera/async/Observable;)V

    return-object v0
.end method

.method public static transform(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/async/Observable",
            "<TF;>;>;",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/List",
            "<TF;>;TT;>;)",
            "Lcom/android/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "input":Ljava/util/List;, "Ljava/util/List<+Lcom/android/camera/async/Observable<TF;>;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Ljava/util/List<TF;>;TT;>;"
    invoke-static {p0, p1}, Lcom/android/camera/async/ObservableCombiner;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/android/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/util/List;Lcom/google/common/base/Supplier;)Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/async/Observable",
            "<*>;>;",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)",
            "Lcom/android/camera/async/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "inputs":Ljava/util/List;, "Ljava/util/List<+Lcom/android/camera/async/Observable<*>;>;"
    .local p1, "output":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    invoke-static {p0, p1}, Lcom/android/camera/async/ObservableCombiner;->transform(Ljava/util/List;Lcom/google/common/base/Supplier;)Lcom/android/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method
