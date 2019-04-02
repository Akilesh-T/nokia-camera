.class Lcom/android/camera/one/v2/Level3OneCameraFactory$2$5;
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

.field final synthetic val$pictureTakerFactory:Lcom/android/camera/one/v2/photo/PictureTakerFactory;

.field final synthetic val$srSceneSetting:Lcom/android/camera/async/Observable;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/PictureTakerFactory;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$5;->this$1:Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    iput-object p2, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$5;->val$srSceneSetting:Lcom/android/camera/async/Observable;

    iput-object p3, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$5;->val$pictureTakerFactory:Lcom/android/camera/one/v2/photo/PictureTakerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 822
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SR;->OFF:Lcom/android/camera/one/v2/photo/SceneDetector$SR;

    .line 823
    .local v0, "srMode":Lcom/android/camera/one/v2/photo/SceneDetector$SR;
    iget-object v2, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$5;->val$srSceneSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 824
    .local v1, "srValue":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 825
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 826
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SR;->OFF:Lcom/android/camera/one/v2/photo/SceneDetector$SR;

    .line 831
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$5;->val$pictureTakerFactory:Lcom/android/camera/one/v2/photo/PictureTakerFactory;

    invoke-interface {v2}, Lcom/android/camera/one/v2/photo/PictureTakerFactory;->provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/one/v2/photo/SceneDetector;->onSRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$SR;)V

    .line 832
    return-void

    .line 827
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 828
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SR;->ON:Lcom/android/camera/one/v2/photo/SceneDetector$SR;

    goto :goto_0
.end method
