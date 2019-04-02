.class public Lcom/android/camera/one/v2/common/VideoCaptureStream;
.super Ljava/lang/Object;
.source "VideoCaptureStream.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/CaptureStream;


# instance fields
.field private final mRecordState:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Lcom/android/camera/async/Observable;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "recordState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/one/v2/common/VideoCaptureStream;->mSurface:Landroid/view/Surface;

    .line 36
    iput-object p2, p0, Lcom/android/camera/one/v2/common/VideoCaptureStream;->mRecordState:Lcom/android/camera/async/Observable;

    .line 37
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/camera/async/BufferQueue;)Landroid/view/Surface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/view/Surface;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "timestamps":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    invoke-interface {p1}, Lcom/android/camera/async/BufferQueue;->close()V

    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/common/VideoCaptureStream;->mRecordState:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/common/VideoCaptureStream;->mSurface:Landroid/view/Surface;

    .line 50
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v0, "persist.camera.chs_err_1"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/common/VideoCaptureStream;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
