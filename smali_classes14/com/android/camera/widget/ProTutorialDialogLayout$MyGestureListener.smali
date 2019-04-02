.class Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ProTutorialDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ProTutorialDialogLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mDown:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/widget/ProTutorialDialogLayout;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/widget/ProTutorialDialogLayout;
    .param p2, "x1"    # Lcom/android/camera/widget/ProTutorialDialogLayout$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;-><init>(Lcom/android/camera/widget/ProTutorialDialogLayout;)V

    return-void
.end method

.method private setSwipeState(I)V
    .locals 3
    .param p1, "swipeState"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0, p1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$702(Lcom/android/camera/widget/ProTutorialDialogLayout;I)I

    .line 228
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$700(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$400(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v0

    sget-object v1, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->EXIT:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    if-eq v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->values()[Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$400(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$402(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 231
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$400(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$500(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$700(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$400(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v0

    sget-object v1, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->SWIPE_UP_ONCE:Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    if-eq v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->values()[Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$400(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$402(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    .line 236
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    iget-object v1, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$400(Lcom/android/camera/widget/ProTutorialDialogLayout;)Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$500(Lcom/android/camera/widget/ProTutorialDialogLayout;Lcom/android/camera/widget/ProTutorialDialogLayout$ProModeTutorialState;)V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->mDown:Landroid/view/MotionEvent;

    .line 244
    iget-object v0, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v0, v1}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$702(Lcom/android/camera/widget/ProTutorialDialogLayout;I)I

    .line 245
    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->mDown:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$700(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 223
    :goto_0
    return v2

    .line 204
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 205
    .local v0, "deltaX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 207
    .local v1, "deltaY":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 208
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v3}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$800(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v3

    if-gt v2, v3, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v3}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$800(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v3

    if-le v2, v3, :cond_7

    .line 210
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 211
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    if-gt v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v2

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_6

    .line 212
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v2

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_6

    .line 213
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_8

    .line 214
    :cond_6
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->setSwipeState(I)V

    .line 223
    :cond_7
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 215
    :cond_8
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    if-gt v0, v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v2

    if-eqz v2, :cond_c

    .line 216
    :cond_9
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v2

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_c

    .line 217
    :cond_a
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_c

    .line 218
    :cond_b
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->this$0:Lcom/android/camera/widget/ProTutorialDialogLayout;

    invoke-static {v2}, Lcom/android/camera/widget/ProTutorialDialogLayout;->access$900(Lcom/android/camera/widget/ProTutorialDialogLayout;)I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_7

    .line 219
    :cond_c
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/widget/ProTutorialDialogLayout$MyGestureListener;->setSwipeState(I)V

    goto :goto_1
.end method
