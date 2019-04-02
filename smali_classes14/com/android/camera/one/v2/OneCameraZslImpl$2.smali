.class Lcom/android/camera/one/v2/OneCameraZslImpl$2;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/util/Size;)V
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
    .line 331
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadyStateChange(Z)V
    .locals 2
    .param p1, "capturePossible"    # Z

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$2;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$200(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/util/ListenerCombiner;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->CAPTURE_MANAGER_READY:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/util/ListenerCombiner;->setInput(Ljava/lang/Enum;Z)Z

    .line 336
    return-void
.end method
