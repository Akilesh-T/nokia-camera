.class Lcom/android/camera/one/v2/OneCameraZslImpl$6;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$6;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public satisfiesConstraint(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 524
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 525
    .local v0, "tag":Ljava/lang/Object;
    sget-object v1, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;->EXPLICIT_CAPTURE:Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
