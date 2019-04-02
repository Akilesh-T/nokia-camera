.class Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$5;
.super Ljava/lang/Object;
.source "SimpleOneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;->startCamera(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/camera/one/v2/SimpleOneCameraFactory$2$5;->this$1:Lcom/android/camera/one/v2/SimpleOneCameraFactory$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAWBGains()[F
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getSCResult()Lcom/android/camera/scenerecognition/SceneClassifyLabel;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 623
    new-instance v0, Lcom/android/camera/scenerecognition/SceneClassifyLabel;

    new-array v1, v2, [I

    aput v4, v1, v4

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/camera/scenerecognition/SceneClassifyLabel;-><init>(I[I[F)V

    return-object v0
.end method

.method public setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    .prologue
    .line 629
    return-void
.end method
