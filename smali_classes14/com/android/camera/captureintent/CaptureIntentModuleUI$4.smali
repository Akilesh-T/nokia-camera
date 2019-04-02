.class Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;
.super Ljava/lang/Object;
.source "CaptureIntentModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/captureintent/CaptureIntentModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1700(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1700(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1400(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;->onZoomClick()V

    .line 462
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1700(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1700(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0, p1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1502(Lcom/android/camera/captureintent/CaptureIntentModuleUI;F)F

    .line 439
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1400(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/captureintent/CaptureIntentModuleUI$Listener;->onZoomRatioChanged(F)V

    .line 440
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1600(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentModuleUI$4;->this$0:Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->access$1600(Lcom/android/camera/captureintent/CaptureIntentModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 443
    :cond_0
    return-void
.end method
