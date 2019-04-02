.class Lcom/android/camera/livebroadcast/status/ReactionView$1;
.super Ljava/lang/Object;
.source "ReactionView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/status/ReactionView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/status/ReactionView;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/status/ReactionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/status/ReactionView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 109
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 112
    .local v1, "degrees":I
    int-to-float v3, v1

    const/high16 v8, 0x43340000    # 180.0f

    div-float/2addr v3, v8

    float-to-double v8, v3

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v8, v10

    .line 113
    .local v4, "radians":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 114
    .local v6, "sinValue":D
    int-to-float v3, v1

    const/high16 v8, 0x44070000    # 540.0f

    div-float v2, v3, v8

    .line 116
    .local v2, "progress":F
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v8, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v8}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$100(Lcom/android/camera/livebroadcast/status/ReactionView;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v9}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$200(Lcom/android/camera/livebroadcast/status/ReactionView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    iget-object v10, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v10}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$300(Lcom/android/camera/livebroadcast/status/ReactionView;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 117
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v8, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v8}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$400(Lcom/android/camera/livebroadcast/status/ReactionView;)I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v9}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$200(Lcom/android/camera/livebroadcast/status/ReactionView;)I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v10}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$500(Lcom/android/camera/livebroadcast/status/ReactionView;)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v6

    double-to-int v10, v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 119
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$600(Lcom/android/camera/livebroadcast/status/ReactionView;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$602(Lcom/android/camera/livebroadcast/status/ReactionView;Z)Z

    .line 124
    :cond_2
    const/16 v3, 0x10e

    if-gt v1, v3, :cond_3

    .line 125
    int-to-float v3, v1

    const/high16 v8, 0x43870000    # 270.0f

    div-float v0, v3, v8

    .line 126
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 129
    .end local v0    # "alpha":F
    :cond_3
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$700(Lcom/android/camera/livebroadcast/status/ReactionView;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x10e

    if-lt v1, v3, :cond_4

    .line 130
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v8, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v8}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$800(Lcom/android/camera/livebroadcast/status/ReactionView;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 132
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    const/4 v8, 0x1

    invoke-static {v3, v8}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$702(Lcom/android/camera/livebroadcast/status/ReactionView;Z)Z

    .line 135
    :cond_4
    const/16 v3, 0x1e6

    if-lt v1, v3, :cond_5

    .line 136
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v8, v1

    const/high16 v9, 0x44070000    # 540.0f

    div-float/2addr v8, v9

    sub-float v0, v3, v8

    .line 137
    .restart local v0    # "alpha":F
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 140
    .end local v0    # "alpha":F
    :cond_5
    const/16 v3, 0x21c

    if-ne v1, v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v3, p0, Lcom/android/camera/livebroadcast/status/ReactionView$1;->this$0:Lcom/android/camera/livebroadcast/status/ReactionView;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/status/ReactionView;->access$000(Lcom/android/camera/livebroadcast/status/ReactionView;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
