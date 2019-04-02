.class final Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3;
.super Ljava/lang/Object;
.source "Futures2.java"

# interfaces
.implements Lcom/android/camera/async/Futures2$AsyncFunction3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/async/Futures2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmediateAsyncFunction3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Futures2$AsyncFunction3",
        "<TT1;TT2;TT3;TTResult;>;"
    }
.end annotation


# instance fields
.field private final mFn:Lcom/android/camera/async/Futures2$Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Futures2$Function3",
            "<TT1;TT2;TT3;TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Futures2$Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Futures2$Function3",
            "<TT1;TT2;TT3;TTResult;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3;, "Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3<TT1;TT2;TT3;TTResult;>;"
    .local p1, "fn":Lcom/android/camera/async/Futures2$Function3;, "Lcom/android/camera/async/Futures2$Function3<TT1;TT2;TT3;TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3;->mFn:Lcom/android/camera/async/Futures2$Function3;

    .line 198
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;)",
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
    .line 202
    .local p0, "this":Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3;, "Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3<TT1;TT2;TT3;TTResult;>;"
    .local p1, "value1":Ljava/lang/Object;, "TT1;"
    .local p2, "value2":Ljava/lang/Object;, "TT2;"
    .local p3, "value3":Ljava/lang/Object;, "TT3;"
    iget-object v0, p0, Lcom/android/camera/async/Futures2$ImmediateAsyncFunction3;->mFn:Lcom/android/camera/async/Futures2$Function3;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/async/Futures2$Function3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
