.class Lcom/android/camera/ManualHal3ModuleUI$1;
.super Ljava/lang/Object;
.source "ManualHal3ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualHal3ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3ModuleUI;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$300(Lcom/android/camera/ManualHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$300(Lcom/android/camera/ManualHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$100(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;->onZoomClick()V

    .line 164
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$300(Lcom/android/camera/ManualHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$300(Lcom/android/camera/ManualHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0, p1}, Lcom/android/camera/ManualHal3ModuleUI;->access$002(Lcom/android/camera/ManualHal3ModuleUI;F)F

    .line 141
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$100(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;->onZoomRatioChanged(F)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$200(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ManualHal3ModuleUI$1;->this$0:Lcom/android/camera/ManualHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ModuleUI;->access$200(Lcom/android/camera/ManualHal3ModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 145
    :cond_0
    return-void
.end method
