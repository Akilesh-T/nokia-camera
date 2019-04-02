.class Lcom/android/camera/BeautyHal3ModuleUI$3;
.super Ljava/lang/Object;
.source "BeautyHal3ModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyHal3ModuleUI;->loadModuleLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyHal3ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3ModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyHal3ModuleUI;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

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

    .line 182
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    invoke-static {v1, v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$502(Lcom/android/camera/BeautyHal3ModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 184
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$500(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3ModuleUI;->access$600(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$800(Lcom/android/camera/BeautyHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f00aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$702(Lcom/android/camera/BeautyHal3ModuleUI;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 187
    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$800(Lcom/android/camera/BeautyHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f00ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    invoke-static {v1, v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$902(Lcom/android/camera/BeautyHal3ModuleUI;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;

    .line 188
    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$800(Lcom/android/camera/BeautyHal3ModuleUI;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f00ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {v1, v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$1002(Lcom/android/camera/BeautyHal3ModuleUI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 189
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$1100(Lcom/android/camera/BeautyHal3ModuleUI;)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$1200(Lcom/android/camera/BeautyHal3ModuleUI;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$500(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3ModuleUI;->access$1200(Lcom/android/camera/BeautyHal3ModuleUI;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 193
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$900(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3ModuleUI;->access$1200(Lcom/android/camera/BeautyHal3ModuleUI;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$1300(Lcom/android/camera/BeautyHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->access$500(Lcom/android/camera/BeautyHal3ModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3ModuleUI$3;->this$0:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3ModuleUI;->access$1300(Lcom/android/camera/BeautyHal3ModuleUI;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 199
    :cond_1
    return-void
.end method
