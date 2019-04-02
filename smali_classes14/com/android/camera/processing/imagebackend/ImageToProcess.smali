.class public Lcom/android/camera/processing/imagebackend/ImageToProcess;
.super Ljava/lang/Object;
.source "ImageToProcess.java"


# instance fields
.field public final cameraType:Lcom/android/camera/one/CameraType;

.field public final crop:Landroid/graphics/Rect;

.field public final dualSightCamType:Lcom/android/camera/one/DualSightCamType;

.field public final index:I

.field public final mImageName:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final metadata:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field public final proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

.field public final rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field public final timestamp:J


# direct methods
.method public constructor <init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "index"    # I
    .param p4, "proxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p5, "imageRotation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p7, "crop"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/CameraType;",
            "Lcom/android/camera/one/DualSightCamType;",
            "I",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/android/camera/app/OrientationManager$DeviceOrientation;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 69
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    .line 70
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 71
    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 72
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->mImageName:Lcom/google/common/base/Optional;

    .line 73
    if-eqz p7, :cond_1

    .end local p7    # "crop":Landroid/graphics/Rect;
    :goto_1
    iput-object p7, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    .line 74
    iput p3, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->index:I

    .line 75
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->cameraType:Lcom/android/camera/one/CameraType;

    .line 76
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    .line 77
    return-void

    .line 69
    .restart local p7    # "crop":Landroid/graphics/Rect;
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 73
    :cond_1
    new-instance p7, Landroid/graphics/Rect;

    .end local p7    # "crop":Landroid/graphics/Rect;
    invoke-interface {p4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface {p4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v1

    invoke-direct {p7, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 4
    .param p1, "proxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "imageRotation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/android/camera/app/OrientationManager$DeviceOrientation;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const/4 v3, 0x0

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "proxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "imageRotation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p4, "crop"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/android/camera/app/OrientationManager$DeviceOrientation;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 56
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    .line 57
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 58
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 59
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->mImageName:Lcom/google/common/base/Optional;

    .line 60
    if-eqz p4, :cond_1

    .end local p4    # "crop":Landroid/graphics/Rect;
    :goto_1
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->index:I

    .line 62
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->cameraType:Lcom/android/camera/one/CameraType;

    .line 63
    sget-object v0, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    .line 64
    return-void

    .line 56
    .restart local p4    # "crop":Landroid/graphics/Rect;
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 60
    :cond_1
    new-instance p4, Landroid/graphics/Rect;

    .end local p4    # "crop":Landroid/graphics/Rect;
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v1

    invoke-direct {p4, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "proxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "imageRotation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p5, "crop"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/android/camera/app/OrientationManager$DeviceOrientation;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p4, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 82
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    .line 83
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 84
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 85
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->mImageName:Lcom/google/common/base/Optional;

    .line 86
    if-eqz p5, :cond_1

    .end local p5    # "crop":Landroid/graphics/Rect;
    :goto_1
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->index:I

    .line 88
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->cameraType:Lcom/android/camera/one/CameraType;

    .line 89
    sget-object v0, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    .line 90
    return-void

    .line 82
    .restart local p5    # "crop":Landroid/graphics/Rect;
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    new-instance p5, Landroid/graphics/Rect;

    .end local p5    # "crop":Landroid/graphics/Rect;
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v1

    invoke-direct {p5, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1
.end method
