.class Lcom/android/camera/PanoramaHal3ModuleUI$2;
.super Ljava/lang/Object;
.source "PanoramaHal3ModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaHal3ModuleUI;->loadModuleLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaHal3ModuleUI;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->access$000(Lcom/android/camera/PanoramaHal3ModuleUI;)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->access$100(Lcom/android/camera/PanoramaHal3ModuleUI;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->access$200(Lcom/android/camera/PanoramaHal3ModuleUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->access$100(Lcom/android/camera/PanoramaHal3ModuleUI;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->access$300(Lcom/android/camera/PanoramaHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->access$400(Lcom/android/camera/PanoramaHal3ModuleUI;)Lcom/android/camera/ui/PanoramaPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->access$300(Lcom/android/camera/PanoramaHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PanoramaPreview;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->access$500(Lcom/android/camera/PanoramaHal3ModuleUI;)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3ModuleUI$2;->this$0:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->access$600(Lcom/android/camera/PanoramaHal3ModuleUI;)Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PanoramaHal3ModuleUI;->showPanoRecordingUI(ZZ)V

    .line 157
    return-void
.end method
