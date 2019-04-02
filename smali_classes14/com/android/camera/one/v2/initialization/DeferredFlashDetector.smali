.class Lcom/android/camera/one/v2/initialization/DeferredFlashDetector;
.super Ljava/lang/Object;
.source "DeferredFlashDetector.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/FlashDetector;


# instance fields
.field private final mFlashDetectorFuture:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/FlashDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/ConcurrentState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/FlashDetector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "flashDetectorFuture":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/FlashDetector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/DeferredFlashDetector;->mFlashDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    .line 35
    return-void
.end method


# virtual methods
.method public isFlashRequired()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/DeferredFlashDetector;->mFlashDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 41
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/DeferredFlashDetector;->mFlashDetectorFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 42
    .local v1, "flashDetector":Lcom/android/camera/one/v2/photo/FlashDetector;
    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 47
    .end local v1    # "flashDetector":Lcom/android/camera/one/v2/photo/FlashDetector;
    :cond_0
    :goto_0
    return v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method
