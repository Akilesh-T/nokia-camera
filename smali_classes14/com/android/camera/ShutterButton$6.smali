.class Lcom/android/camera/ShutterButton$6;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ShutterButton;->startStopVideoBtnAnim(I)V
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
    .line 364
    iput-object p1, p0, Lcom/android/camera/ShutterButton$6;->this$0:Lcom/android/camera/ShutterButton;

    iput p2, p0, Lcom/android/camera/ShutterButton$6;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/android/camera/ShutterButton$6;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$502(Lcom/android/camera/ShutterButton;Z)Z

    .line 381
    iget-object v0, p0, Lcom/android/camera/ShutterButton$6;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$902(Lcom/android/camera/ShutterButton;Z)Z

    .line 382
    iget-object v0, p0, Lcom/android/camera/ShutterButton$6;->this$0:Lcom/android/camera/ShutterButton;

    iget v1, p0, Lcom/android/camera/ShutterButton$6;->val$resId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 383
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/camera/ShutterButton$6;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$502(Lcom/android/camera/ShutterButton;Z)Z

    .line 374
    iget-object v0, p0, Lcom/android/camera/ShutterButton$6;->this$0:Lcom/android/camera/ShutterButton;

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$902(Lcom/android/camera/ShutterButton;Z)Z

    .line 375
    iget-object v0, p0, Lcom/android/camera/ShutterButton$6;->this$0:Lcom/android/camera/ShutterButton;

    iget v1, p0, Lcom/android/camera/ShutterButton$6;->val$resId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 376
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 387
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/camera/ShutterButton$6;->this$0:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ShutterButton;->access$502(Lcom/android/camera/ShutterButton;Z)Z

    .line 369
    return-void
.end method
