.class Lcom/android/camera/one/v2/Level3OneCameraFactory$2$3;
.super Ljava/lang/Object;
.source "Level3OneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/BokehResultProvider;


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


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/Level3OneCameraFactory$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/camera/one/v2/Level3OneCameraFactory$2$3;->this$1:Lcom/android/camera/one/v2/Level3OneCameraFactory$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBokehResult()I
    .locals 1

    .prologue
    .line 580
    const/4 v0, -0x2

    return v0
.end method

.method public setBokehListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/v2/photo/BokehResultListener;

    .prologue
    .line 586
    return-void
.end method
