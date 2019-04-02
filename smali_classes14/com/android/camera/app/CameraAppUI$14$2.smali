.class Lcom/android/camera/app/CameraAppUI$14$2;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/app/CameraAppUI$14;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/app/CameraAppUI$14;

    .prologue
    .line 2546
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$14$2;->this$1:Lcom/android/camera/app/CameraAppUI$14;

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
    .line 2549
    const/4 v0, 0x5

    .line 2550
    .local v0, "GRID_LINE_INDEX":I
    const/4 v1, 0x5

    invoke-virtual {p3, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2551
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$2;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    check-cast p1, Lcom/android/camera/ui/GridLines;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v1, p1}, Lcom/android/camera/app/CameraAppUI;->access$2702(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/ui/GridLines;)Lcom/android/camera/ui/GridLines;

    .line 2552
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$2;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/TextureViewHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI$14$2;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v2, v2, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/app/CameraAppUI;->access$2700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/GridLines;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/TextureViewHelper;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2553
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$2;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$2700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/GridLines;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI$14$2;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v2, v2, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/app/CameraAppUI;->access$500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/TextureViewHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/TextureViewHelper;->getPreviewArea()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GridLines;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 2554
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$2;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2555
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$2;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->showGridLines()V

    .line 2559
    :goto_0
    return-void

    .line 2557
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$2;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideGridLines()V

    goto :goto_0
.end method
