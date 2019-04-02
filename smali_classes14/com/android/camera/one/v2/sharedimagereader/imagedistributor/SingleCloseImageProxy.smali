.class public Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;
.super Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;
.source "SingleCloseImageProxy.java"


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 2
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->close()V

    .line 44
    :cond_0
    return-void
.end method
