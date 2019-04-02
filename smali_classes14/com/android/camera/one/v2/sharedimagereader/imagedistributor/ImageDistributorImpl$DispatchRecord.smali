.class Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;
.super Ljava/lang/Object;
.source "ImageDistributorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DispatchRecord"
.end annotation


# instance fields
.field public final imageStream:Lcom/android/camera/async/BufferQueueController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field public final timestampBufferQueue:Lcom/android/camera/async/BufferQueue;
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
.method private constructor <init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "timestampBufferQueue":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    .local p2, "imageStream":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    .line 59
    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;->imageStream:Lcom/android/camera/async/BufferQueueController;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/async/BufferQueue;
    .param p2, "x1"    # Lcom/android/camera/async/BufferQueueController;
    .param p3, "x2"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$1;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;-><init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;)V

    return-void
.end method
