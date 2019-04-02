.class Lcom/android/camera/CaptureModuleUI$2;
.super Ljava/lang/Object;
.source "CaptureModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModuleUI;->loadModuleLayout()V
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
    .line 149
    iput-object p1, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

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

    .line 152
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    invoke-static {v2, v0}, Lcom/android/camera/CaptureModuleUI;->access$402(Lcom/android/camera/CaptureModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 154
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$400(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v2}, Lcom/android/camera/CaptureModuleUI;->access$500(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 155
    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$700(Lcom/android/camera/CaptureModuleUI;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f00aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lcom/android/camera/CaptureModuleUI;->access$602(Lcom/android/camera/CaptureModuleUI;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 156
    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$700(Lcom/android/camera/CaptureModuleUI;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f00ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    invoke-static {v2, v0}, Lcom/android/camera/CaptureModuleUI;->access$802(Lcom/android/camera/CaptureModuleUI;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;

    .line 157
    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$700(Lcom/android/camera/CaptureModuleUI;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f00ac

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {v2, v0}, Lcom/android/camera/CaptureModuleUI;->access$902(Lcom/android/camera/CaptureModuleUI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 158
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$1000(Lcom/android/camera/CaptureModuleUI;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$400(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v2}, Lcom/android/camera/CaptureModuleUI;->access$1000(Lcom/android/camera/CaptureModuleUI;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$800(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v2}, Lcom/android/camera/CaptureModuleUI;->access$1000(Lcom/android/camera/CaptureModuleUI;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$1100(Lcom/android/camera/CaptureModuleUI;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$400(Lcom/android/camera/CaptureModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v2}, Lcom/android/camera/CaptureModuleUI;->access$1100(Lcom/android/camera/CaptureModuleUI;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v2}, Lcom/android/camera/CaptureModuleUI;->access$1200(Lcom/android/camera/CaptureModuleUI;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/CaptureModuleUI;->access$1300(Lcom/android/camera/CaptureModuleUI;I)V

    .line 166
    iget-object v2, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    iget-object v0, p0, Lcom/android/camera/CaptureModuleUI$2;->this$0:Lcom/android/camera/CaptureModuleUI;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUI;->access$1400(Lcom/android/camera/CaptureModuleUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/CaptureModuleUI;->setBeautyVisibility(I)V

    .line 167
    return-void

    .line 166
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
