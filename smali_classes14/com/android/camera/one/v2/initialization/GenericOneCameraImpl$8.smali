.class Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$8;
.super Ljava/lang/Object;
.source "GenericOneCameraImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

.field final synthetic val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$8;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$8;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$8;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onSetupFailed()V

    .line 324
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 315
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$8;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$8;->val$listener:Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onReadyForCapture()V

    .line 319
    return-void
.end method
