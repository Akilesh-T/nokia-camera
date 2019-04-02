.class Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;
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

.field final synthetic val$burstFacade:Lcom/android/camera/burst/BurstFacade;

.field final synthetic val$burstTaker:Lcom/android/camera/burst/BurstTaker;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ZslOneCameraFactory$2;Lcom/android/camera/burst/BurstTaker;Lcom/android/camera/burst/BurstFacade;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/ZslOneCameraFactory$2;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;->this$1:Lcom/android/camera/one/v2/ZslOneCameraFactory$2;

    iput-object p2, p0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;->val$burstTaker:Lcom/android/camera/burst/BurstTaker;

    iput-object p3, p0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;->this$1:Lcom/android/camera/one/v2/ZslOneCameraFactory$2;

    iget-object v0, v0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2;->val$mainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6$1;-><init>(Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 880
    iget-object v0, p0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/burst/BurstFacade;->setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V

    .line 881
    return-void
.end method
