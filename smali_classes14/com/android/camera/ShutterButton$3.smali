.class Lcom/android/camera/ShutterButton$3;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ShutterButton;->startVideoBtnAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ShutterButton;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/android/camera/ShutterButton;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ShutterButton;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/camera/ShutterButton$3;->this$0:Lcom/android/camera/ShutterButton;

    iput p2, p0, Lcom/android/camera/ShutterButton$3;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/camera/ShutterButton$3;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$502(Lcom/android/camera/ShutterButton;Z)Z

    .line 335
    iget-object v0, p0, Lcom/android/camera/ShutterButton$3;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$602(Lcom/android/camera/ShutterButton;Z)Z

    .line 336
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/android/camera/ShutterButton$3;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$502(Lcom/android/camera/ShutterButton;Z)Z

    .line 327
    iget-object v0, p0, Lcom/android/camera/ShutterButton$3;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$602(Lcom/android/camera/ShutterButton;Z)Z

    .line 328
    iget-object v0, p0, Lcom/android/camera/ShutterButton$3;->this$0:Lcom/android/camera/ShutterButton;

    iget v1, p0, Lcom/android/camera/ShutterButton$3;->val$resId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 329
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 341
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/ShutterButton$3;->this$0:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$502(Lcom/android/camera/ShutterButton;Z)Z

    .line 321
    return-void
.end method
