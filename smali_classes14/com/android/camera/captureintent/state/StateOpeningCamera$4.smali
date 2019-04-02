.class Lcom/android/camera/captureintent/state/StateOpeningCamera$4;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateOpeningCamera;->onEnter()Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

.field final synthetic val$camcorderProfile:Landroid/media/CamcorderProfile;

.field final synthetic val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

.field final synthetic val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateOpeningCamera;Lcom/android/camera/async/Lifetime;Lcom/android/camera/video/PersistentInputSurface;Landroid/media/CamcorderProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateOpeningCamera;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    iput-object p4, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 375
    :cond_0
    return-void
.end method

.method public onCameraOpened(Lcom/android/camera/one/OneCamera;)V
    .locals 5
    .param p1, "camera"    # Lcom/android/camera/one/OneCamera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$persistentInputSurface:Lcom/android/camera/video/PersistentInputSurface;

    iget-object v4, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$camcorderProfile:Landroid/media/CamcorderProfile;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/camera/captureintent/event/EventOnOpenCameraSucceeded;-><init>(Lcom/android/camera/one/OneCamera;Lcom/android/camera/async/Lifetime;Lcom/android/camera/video/PersistentInputSurface;Landroid/media/CamcorderProfile;)V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 380
    return-void
.end method

.method public onFailure()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->val$persistentInputSurfaceLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateOpeningCamera$4;->this$0:Lcom/android/camera/captureintent/state/StateOpeningCamera;

    invoke-virtual {v0}, Lcom/android/camera/captureintent/state/StateOpeningCamera;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;

    invoke-direct {v1}, Lcom/android/camera/captureintent/event/EventOnOpenCameraFailed;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 367
    return-void
.end method
