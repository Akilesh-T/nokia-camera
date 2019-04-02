.class Lcom/android/camera/PIPPhotoUI$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PIPPhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPPhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPPhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPPhotoUI;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/PIPPhotoUI$1;->this$0:Lcom/android/camera/PIPPhotoUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI$1;->this$0:Lcom/android/camera/PIPPhotoUI;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoUI;->access$000(Lcom/android/camera/PIPPhotoUI;)Lcom/android/camera/PIPPhotoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/PIPPhotoController;->onLongPressed()Z

    .line 74
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI$1;->this$0:Lcom/android/camera/PIPPhotoUI;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoUI;->access$000(Lcom/android/camera/PIPPhotoUI;)Lcom/android/camera/PIPPhotoController;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/android/camera/PIPPhotoController;->onScroll(FF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/PIPPhotoUI$1;->this$0:Lcom/android/camera/PIPPhotoUI;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoUI;->access$000(Lcom/android/camera/PIPPhotoUI;)Lcom/android/camera/PIPPhotoController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/PIPPhotoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
