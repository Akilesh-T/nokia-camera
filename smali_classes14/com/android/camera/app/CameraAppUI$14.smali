.class Lcom/android/camera/app/CameraAppUI$14;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f0f00ba

    .line 2494
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$2300(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2561
    :goto_0
    return-void

    .line 2495
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$2300(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f0201bd

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2496
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$2300(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e000e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2497
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$2300(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;

    move-result-object v1

    const v2, 0x7f0f01e7

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f02016c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2498
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$2300(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;

    move-result-object v1

    const v2, 0x7f0f01e6

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f020150

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2500
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v1}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 2529
    .local v0, "asyncLayoutInflater":Landroid/support/v4/view/AsyncLayoutInflater;
    iget-object v1, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2531
    const v1, 0x7f040028

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/app/CameraAppUI;->access$2300(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/MainActivityLayout;

    move-result-object v2

    new-instance v3, Lcom/android/camera/app/CameraAppUI$14$1;

    invoke-direct {v3, p0}, Lcom/android/camera/app/CameraAppUI$14$1;-><init>(Lcom/android/camera/app/CameraAppUI$14;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 2546
    const v1, 0x7f040040

    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI$14;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/app/CameraAppUI;->access$200(Lcom/android/camera/app/CameraAppUI;)Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Lcom/android/camera/app/CameraAppUI$14$2;

    invoke-direct {v3, p0}, Lcom/android/camera/app/CameraAppUI$14$2;-><init>(Lcom/android/camera/app/CameraAppUI$14;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    goto/16 :goto_0
.end method
