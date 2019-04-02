.class Lcom/android/camera/app/CameraAppUI$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mDown:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/app/CameraAppUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p2, "x1"    # Lcom/android/camera/app/CameraAppUI$1;

    .prologue
    .line 1099
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraAppUI$MyGestureListener;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    return-void
.end method

.method private setSwipeState(I)V
    .locals 1
    .param p1, "swipeState"    # I

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0, p1}, Lcom/android/camera/app/CameraAppUI;->access$1002(Lcom/android/camera/app/CameraAppUI;I)I

    .line 1144
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0, p1}, Lcom/android/camera/app/CameraAppUI;->access$1500(Lcom/android/camera/app/CameraAppUI;I)V

    .line 1145
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1149
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->mDown:Landroid/view/MotionEvent;

    .line 1150
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraAppUI;->access$1002(Lcom/android/camera/app/CameraAppUI;I)I

    .line 1151
    return v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    .line 1105
    invoke-static {v4}, Lcom/android/camera/app/CameraAppUI;->access$1000(Lcom/android/camera/app/CameraAppUI;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v4}, Lcom/android/camera/app/CameraAppUI;->access$1100(Lcom/android/camera/app/CameraAppUI;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v4}, Lcom/android/camera/app/CameraAppUI;->access$1200(Lcom/android/camera/app/CameraAppUI;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v4}, Lcom/android/camera/app/CameraAppUI;->access$1300(Lcom/android/camera/app/CameraAppUI;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return v2

    .line 1108
    :cond_1
    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v4}, Lcom/android/camera/app/CameraAppUI;->access$800(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v4}, Lcom/android/camera/app/CameraAppUI;->access$800(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ui/focus/FocusRing;->isTouchExposureInProgress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1112
    :cond_2
    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->mDown:Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    .line 1114
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v2}, Lcom/android/camera/app/CameraAppUI;->access$1400(Lcom/android/camera/app/CameraAppUI;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 1115
    iget-object v2, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v4}, Lcom/android/camera/app/CameraAppUI;->access$100(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/app/AppController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40600000    # 3.5f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Lcom/android/camera/app/CameraAppUI;->access$1402(Lcom/android/camera/app/CameraAppUI;I)I

    .line 1118
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v0, v2

    .line 1119
    .local v0, "deltaX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v1, v2

    .line 1120
    .local v1, "deltaY":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 1121
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v4}, Lcom/android/camera/app/CameraAppUI;->access$1400(Lcom/android/camera/app/CameraAppUI;)I

    move-result v4

    if-gt v2, v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v4}, Lcom/android/camera/app/CameraAppUI;->access$1400(Lcom/android/camera/app/CameraAppUI;)I

    move-result v4

    if-le v2, v4, :cond_5

    .line 1123
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_6

    .line 1127
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->setSwipeState(I)V

    :cond_5
    :goto_1
    move v2, v3

    .line 1138
    goto :goto_0

    .line 1128
    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    if-gt v0, v2, :cond_7

    .line 1130
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->setSwipeState(I)V

    goto :goto_1

    .line 1131
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_8

    .line 1132
    invoke-direct {p0, v3}, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->setSwipeState(I)V

    goto :goto_1

    .line 1133
    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_5

    .line 1134
    invoke-direct {p0, v8}, Lcom/android/camera/app/CameraAppUI$MyGestureListener;->setSwipeState(I)V

    goto :goto_1
.end method
