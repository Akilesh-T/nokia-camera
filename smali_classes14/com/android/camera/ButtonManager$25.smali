.class Lcom/android/camera/ButtonManager$25;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ButtonManager;->hideIconAlphaAnim(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ButtonManager;

.field final synthetic val$hidden:Z

.field final synthetic val$iconList:Ljava/util/List;

.field final synthetic val$isHideFlash:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ButtonManager;Ljava/util/List;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ButtonManager;

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/android/camera/ButtonManager$25;->this$0:Lcom/android/camera/ButtonManager;

    iput-object p2, p0, Lcom/android/camera/ButtonManager$25;->val$iconList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/camera/ButtonManager$25;->val$hidden:Z

    iput-boolean p4, p0, Lcom/android/camera/ButtonManager$25;->val$isHideFlash:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1677
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1678
    .local v0, "alpha":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ButtonManager$25;->val$iconList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1679
    iget-object v5, p0, Lcom/android/camera/ButtonManager$25;->val$iconList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1682
    .local v2, "buttonId":I
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/ButtonManager$25;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v5, v2}, Lcom/android/camera/ButtonManager;->access$200(Lcom/android/camera/ButtonManager;I)Lcom/android/camera/MultiToggleImageButton;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1686
    .local v1, "button":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lcom/android/camera/ButtonManager$25;->val$hidden:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/camera/ButtonManager$25;->val$isHideFlash:Z

    if-nez v5, :cond_1

    .line 1678
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1683
    .end local v1    # "button":Landroid/view/View;
    :catch_0
    move-exception v3

    .line 1684
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/android/camera/ButtonManager$25;->this$0:Lcom/android/camera/ButtonManager;

    invoke-static {v5, v2}, Lcom/android/camera/ButtonManager;->access$300(Lcom/android/camera/ButtonManager;I)Landroid/widget/ImageView;

    move-result-object v1

    .restart local v1    # "button":Landroid/view/View;
    goto :goto_1

    .line 1689
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 1692
    .end local v1    # "button":Landroid/view/View;
    .end local v2    # "buttonId":I
    :cond_2
    return-void
.end method
