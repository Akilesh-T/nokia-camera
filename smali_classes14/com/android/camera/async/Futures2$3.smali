.class final Lcom/android/camera/async/Futures2$3;
.super Ljava/lang/Object;
.source "Futures2.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/async/Futures2$AsyncFunction3;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.field final synthetic val$fn:Lcom/android/camera/async/Futures2$AsyncFunction3;


# direct methods
.method constructor <init>(Lcom/android/camera/async/Futures2$AsyncFunction3;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/async/Futures2$3;->val$fn:Lcom/android/camera/async/Futures2$AsyncFunction3;

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
    .line 144
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/camera/async/Futures2$3;->apply(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
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
    .line 147
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "value1":Ljava/lang/Object;, "TT1;"
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 149
    .local v1, "value2":Ljava/lang/Object;, "TT2;"
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 151
    .local v2, "value3":Ljava/lang/Object;, "TT3;"
    iget-object v3, p0, Lcom/android/camera/async/Futures2$3;->val$fn:Lcom/android/camera/async/Futures2$AsyncFunction3;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/camera/async/Futures2$AsyncFunction3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    return-object v3
.end method
