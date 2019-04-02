.class Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BottomTextContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BottomTextContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BottomTextContainer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/BottomTextContainer;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/BottomTextContainer;Lcom/android/camera/ui/BottomTextContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/BottomTextContainer;
    .param p2, "x1"    # Lcom/android/camera/ui/BottomTextContainer$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;-><init>(Lcom/android/camera/ui/BottomTextContainer;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 138
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget-boolean v2, v2, Lcom/android/camera/ui/BottomTextContainer;->mEnableModeManage:Z

    if-nez v2, :cond_0

    .line 160
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2, v6}, Lcom/android/camera/ui/BottomTextContainer;->access$502(Lcom/android/camera/ui/BottomTextContainer;Z)Z

    .line 141
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {v2, v7}, Lcom/android/camera/ui/BottomTextContainer;->performHapticFeedback(I)Z

    .line 142
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/BottomTextContainer;->access$700(Lcom/android/camera/ui/BottomTextContainer;II)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/BottomTextContainer;->access$602(Lcom/android/camera/ui/BottomTextContainer;Landroid/view/View;)Landroid/view/View;

    .line 143
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 144
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v3}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/BottomTextContainer;->access$802(Lcom/android/camera/ui/BottomTextContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 145
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 146
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 147
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v4}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v5}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/camera/ui/BottomTextContainer;->access$900(Lcom/android/camera/ui/BottomTextContainer;II)V

    .line 148
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v3}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 149
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1102(Lcom/android/camera/ui/BottomTextContainer;I)I

    .line 150
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    .local v0, "from":I
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1302(Lcom/android/camera/ui/BottomTextContainer;I)I

    .line 153
    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v4}, Lcom/android/camera/ui/BottomTextContainer;->access$100(Lcom/android/camera/ui/BottomTextContainer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1402(Lcom/android/camera/ui/BottomTextContainer;I)I

    .line 154
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$600(Lcom/android/camera/ui/BottomTextContainer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 155
    move v1, v0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2}, Lcom/android/camera/ui/BottomTextContainer;->access$1000(Lcom/android/camera/ui/BottomTextContainer;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    iget-object v3, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v3}, Lcom/android/camera/ui/BottomTextContainer;->access$200(Lcom/android/camera/ui/BottomTextContainer;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v4}, Lcom/android/camera/ui/BottomTextContainer;->access$1400(Lcom/android/camera/ui/BottomTextContainer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/BottomTextContainer;->access$102(Lcom/android/camera/ui/BottomTextContainer;I)I

    .line 159
    iget-object v2, p0, Lcom/android/camera/ui/BottomTextContainer$ItemTouchHelperGestureListener;->this$0:Lcom/android/camera/ui/BottomTextContainer;

    invoke-static {v2, v6}, Lcom/android/camera/ui/BottomTextContainer;->access$1500(Lcom/android/camera/ui/BottomTextContainer;Z)V

    goto/16 :goto_0
.end method
