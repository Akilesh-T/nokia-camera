.class Lcom/android/camera/widget/FilmstripView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/FilmstripView;->init(Lcom/android/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/FilmstripView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/FilmstripView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/FilmstripView;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/camera/widget/FilmstripView$1;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 642
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 644
    const-class v0, Lcom/android/camera/widget/FilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 645
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 646
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 647
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 648
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 652
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$1;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->isScrolling()Z

    move-result v3

    if-nez v3, :cond_0

    .line 653
    sparse-switch p2, :sswitch_data_0

    .line 675
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 655
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$1;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToNextItem()Z

    goto :goto_0

    .line 659
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$1;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView;->access$500(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/widget/FilmstripView$FilmstripControllerImpl;->goToPreviousItem()Z

    move-result v1

    .line 660
    .local v1, "wentToPrevious":Z
    if-nez v1, :cond_1

    .line 662
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$1;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView;->access$600(Lcom/android/camera/widget/FilmstripView;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->hideFilmstrip()V

    goto :goto_0

    .line 669
    .end local v1    # "wentToPrevious":Z
    :sswitch_2
    iget-object v3, p0, Lcom/android/camera/widget/FilmstripView$1;->this$0:Lcom/android/camera/widget/FilmstripView;

    invoke-static {v3}, Lcom/android/camera/widget/FilmstripView;->access$700(Lcom/android/camera/widget/FilmstripView;)[Lcom/android/camera/widget/FilmstripView$ViewItem;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v0, v3, v4

    .line 670
    .local v0, "currentItem":Lcom/android/camera/widget/FilmstripView$ViewItem;
    invoke-static {v0}, Lcom/android/camera/widget/FilmstripView$ViewItem;->access$800(Lcom/android/camera/widget/FilmstripView$ViewItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 653
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
