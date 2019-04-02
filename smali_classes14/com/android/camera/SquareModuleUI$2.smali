.class Lcom/android/camera/SquareModuleUI$2;
.super Ljava/lang/Object;
.source "SquareModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModuleUI;->loadModuleLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModuleUI;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

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

    .line 150
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    invoke-static {v2, v0}, Lcom/android/camera/SquareModuleUI;->access$402(Lcom/android/camera/SquareModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 152
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$400(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v2}, Lcom/android/camera/SquareModuleUI;->access$500(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 153
    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$700(Lcom/android/camera/SquareModuleUI;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f00aa

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lcom/android/camera/SquareModuleUI;->access$602(Lcom/android/camera/SquareModuleUI;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 154
    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$700(Lcom/android/camera/SquareModuleUI;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f00ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    invoke-static {v2, v0}, Lcom/android/camera/SquareModuleUI;->access$802(Lcom/android/camera/SquareModuleUI;Lcom/android/camera/ui/RotateLayout;)Lcom/android/camera/ui/RotateLayout;

    .line 155
    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$700(Lcom/android/camera/SquareModuleUI;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f00ac

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {v2, v0}, Lcom/android/camera/SquareModuleUI;->access$902(Lcom/android/camera/SquareModuleUI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 156
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$1000(Lcom/android/camera/SquareModuleUI;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$400(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v2}, Lcom/android/camera/SquareModuleUI;->access$1000(Lcom/android/camera/SquareModuleUI;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$800(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v2}, Lcom/android/camera/SquareModuleUI;->access$1000(Lcom/android/camera/SquareModuleUI;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$1100(Lcom/android/camera/SquareModuleUI;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$400(Lcom/android/camera/SquareModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v2}, Lcom/android/camera/SquareModuleUI;->access$1100(Lcom/android/camera/SquareModuleUI;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v2}, Lcom/android/camera/SquareModuleUI;->access$1200(Lcom/android/camera/SquareModuleUI;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/SquareModuleUI;->access$1300(Lcom/android/camera/SquareModuleUI;I)V

    .line 164
    iget-object v2, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    iget-object v0, p0, Lcom/android/camera/SquareModuleUI$2;->this$0:Lcom/android/camera/SquareModuleUI;

    invoke-static {v0}, Lcom/android/camera/SquareModuleUI;->access$1400(Lcom/android/camera/SquareModuleUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/SquareModuleUI;->setBeautyVisibility(I)V

    .line 165
    return-void

    .line 164
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
