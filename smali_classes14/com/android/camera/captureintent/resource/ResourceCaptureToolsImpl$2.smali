.class Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$2;
.super Ljava/lang/Object;
.source "ResourceCaptureToolsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;->takePictureNow(Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

.field final synthetic val$resource:Lcom/android/camera/captureintent/resource/ResourceConstructed;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;Lcom/android/camera/captureintent/resource/ResourceConstructed;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$2;->this$0:Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl;

    iput-object p2, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$2;->val$resource:Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/camera/captureintent/resource/ResourceCaptureToolsImpl$2;->val$resource:Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->setShutterButtonEnabled(Z)V

    .line 387
    return-void
.end method
