.class Lcom/android/camera/ui/watermark/WatermarkFragment$1;
.super Ljava/lang/Object;
.source "WatermarkFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/watermark/WatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/watermark/WatermarkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/watermark/WatermarkFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$000(Lcom/android/camera/ui/watermark/WatermarkFragment;)Z

    move-result v2

    :goto_1
    return v2

    .line 88
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$000(Lcom/android/camera/ui/watermark/WatermarkFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v4}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 91
    .local v0, "target_x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v4}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 93
    .local v1, "target_y":F
    cmpg-float v3, v0, v5

    if-gez v3, :cond_1

    const/4 v0, 0x0

    .line 94
    :cond_1
    cmpg-float v3, v1, v5

    if-gez v3, :cond_2

    const/4 v1, 0x0

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v4}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v0, v3

    .line 97
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v4}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 100
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setX(F)V

    .line 101
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->setY(F)V

    .line 102
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$100(Lcom/android/camera/ui/watermark/WatermarkFragment;)Lcom/android/camera/ui/watermark/WatermarkViewLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/watermark/WatermarkViewLayout;->requestLayout()V

    .line 103
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3, p1, v2}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$200(Lcom/android/camera/ui/watermark/WatermarkFragment;Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "target_x":F
    .end local v1    # "target_y":F
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$000(Lcom/android/camera/ui/watermark/WatermarkFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3, v4}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$300(Lcom/android/camera/ui/watermark/WatermarkFragment;Z)V

    .line 111
    iget-object v3, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v3, p1, v4}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$200(Lcom/android/camera/ui/watermark/WatermarkFragment;Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 116
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$000(Lcom/android/camera/ui/watermark/WatermarkFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v2}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$400(Lcom/android/camera/ui/watermark/WatermarkFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/camera/ui/watermark/WatermarkFragment$1;->this$0:Lcom/android/camera/ui/watermark/WatermarkFragment;

    invoke-static {v2, v4}, Lcom/android/camera/ui/watermark/WatermarkFragment;->access$500(Lcom/android/camera/ui/watermark/WatermarkFragment;Z)V

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
