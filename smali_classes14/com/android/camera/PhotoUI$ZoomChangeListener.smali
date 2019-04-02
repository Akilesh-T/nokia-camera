.class Lcom/android/camera/PhotoUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoUI;
    .param p2, "x1"    # Lcom/android/camera/PhotoUI$1;

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$900(Lcom/android/camera/PhotoUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$900(Lcom/android/camera/PhotoUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 482
    :cond_0
    return-void
.end method

.method public onZoomIconClick()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/PhotoController;->onZoomClick()V

    .line 487
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$900(Lcom/android/camera/PhotoUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$900(Lcom/android/camera/PhotoUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/PhotoController;->onZoomChanged(F)V

    .line 468
    return-void
.end method
