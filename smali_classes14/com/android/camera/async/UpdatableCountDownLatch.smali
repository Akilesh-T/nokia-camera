.class public Lcom/android/camera/async/UpdatableCountDownLatch;
.super Ljava/util/concurrent/CountDownLatch;
.source "UpdatableCountDownLatch.java"

# interfaces
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lcom/android/camera/async/Updatable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 28
    .local p0, "this":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/android/camera/async/UpdatableCountDownLatch;->countDown()V

    .line 34
    return-void
.end method
