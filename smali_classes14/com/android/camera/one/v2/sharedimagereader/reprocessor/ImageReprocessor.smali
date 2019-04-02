.class public interface abstract Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
.super Ljava/lang/Object;
.source "ImageReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;
    }
.end annotation


# virtual methods
.method public abstract getAvailableCount()I
.end method

.method public abstract tryReprocessImage(Lcom/android/camera/one/v2/core/FrameServer$Session;Ljava/util/Set;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZLcom/android/camera/stats/profiler/Profile;)Z
    .param p1    # Lcom/android/camera/one/v2/core/FrameServer$Session;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
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
    .param p6    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
.end method
