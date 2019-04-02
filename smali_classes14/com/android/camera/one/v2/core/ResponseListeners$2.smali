.class final Lcom/android/camera/one/v2/core/ResponseListeners$2;
.super Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;
.source "ResponseListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/camera/async/Updatable;


# direct methods
.method constructor <init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;)V
    .locals 1

    .prologue
    .line 83
    .local p1, "delegate":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;>;"
    iput-object p2, p0, Lcom/android/camera/one/v2/core/ResponseListeners$2;->val$callback:Lcom/android/camera/async/Updatable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/one/v2/core/ResponseListeners$ResponseListenerBase;-><init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/core/ResponseListeners$1;)V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListeners$2;->val$callback:Lcom/android/camera/async/Updatable;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public onProgressed(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListeners$2;->val$callback:Lcom/android/camera/async/Updatable;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;

    invoke-direct {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v0, v1}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
