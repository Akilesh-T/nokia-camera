.class Lcom/android/camera/ManualProModeUI$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ManualProModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualProModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualProModeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualProModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualProModeUI;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/camera/ManualProModeUI$1;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/ManualProModeUI$1;->this$0:Lcom/android/camera/ManualProModeUI;

    invoke-static {v0}, Lcom/android/camera/ManualProModeUI;->access$000(Lcom/android/camera/ManualProModeUI;)Lcom/android/camera/ManualController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/ManualController;->onSingleTapUp(Landroid/view/View;II)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method
