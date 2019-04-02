.class Lcom/android/camera/ManualHal3ProModuleUI$2;
.super Ljava/lang/Object;
.source "ManualHal3ProModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualHal3ProModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3ProModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3ProModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3ProModuleUI;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$400(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$400(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$200(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;->onZoomClick()V

    .line 208
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$400(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$400(Lcom/android/camera/ManualHal3ProModuleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0, p1}, Lcom/android/camera/ManualHal3ProModuleUI;->access$102(Lcom/android/camera/ManualHal3ProModuleUI;F)F

    .line 185
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$200(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;->onZoomRatioChanged(F)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$300(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/camera/ManualHal3ProModuleUI$2;->this$0:Lcom/android/camera/ManualHal3ProModuleUI;

    invoke-static {v0}, Lcom/android/camera/ManualHal3ProModuleUI;->access$300(Lcom/android/camera/ManualHal3ProModuleUI;)Lcom/android/camera/face/Camera2FaceConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/face/Camera2FaceConverter;->setZoomValue(F)V

    .line 189
    :cond_0
    return-void
.end method
