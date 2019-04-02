.class Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;
.super Ljava/lang/Object;
.source "Level3OneCameraFactory.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->startCamera(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

.field final synthetic val$availableImageCount:Lcom/android/camera/async/Observable;

.field final synthetic val$frameServerAvailability:Lcom/android/camera/async/Observable;

.field final synthetic val$slaveAvailableImageCount:Lcom/android/camera/async/Observable;

.field final synthetic val$slaveFrameServerAvailability:Lcom/android/camera/async/Observable;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->this$1:Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    iput-object p2, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->val$availableImageCount:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->val$slaveAvailableImageCount:Lcom/android/camera/async/Observable;

    iput-object p4, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->val$frameServerAvailability:Lcom/android/camera/async/Observable;

    iput-object p5, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->val$slaveFrameServerAvailability:Lcom/android/camera/async/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 963
    iget-object v4, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->val$availableImageCount:Lcom/android/camera/async/Observable;

    invoke-interface {v4}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v5, :cond_0

    move v0, v5

    .line 964
    .local v0, "atLeastOneImageAvailable":Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->val$slaveAvailableImageCount:Lcom/android/camera/async/Observable;

    invoke-interface {v4}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v5, :cond_1

    move v1, v5

    .line 965
    .local v1, "atLeastOneSlaveImageAvailable":Z
    :goto_1
    iget-object v4, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->val$frameServerAvailability:Lcom/android/camera/async/Observable;

    invoke-interface {v4}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 966
    .local v2, "frameServerAvailable":Z
    iget-object v4, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->val$slaveFrameServerAvailability:Lcom/android/camera/async/Observable;

    invoke-interface {v4}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 967
    .local v3, "slaveframeServerAvailable":Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .end local v0    # "atLeastOneImageAvailable":Z
    .end local v1    # "atLeastOneSlaveImageAvailable":Z
    .end local v2    # "frameServerAvailable":Z
    .end local v3    # "slaveframeServerAvailable":Z
    :cond_0
    move v0, v6

    .line 963
    goto :goto_0

    .restart local v0    # "atLeastOneImageAvailable":Z
    :cond_1
    move v1, v6

    .line 964
    goto :goto_1

    .restart local v1    # "atLeastOneSlaveImageAvailable":Z
    .restart local v2    # "frameServerAvailable":Z
    .restart local v3    # "slaveframeServerAvailable":Z
    :cond_2
    move v5, v6

    .line 967
    goto :goto_2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$8;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
