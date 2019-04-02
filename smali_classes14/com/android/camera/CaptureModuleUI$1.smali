.class Lcom/android/camera/CaptureModuleUI$1;
.super Ljava/lang/Object;
.source "CaptureModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModuleUI;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$300(Lcom/android/camera/CaptureModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$300(Lcom/android/camera/CaptureModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$100(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;->onZoomClick()V

    .line 118
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$300(Lcom/android/camera/CaptureModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$300(Lcom/android/camera/CaptureModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0, p1}, Lcom/android/camera/CaptureModuleUI;->access$002(Lcom/android/camera/CaptureModuleUI;F)F

    .line 95
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$100(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/CaptureModuleUI$CaptureModuleUIListener;->onZoomRatioChanged(F)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$200(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$1;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$200(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 99
    :cond_0
    return-void
.end method
