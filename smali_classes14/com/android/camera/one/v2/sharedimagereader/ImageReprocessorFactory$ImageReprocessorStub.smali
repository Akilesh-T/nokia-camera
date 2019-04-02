.class public Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory$ImageReprocessorStub;
.super Ljava/lang/Object;
.source "ImageReprocessorFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/sharedimagereader/ImageReprocessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageReprocessorStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableCount()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public tryReprocessImage(Lcom/android/camera/one/v2/core/FrameServer$Session;Ljava/util/Set;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZLcom/android/camera/stats/profiler/Profile;)Z
    .locals 1
    .param p1, "session"    # Lcom/android/camera/one/v2/core/FrameServer$Session;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/common/base/Optional;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "needImageProcess"    # Z
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer$Session;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;",
            ">;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
            "Z",
            "Lcom/android/camera/stats/profiler/Profile;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "processingFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;>;"
    .local p4, "metadataFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p5, "imgName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method
