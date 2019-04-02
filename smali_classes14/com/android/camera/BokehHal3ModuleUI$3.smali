.class Lcom/android/camera/BokehHal3ModuleUI$3;
.super Ljava/lang/Object;
.source "BokehHal3ModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehHal3ModuleUI;->loadModuleLayout(Lcom/android/camera/one/OneCamera$Facing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3ModuleUI;

.field final synthetic val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3ModuleUI;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    iput-object p2, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

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
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    invoke-static {v1, v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$502(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 212
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$500(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BokehHal3ModuleUI;->access$600(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 214
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$800(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f00af

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$702(Lcom/android/camera/BokehHal3ModuleUI;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 215
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$800(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f00b0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    invoke-static {v1, v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$902(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;

    .line 216
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$800(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f00b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {v1, v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$1002(Lcom/android/camera/BokehHal3ModuleUI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 217
    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$800(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f00b1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$1102(Lcom/android/camera/BokehHal3ModuleUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 218
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$1100(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v2, :cond_3

    const v0, 0x7f020262

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->val$cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0, v1}, Lcom/android/camera/BokehHal3ModuleUI;->access$1200(Lcom/android/camera/BokehHal3ModuleUI;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->setControlBarVisibility()V

    .line 223
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqZeissBokeh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$1300(Lcom/android/camera/BokehHal3ModuleUI;)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->initZeissBokehOptions()V

    .line 226
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$1400(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BokehHal3ModuleUI$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3ModuleUI$3$1;-><init>(Lcom/android/camera/BokehHal3ModuleUI$3;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setOnPreviewTouchedListener(Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$1500(Lcom/android/camera/BokehHal3ModuleUI;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$500(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BokehHal3ModuleUI;->access$1500(Lcom/android/camera/BokehHal3ModuleUI;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$900(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BokehHal3ModuleUI;->access$1500(Lcom/android/camera/BokehHal3ModuleUI;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$1600(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BokehHal3ModuleUI;->access$500(Lcom/android/camera/BokehHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3ModuleUI$3;->this$0:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BokehHal3ModuleUI;->access$1600(Lcom/android/camera/BokehHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 242
    :cond_2
    return-void

    .line 218
    :cond_3
    const v0, 0x7f02007e

    goto :goto_0
.end method
