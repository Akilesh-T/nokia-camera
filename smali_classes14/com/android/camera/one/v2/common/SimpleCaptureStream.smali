.class public Lcom/android/camera/one/v2/common/SimpleCaptureStream;
.super Ljava/lang/Object;
.source "SimpleCaptureStream.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/CaptureStream;


# instance fields
.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/one/v2/common/SimpleCaptureStream;->mSurface:Landroid/view/Surface;

    .line 33
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/camera/async/BufferQueue;)Landroid/view/Surface;
    .locals 1
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
    .line 39
    .local p1, "timestamps":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    invoke-interface {p1}, Lcom/android/camera/async/BufferQueue;->close()V

    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/common/SimpleCaptureStream;->mSurface:Landroid/view/Surface;

    return-object v0
.end method
