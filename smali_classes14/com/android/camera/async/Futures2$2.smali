.class final Lcom/android/camera/async/Futures2$2;
.super Ljava/lang/Object;
.source "Futures2.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/async/Futures2$AsyncFunction2;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic val$fn:Lcom/android/camera/async/Futures2$AsyncFunction2;


# direct methods
.method constructor <init>(Lcom/android/camera/async/Futures2$AsyncFunction2;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/async/Futures2$2;->val$fn:Lcom/android/camera/async/Futures2$AsyncFunction2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/camera/async/Futures2$2;->apply(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTResult;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "value1":Ljava/lang/Object;, "TT1;"
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 105
    .local v1, "value2":Ljava/lang/Object;, "TT2;"
    iget-object v2, p0, Lcom/android/camera/async/Futures2$2;->val$fn:Lcom/android/camera/async/Futures2$AsyncFunction2;

    invoke-interface {v2, v0, v1}, Lcom/android/camera/async/Futures2$AsyncFunction2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2
.end method
