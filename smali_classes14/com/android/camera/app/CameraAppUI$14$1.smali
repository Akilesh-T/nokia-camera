.class Lcom/android/camera/app/CameraAppUI$14$1;
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
    .line 2531
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$14$1;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 2534
    const/4 v0, 0x1

    .line 2535
    .local v0, "FILMSTRIP_INDEX":I
    invoke-virtual {p3, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2536
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$1;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v2, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    move-object v1, p1

    check-cast v1, Lcom/android/camera/widget/FilmstripLayout;

    invoke-static {v2, v1}, Lcom/android/camera/app/CameraAppUI;->access$2402(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/widget/FilmstripLayout;)Lcom/android/camera/widget/FilmstripLayout;

    .line 2537
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$1;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v2, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    new-instance v3, Lcom/android/camera/app/FilmstripBottomPanel;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$1;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v4

    const v1, 0x7f0f010c

    .line 2538
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v3, v4, v1}, Lcom/android/camera/app/FilmstripBottomPanel;-><init>(Lcom/android/camera/app/AppController;Landroid/view/ViewGroup;)V

    .line 2537
    invoke-static {v2, v3}, Lcom/android/camera/app/CameraAppUI;->access$2502(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/app/FilmstripBottomPanel;)Lcom/android/camera/app/FilmstripBottomPanel;

    .line 2539
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$1;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$2500(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/FilmstripBottomPanel;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/app/FilmstripBottomPanel;->setShareEnabled(Z)V

    .line 2540
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$1;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    check-cast p1, Lcom/android/camera/filmstrip/FilmstripContentPanel;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v1, p1}, Lcom/android/camera/app/CameraAppUI;->access$2602(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/filmstrip/FilmstripContentPanel;)Lcom/android/camera/filmstrip/FilmstripContentPanel;

    .line 2541
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$1;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$2600(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/filmstrip/FilmstripContentPanel;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripContentPanel;->hide()V

    .line 2542
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14$1;->this$1:Lcom/android/camera/app/CameraAppUI$14;

    iget-object v1, v1, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOnFilmStripReadyListener()Lcom/android/camera/app/CameraAppUI$OnFilmStripReadyListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraAppUI$OnFilmStripReadyListener;->onFilmStripReady()V

    .line 2543
    return-void
.end method
