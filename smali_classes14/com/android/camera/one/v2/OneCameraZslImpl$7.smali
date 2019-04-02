.class Lcom/android/camera/one/v2/OneCameraZslImpl$7;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;


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

.field final synthetic val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$7;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageMetadataChange(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/lang/Object;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "result"    # Landroid/hardware/camera2/CaptureResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/hardware/camera2/CaptureResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<*>;"
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "AE State Changed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$800(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/one/v2/ImageCaptureManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/camera/one/v2/ImageCaptureManager;->removeMetadataChangeListener(Landroid/hardware/camera2/CaptureResult$Key;Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;)Z

    .line 572
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$7;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$900(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)Z

    .line 575
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$7;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$7;->val$params:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1000(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V

    .line 577
    :cond_0
    return-void
.end method
