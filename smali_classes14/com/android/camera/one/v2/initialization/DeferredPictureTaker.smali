.class Lcom/android/camera/one/v2/initialization/DeferredPictureTaker;
.super Ljava/lang/Object;
.source "DeferredPictureTaker.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/PictureTaker;


# instance fields
.field private final mPictureTakerFuture:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/PictureTaker;",
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
            "Lcom/android/camera/one/v2/photo/PictureTaker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "pictureTakerFuture":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/PictureTaker;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/DeferredPictureTaker;->mPictureTakerFuture:Lcom/android/camera/async/ConcurrentState;

    .line 37
    return-void
.end method


# virtual methods
.method public takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 3
    .param p1, "params"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 41
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredPictureTaker;->mPictureTakerFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredPictureTaker;->mPictureTakerFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/PictureTaker;

    .line 44
    .local v1, "taker":Lcom/android/camera/one/v2/photo/PictureTaker;
    invoke-interface {v1, p1, p2}, Lcom/android/camera/one/v2/photo/PictureTaker;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "taker":Lcom/android/camera/one/v2/photo/PictureTaker;
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method
