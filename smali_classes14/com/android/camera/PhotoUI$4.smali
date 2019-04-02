.class Lcom/android/camera/PhotoUI$4;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoUI;->loadModuleLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

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
    .line 375
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 376
    iget-object v1, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CountDownView;

    invoke-static {v1, v0}, Lcom/android/camera/PhotoUI;->access$402(Lcom/android/camera/PhotoUI;Lcom/android/camera/ui/CountDownView;)Lcom/android/camera/ui/CountDownView;

    .line 377
    iget-object v0, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/PhotoController;->getOnCountDownStatusListener()Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 378
    iget-object v0, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$500(Lcom/android/camera/PhotoUI;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$400(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$500(Lcom/android/camera/PhotoUI;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CountDownView;->setOrientation(IZ)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$600(Lcom/android/camera/PhotoUI;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$400(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/CountDownView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$600(Lcom/android/camera/PhotoUI;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CountDownView;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/android/camera/PhotoUI$4;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$700(Lcom/android/camera/PhotoUI;)V

    .line 388
    :cond_2
    return-void
.end method
