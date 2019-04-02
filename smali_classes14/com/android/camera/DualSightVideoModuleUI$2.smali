.class Lcom/android/camera/DualSightVideoModuleUI$2;
.super Ljava/lang/Object;
.source "DualSightVideoModuleUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModuleUI;->loadModuleLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModuleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModuleUI;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

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

    .line 153
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    invoke-static {v2, v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$002(Lcom/android/camera/DualSightVideoModuleUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 155
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$000(Lcom/android/camera/DualSightVideoModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModuleUI;->access$100(Lcom/android/camera/DualSightVideoModuleUI;)Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/CountDownView;->setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$200(Lcom/android/camera/DualSightVideoModuleUI;)V

    .line 157
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$300(Lcom/android/camera/DualSightVideoModuleUI;)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$400(Lcom/android/camera/DualSightVideoModuleUI;)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$500(Lcom/android/camera/DualSightVideoModuleUI;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$000(Lcom/android/camera/DualSightVideoModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModuleUI;->access$500(Lcom/android/camera/DualSightVideoModuleUI;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$600(Lcom/android/camera/DualSightVideoModuleUI;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$500(Lcom/android/camera/DualSightVideoModuleUI;)I

    move-result v0

    const/16 v3, 0xb4

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$500(Lcom/android/camera/DualSightVideoModuleUI;)I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$700(Lcom/android/camera/DualSightVideoModuleUI;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModuleUI;->access$000(Lcom/android/camera/DualSightVideoModuleUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModuleUI;->access$700(Lcom/android/camera/DualSightVideoModuleUI;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModuleUI$2;->this$0:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModuleUI;->access$800(Lcom/android/camera/DualSightVideoModuleUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightVideoModuleUI;->showRecordingUI(Z)V

    .line 170
    return-void

    :cond_2
    move v0, v1

    .line 162
    goto :goto_0
.end method
