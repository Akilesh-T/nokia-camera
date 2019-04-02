.class Lcom/android/camera/one/v2/Level3OneCameraFactory$2$4;
.super Ljava/lang/Object;
.source "Level3OneCameraFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/Level3OneCameraFactory$2;->startCamera(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

.field final synthetic val$hdrSceneSetting:Lcom/android/camera/async/Observable;

.field final synthetic val$pictureTakerFactory:Lcom/android/camera/one/v2/photo/PictureTakerFactory;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/PictureTakerFactory;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$4;->this$1:Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    iput-object p2, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$4;->val$hdrSceneSetting:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$4;->val$pictureTakerFactory:Lcom/android/camera/one/v2/photo/PictureTakerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 805
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->OFF:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    .line 806
    .local v0, "hdrMode":Lcom/android/camera/one/v2/photo/SceneDetector$HDR;
    iget-object v2, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$4;->val$hdrSceneSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 807
    .local v1, "hdrValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 808
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->ON:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    .line 814
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$4;->val$pictureTakerFactory:Lcom/android/camera/one/v2/photo/PictureTakerFactory;

    invoke-interface {v2}, Lcom/android/camera/one/v2/photo/PictureTakerFactory;->provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/one/v2/photo/SceneDetector;->onHDRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$HDR;)V

    .line 815
    return-void

    .line 810
    :cond_1
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    goto :goto_0
.end method
