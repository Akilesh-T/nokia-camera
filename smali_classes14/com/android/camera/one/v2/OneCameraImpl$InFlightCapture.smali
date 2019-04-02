.class Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InFlightCapture"
.end annotation


# instance fields
.field image:Landroid/media/Image;

.field final parameters:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

.field final session:Lcom/android/camera/session/CaptureSession;

.field totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "parameters"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->parameters:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 108
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->session:Lcom/android/camera/session/CaptureSession;

    .line 109
    return-void
.end method


# virtual methods
.method isCaptureComplete()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->image:Landroid/media/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;
    .locals 0
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 120
    return-object p0
.end method

.method public setImage(Landroid/media/Image;)Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;
    .locals 0
    .param p1, "capturedImage"    # Landroid/media/Image;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->image:Landroid/media/Image;

    .line 114
    return-object p0
.end method
