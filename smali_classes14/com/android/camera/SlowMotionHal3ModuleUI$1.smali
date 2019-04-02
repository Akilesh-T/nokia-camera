.class Lcom/android/camera/SlowMotionHal3ModuleUI$1;
.super Ljava/lang/Object;
.source "SlowMotionHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowMotionHal3ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowMotionHal3ModuleUI;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->access$300(Lcom/android/camera/SlowMotionHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->access$300(Lcom/android/camera/SlowMotionHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->access$100(Lcom/android/camera/SlowMotionHal3ModuleUI;)Lcom/android/camera/SlowMotionHal3ModuleUI$VideoModuleUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI$VideoModuleUIListener;->onZoomClick()V

    .line 115
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->access$300(Lcom/android/camera/SlowMotionHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->access$300(Lcom/android/camera/SlowMotionHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-static {v0, p1}, Lcom/android/camera/SlowMotionHal3ModuleUI;->access$002(Lcom/android/camera/SlowMotionHal3ModuleUI;F)F

    .line 92
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->access$100(Lcom/android/camera/SlowMotionHal3ModuleUI;)Lcom/android/camera/SlowMotionHal3ModuleUI$VideoModuleUIListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/SlowMotionHal3ModuleUI$VideoModuleUIListener;->onZoomRatioChanged(F)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->access$200(Lcom/android/camera/SlowMotionHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3ModuleUI$1;->this$0:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->access$200(Lcom/android/camera/SlowMotionHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 96
    :cond_0
    return-void
.end method
