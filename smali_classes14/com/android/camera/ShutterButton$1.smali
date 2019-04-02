.class Lcom/android/camera/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/android/camera/ShutterButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ShutterButton;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/camera/ShutterButton$1;->this$0:Lcom/android/camera/ShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/camera/ShutterButton$1;->this$0:Lcom/android/camera/ShutterButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/ShutterButton;->access$302(Lcom/android/camera/ShutterButton;I)I

    .line 302
    return-void
.end method
