.class Lcom/android/camera/one/v2/OneCameraZslImpl$4;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V
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
    .line 375
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$4;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageMetadataChange(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/lang/Object;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
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
    .line 380
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<*>;"
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p4, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 385
    .local v0, "state":Ljava/lang/Integer;
    if-eqz p3, :cond_1

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$4;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$700(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/one/OneCamera$LensStateListener;

    move-result-object v1

    check-cast p3, Ljava/lang/Float;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$4;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v3}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$600(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/ui/motion/LinearScale;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera$LensStateListener;->onFocusDistance(FLcom/android/camera/ui/motion/LinearScale;)V

    .line 389
    :cond_1
    return-void
.end method
