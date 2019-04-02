.class public final Lcom/android/camera/one/v2/photo/MetadataFuture;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "MetadataFuture.java"


# instance fields
.field private final mMetadata:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/MetadataFuture;->mMetadata:Lcom/google/common/util/concurrent/SettableFuture;

    .line 37
    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/MetadataFuture;->mMetadata:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/MetadataFuture;->mMetadata:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public onFailed(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onFailed(Landroid/hardware/camera2/CaptureFailure;)V

    .line 48
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/MetadataFuture;->mMetadata:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/MetadataFuture;->mMetadata:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CaptureFailure.REASON_ERROR!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
