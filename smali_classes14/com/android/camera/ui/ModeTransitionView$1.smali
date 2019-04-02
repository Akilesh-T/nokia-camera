.class Lcom/android/camera/ui/ModeTransitionView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ModeTransitionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModeTransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeTransitionView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeTransitionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/ModeTransitionView;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/ModeTransitionView$1;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$1;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setScrollDistance(F)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$1;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->access$002(Lcom/android/camera/ui/ModeTransitionView;F)F

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$1;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->access$102(Lcom/android/camera/ui/ModeTransitionView;F)F

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const v4, 0x3f333333    # 0.7f

    const v3, 0x3e99999a    # 0.3f

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$1;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->setScrollDistance(F)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$1;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeTransitionView$1;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeTransitionView;->access$000(Lcom/android/camera/ui/ModeTransitionView;)F

    move-result v1

    mul-float/2addr v1, v3

    mul-float v2, v4, p3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->access$002(Lcom/android/camera/ui/ModeTransitionView;F)F

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView$1;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    iget-object v1, p0, Lcom/android/camera/ui/ModeTransitionView$1;->this$0:Lcom/android/camera/ui/ModeTransitionView;

    invoke-static {v1}, Lcom/android/camera/ui/ModeTransitionView;->access$100(Lcom/android/camera/ui/ModeTransitionView;)F

    move-result v1

    mul-float/2addr v1, v3

    mul-float v2, v4, p4

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/ModeTransitionView;->access$102(Lcom/android/camera/ui/ModeTransitionView;F)F

    .line 119
    const/4 v0, 0x0

    return v0
.end method
