.class Lcom/android/camera/ShutterButton$5;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/android/camera/ShutterButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ShutterButton;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/camera/ShutterButton$5;->this$0:Lcom/android/camera/ShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/camera/ShutterButton$5;->this$0:Lcom/android/camera/ShutterButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/ShutterButton;->access$802(Lcom/android/camera/ShutterButton;F)F

    .line 360
    iget-object v0, p0, Lcom/android/camera/ShutterButton$5;->this$0:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->invalidate()V

    .line 361
    return-void
.end method
