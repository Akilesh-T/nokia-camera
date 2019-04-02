.class Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;
.super Ljava/lang/Object;
.source "InitializedOneCameraFactory.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->onCameraCaptureSessionCreated(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mPictureTaker:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mManualAutoFocus:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mSceneDetector:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mFlashDetector:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mBokehResultProvider:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$mSceneRecognitionProvider:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$afStateListenable:Lcom/android/camera/async/Listenable;

    invoke-virtual {v0}, Lcom/android/camera/async/Listenable;->clear()V

    .line 318
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$lengsStateListenable:Lcom/android/camera/async/Listenable;

    invoke-virtual {v0}, Lcom/android/camera/async/Listenable;->clear()V

    .line 319
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1$4;->this$1:Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;

    iget-object v0, v0, Lcom/android/camera/one/v2/initialization/InitializedOneCameraFactory$1;->val$readyStateListenable:Lcom/android/camera/async/Listenable;

    invoke-virtual {v0}, Lcom/android/camera/async/Listenable;->clear()V

    .line 320
    return-void
.end method
