.class Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnregisteredStreamProvider"
.end annotation


# instance fields
.field private final mAllocated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mBuilderProxy:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

.field private final mCaptureStream:Lcom/android/camera/one/v2/core/CaptureStream;

.field private final mTimestampQueue:Lcom/android/camera/async/BufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;)V
    .locals 2
    .param p1, "captureStream"    # Lcom/android/camera/one/v2/core/CaptureStream;
    .param p3, "builderProxy"    # Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/CaptureStream;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "timestampQueue":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;->mCaptureStream:Lcom/android/camera/one/v2/core/CaptureStream;

    .line 74
    iput-object p2, p0, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;->mTimestampQueue:Lcom/android/camera/async/BufferQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;->mAllocated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    iput-object p3, p0, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;->mBuilderProxy:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;Lcom/android/camera/one/v2/core/RequestBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/one/v2/core/CaptureStream;
    .param p2, "x1"    # Lcom/android/camera/async/BufferQueue;
    .param p3, "x2"    # Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    .param p4, "x3"    # Lcom/android/camera/one/v2/core/RequestBuilder$1;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;-><init>(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;->mTimestampQueue:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueue;->close()V

    .line 89
    return-void
.end method

.method public allocate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;->mCaptureStream:Lcom/android/camera/one/v2/core/CaptureStream;

    iget-object v2, p0, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;->mTimestampQueue:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v1, v2}, Lcom/android/camera/one/v2/core/CaptureStream;->bind(Lcom/android/camera/async/BufferQueue;)Landroid/view/Surface;

    move-result-object v0

    .line 81
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;->mBuilderProxy:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->addTarget(Landroid/view/Surface;)V

    .line 84
    :cond_0
    return-void
.end method
