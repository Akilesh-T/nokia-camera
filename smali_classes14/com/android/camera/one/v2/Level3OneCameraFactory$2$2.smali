.class Lcom/android/camera/one/v2/Level3OneCameraFactory$2$2;
.super Ljava/lang/Object;
.source "Level3OneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/util/Provider;


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
        "Lcom/android/camera/util/Provider",
        "<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/Level3OneCameraFactory$2;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$2;->this$1:Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$2;->get()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
