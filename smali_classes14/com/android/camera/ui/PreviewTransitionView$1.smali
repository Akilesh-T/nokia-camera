.class Lcom/android/camera/ui/PreviewTransitionView$1;
.super Ljava/lang/Object;
.source "PreviewTransitionView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PreviewTransitionView;->setupAnimation(Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PreviewTransitionView;

.field final synthetic val$DEFAULT_Z_POSITION:F

.field final synthetic val$DIRECTION_FACTOR:I

.field final synthetic val$MAX_DEPTH:F

.field final synthetic val$camera:Landroid/graphics/Camera;

.field final synthetic val$isBlur:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$transitionType:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewTransitionView;FLjava/util/concurrent/atomic/AtomicBoolean;Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Landroid/graphics/Camera;FI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/PreviewTransitionView;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    iput p2, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$MAX_DEPTH:F

    iput-object p3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$isBlur:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$transitionType:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    iput-object p5, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$camera:Landroid/graphics/Camera;

    iput p6, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$DEFAULT_Z_POSITION:F

    iput p7, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$DIRECTION_FACTOR:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v8, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 172
    .local v0, "animatedValue":I
    iget v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$MAX_DEPTH:F

    float-to-double v4, v3

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 174
    .local v1, "depth":F
    const/16 v3, 0x5a

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$isBlur:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    iget-object v4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    iget-object v5, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    iget-object v6, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v6}, Lcom/android/camera/ui/PreviewTransitionView;->access$000(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/ui/PreviewTransitionView;->access$100(Lcom/android/camera/ui/PreviewTransitionView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$transitionType:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    invoke-static {v4, v5, v6}, Lcom/android/camera/ui/PreviewTransitionView;->access$200(Lcom/android/camera/ui/PreviewTransitionView;Landroid/graphics/Bitmap;Lcom/android/camera/ui/PreviewTransitionView$TransitionType;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/PreviewTransitionView;->access$002(Lcom/android/camera/ui/PreviewTransitionView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 176
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$isBlur:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 180
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$camera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 181
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$camera:Landroid/graphics/Camera;

    iget v4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$DEFAULT_Z_POSITION:F

    add-float/2addr v4, v1

    invoke-virtual {v3, v8, v8, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 182
    sget-object v3, Lcom/android/camera/ui/PreviewTransitionView$3;->$SwitchMap$com$android$camera$ui$PreviewTransitionView$TransitionType:[I

    iget-object v4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$transitionType:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    invoke-virtual {v4}, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 197
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$camera:Landroid/graphics/Camera;

    invoke-virtual {v3, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 198
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$camera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 200
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewTransitionView;->access$000(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewTransitionView;->access$000(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 201
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewTransitionView;->access$000(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewTransitionView;->access$000(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 202
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewTransitionView;->access$300(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewTransitionView;->access$000(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v4}, Lcom/android/camera/ui/PreviewTransitionView;->access$300(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v5}, Lcom/android/camera/ui/PreviewTransitionView;->access$000(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 204
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewTransitionView;->access$400(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 205
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-static {v3}, Lcom/android/camera/ui/PreviewTransitionView;->access$400(Lcom/android/camera/ui/PreviewTransitionView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 207
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->this$0:Lcom/android/camera/ui/PreviewTransitionView;

    invoke-virtual {v3}, Lcom/android/camera/ui/PreviewTransitionView;->invalidate()V

    .line 208
    return-void

    .line 185
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$camera:Landroid/graphics/Camera;

    iget v4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$DIRECTION_FACTOR:I

    mul-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    goto/16 :goto_0

    .line 190
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$camera:Landroid/graphics/Camera;

    iget v4, p0, Lcom/android/camera/ui/PreviewTransitionView$1;->val$DIRECTION_FACTOR:I

    mul-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateX(F)V

    goto/16 :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
