.class Lcom/android/camera/ui/BarcodeRotateLayout$3;
.super Ljava/lang/Object;
.source "BarcodeRotateLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BarcodeRotateLayout;->startHideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BarcodeRotateLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BarcodeRotateLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/camera/ui/BarcodeRotateLayout$3;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 431
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout$3;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-static {v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$900(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout$3;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-static {v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$1000(Lcom/android/camera/ui/BarcodeRotateLayout;)Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout$3;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-static {v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$1000(Lcom/android/camera/ui/BarcodeRotateLayout;)Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/BarcodeRotateLayout$OnBarcodeUIChangeListener;->onBarcodeUIHide()V

    .line 426
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 436
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 418
    return-void
.end method
