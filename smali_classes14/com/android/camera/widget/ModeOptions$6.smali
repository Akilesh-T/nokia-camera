.class Lcom/android/camera/widget/ModeOptions$6;
.super Ljava/lang/Object;
.source "ModeOptions.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/ModeOptions;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ModeOptions;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ModeOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/ModeOptions;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/camera/widget/ModeOptions$6;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/camera/widget/ModeOptions$6;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/widget/ModeOptions;->access$002(Lcom/android/camera/widget/ModeOptions;F)F

    .line 263
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$6;->this$0:Lcom/android/camera/widget/ModeOptions;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/widget/ModeOptions;->access$102(Lcom/android/camera/widget/ModeOptions;Z)Z

    .line 264
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$6;->this$0:Lcom/android/camera/widget/ModeOptions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/widget/ModeOptions;->access$202(Lcom/android/camera/widget/ModeOptions;Z)Z

    .line 265
    iget-object v0, p0, Lcom/android/camera/widget/ModeOptions$6;->this$0:Lcom/android/camera/widget/ModeOptions;

    invoke-virtual {v0}, Lcom/android/camera/widget/ModeOptions;->invalidate()V

    .line 266
    return-void
.end method
