.class Lcom/android/camera/ui/BottomTextContainer$4;
.super Ljava/lang/Object;
.source "BottomTextContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomTextContainer;->startAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field left:I

.field final synthetic this$0:Lcom/android/camera/ui/BottomTextContainer;

.field final synthetic val$dx:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomTextContainer;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer$4;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iput p2, p0, Lcom/android/camera/ui/BottomTextContainer$4;->val$dx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$4;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BottomTextContainer$4;->left:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 709
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 710
    .local v1, "percentage":F
    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer$4;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/BottomTextContainer$4;->val$dx:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 711
    .local v0, "l":I
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$4;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$4;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v3}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer$4;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v4}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer$4;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v5}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 712
    return-void
.end method
