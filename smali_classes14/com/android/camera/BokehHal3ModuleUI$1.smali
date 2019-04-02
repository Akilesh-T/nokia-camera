.class Lcom/android/camera/BokehHal3ModuleUI$1;
.super Ljava/lang/Object;
.source "BokehHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehHal3ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$300(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$300(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$100(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;->onZoomClick()V

    .line 144
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$300(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$300(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0, p1}, Lcom/android/camera/BokehHal3ModuleUI;->access$002(Lcom/android/camera/BokehHal3ModuleUI;F)F

    .line 121
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$100(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;->onZoomRatioChanged(F)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$200(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$1;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$200(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 125
    :cond_0
    return-void
.end method
