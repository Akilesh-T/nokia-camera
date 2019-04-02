.class Lcom/android/camera/video/VideoStremingTakerImpl$2;
.super Ljava/lang/Object;
.source "VideoStremingTakerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoStremingTakerImpl;->startBurst(Lcom/android/camera/burst/BurstController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

.field final synthetic val$burstController:Lcom/android/camera/burst/BurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/video/VideoStremingTakerImpl;Lcom/android/camera/burst/BurstController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/VideoStremingTakerImpl;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/video/VideoStremingTakerImpl$2;->this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

    iput-object p2, p0, Lcom/android/camera/video/VideoStremingTakerImpl$2;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/video/VideoStremingTakerImpl$2;->this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoStremingTakerImpl;->access$000(Lcom/android/camera/video/VideoStremingTakerImpl;)Lcom/android/camera/video/RenderRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/video/VideoStremingTakerImpl$2;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstController;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/video/VideoStremingTakerImpl$2;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstController;->getRecordController()Lcom/android/camera/async/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/video/VideoStremingTakerImpl$2;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v3}, Lcom/android/camera/burst/BurstController;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/video/RenderRecorder;->setRecordOutputSurface(Landroid/view/Surface;Lcom/android/camera/async/Observable;I)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/video/VideoStremingTakerImpl$2;->this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoStremingTakerImpl;->access$000(Lcom/android/camera/video/VideoStremingTakerImpl;)Lcom/android/camera/video/RenderRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/RenderRecorder;->startRecord()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/video/VideoStremingTakerImpl$2;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/BurstResultsListener;->onBurstStarted()V

    .line 86
    return-void
.end method
