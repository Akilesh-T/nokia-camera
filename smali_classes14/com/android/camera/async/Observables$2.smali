.class final Lcom/android/camera/async/Observables$2;
.super Ljava/lang/Object;
.source "Observables.java"

# interfaces
.implements Lcom/android/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/Observables;->transform(Lcom/android/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/android/camera/async/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/google/common/base/Function;

.field final synthetic val$input:Lcom/android/camera/async/Observable;


# direct methods
.method constructor <init>(Lcom/google/common/base/Function;Lcom/android/camera/async/Observable;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/async/Observables$2;->val$function:Lcom/google/common/base/Function;

    iput-object p2, p0, Lcom/android/camera/async/Observables$2;->val$input:Lcom/android/camera/async/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 64
    iget-object v0, p0, Lcom/android/camera/async/Observables$2;->val$input:Lcom/android/camera/async/Observable;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/async/Observables$2;->val$function:Lcom/google/common/base/Function;

    iget-object v1, p0, Lcom/android/camera/async/Observables$2;->val$input:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
