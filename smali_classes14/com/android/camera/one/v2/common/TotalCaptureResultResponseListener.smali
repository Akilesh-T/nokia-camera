.class public Lcom/android/camera/one/v2/common/TotalCaptureResultResponseListener;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "TotalCaptureResultResponseListener.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mResults:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Updatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "results":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/one/v2/common/TotalCaptureResultResponseListener;->mResults:Lcom/android/camera/async/Updatable;

    .line 39
    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/one/v2/common/TotalCaptureResultResponseListener;->mResults:Lcom/android/camera/async/Updatable;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
