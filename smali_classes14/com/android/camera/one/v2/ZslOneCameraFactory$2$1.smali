.class Lcom/android/camera/one/v2/ZslOneCameraFactory$2$1;
.super Ljava/lang/Object;
.source "ZslOneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ZslOneCameraFactory$2;->startCamera(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/ZslOneCameraFactory$2;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ZslOneCameraFactory$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/ZslOneCameraFactory$2;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$1;->this$1:Lcom/android/camera/one/v2/ZslOneCameraFactory$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$1;->this$1:Lcom/android/camera/one/v2/ZslOneCameraFactory$2;

    iget-object v0, v0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2;->this$0:Lcom/android/camera/one/v2/ZslOneCameraFactory;

    invoke-static {v0}, Lcom/android/camera/one/v2/ZslOneCameraFactory;->access$400(Lcom/android/camera/one/v2/ZslOneCameraFactory;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v0

    sget v1, Lcom/android/camera/one/v2/OneCameraFactory;->DEFAULT_RING_BUFFER_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 400
    return-void
.end method
