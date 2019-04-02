.class Lcom/android/camera/ui/BottomTextContainer$2;
.super Ljava/lang/Object;
.source "BottomTextContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomTextContainer;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private h:I

.field private left:I

.field final synthetic this$0:Lcom/android/camera/ui/BottomTextContainer;

.field private top:I

.field private w:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomTextContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/BottomTextContainer;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 568
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 570
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 571
    .local v7, "count":I
    if-nez v7, :cond_0

    .line 601
    :goto_0
    return-void

    .line 573
    :cond_0
    const/4 v10, 0x0

    .line 574
    .local v10, "j":I
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 575
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_2

    .line 576
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 577
    .local v6, "child":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$100(Lcom/android/camera/ui/BottomTextContainer;)I

    move-result v1

    invoke-virtual {v6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 578
    move v10, v9

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 575
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 582
    .end local v6    # "child":Landroid/widget/TextView;
    :cond_2
    const/4 v8, 0x0

    .line 583
    .local v8, "dx":I
    const/4 v9, 0x0

    :goto_2
    if-gt v9, v10, :cond_4

    .line 584
    if-ne v9, v10, :cond_3

    .line 585
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v8, v0

    .line 583
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v1}, Lcom/android/camera/ui/BottomTextContainer;->access$1600(Lcom/android/camera/ui/BottomTextContainer;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    goto :goto_3

    .line 590
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomTextContainer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->left:I

    .line 591
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->w:I

    .line 592
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->h:I

    .line 593
    iget v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->top:I

    if-nez v0, :cond_5

    .line 594
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomTextContainer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/BottomTextContainer$2;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->top:I

    .line 597
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/BottomTextContainer$2;->left:I

    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer$2;->top:I

    iget v3, p0, Lcom/android/camera/ui/BottomTextContainer$2;->left:I

    iget v5, p0, Lcom/android/camera/ui/BottomTextContainer$2;->w:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/BottomTextContainer$2;->top:I

    iget v11, p0, Lcom/android/camera/ui/BottomTextContainer$2;->h:I

    add-int/2addr v5, v11

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 598
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v0}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget-object v1, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1700(Lcom/android/camera/ui/BottomTextContainer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v3}, Lcom/android/camera/ui/BottomTextContainer;->access$1700(Lcom/android/camera/ui/BottomTextContainer;)I

    move-result v3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/camera/ui/BottomTextContainer;->access$1800(Lcom/android/camera/ui/BottomTextContainer;Landroid/view/View;IIII)V

    .line 600
    const-string v0, "CAM_BottomTextContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGlobalLayout w ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer$2;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer$2;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/BottomTextContainer$2;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$2;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v2}, Lcom/android/camera/ui/BottomTextContainer;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
