.class final Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2;
.super Ljava/lang/Object;
.source "Futures2.java"

# interfaces
.implements Lcom/android/camera/async/Futures2$AsyncFunction2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/async/Futures2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmediateAsyncFunction2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Futures2$AsyncFunction2",
        "<TT1;TT2;TTResult;>;"
    }
.end annotation


# instance fields
.field private final mFn:Lcom/android/camera/async/Futures2$Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Futures2$Function2",
            "<TT1;TT2;TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Futures2$Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Futures2$Function2",
            "<TT1;TT2;TTResult;>;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2;, "Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2<TT1;TT2;TTResult;>;"
    .local p1, "fn":Lcom/android/camera/async/Futures2$Function2;, "Lcom/android/camera/async/Futures2$Function2<TT1;TT2;TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2;->mFn:Lcom/android/camera/async/Futures2$Function2;

    .line 180
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)",
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
    .line 184
    .local p0, "this":Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2;, "Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2<TT1;TT2;TTResult;>;"
    .local p1, "value1":Ljava/lang/Object;, "TT1;"
    .local p2, "value2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lcom/android/camera/async/Futures2$ImmediateAsyncFunction2;->mFn:Lcom/android/camera/async/Futures2$Function2;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/async/Futures2$Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
