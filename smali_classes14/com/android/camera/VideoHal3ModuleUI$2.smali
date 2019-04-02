.class Lcom/android/camera/VideoHal3ModuleUI$2;
.super Ljava/lang/Object;
.source "VideoHal3ModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3ModuleUI;->loadModuleLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/VideoHal3ModuleUI;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    iget-object v2, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    invoke-static {v2, v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$402(Lcom/android/camera/VideoHal3ModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 171
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$400(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v2}, Lcom/android/camera/VideoHal3ModuleUI;->access$500(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$600(Lcom/android/camera/VideoHal3ModuleUI;)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$700(Lcom/android/camera/VideoHal3ModuleUI;)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$800(Lcom/android/camera/VideoHal3ModuleUI;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$400(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v2}, Lcom/android/camera/VideoHal3ModuleUI;->access$800(Lcom/android/camera/VideoHal3ModuleUI;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$900(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$800(Lcom/android/camera/VideoHal3ModuleUI;)I

    move-result v0

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$800(Lcom/android/camera/VideoHal3ModuleUI;)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$1000(Lcom/android/camera/VideoHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/VideoHal3ModuleUI;->access$400(Lcom/android/camera/VideoHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/VideoHal3ModuleUI;->access$1000(Lcom/android/camera/VideoHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/VideoHal3ModuleUI$2;->this$0:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/VideoHal3ModuleUI;->access$1100(Lcom/android/camera/VideoHal3ModuleUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoHal3ModuleUI;->showRecordingUI(Z)V

    .line 185
    return-void

    :cond_2
    move v0, v1

    .line 177
    goto :goto_0
.end method
