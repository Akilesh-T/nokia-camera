.class Lcom/android/camera/ManualUI$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ManualUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualUI;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualUI;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/ManualUI$1;->this$0:Lcom/android/camera/ManualUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/ManualUI$1;->this$0:Lcom/android/camera/ManualUI;

    invoke-static {v0}, Lcom/android/camera/ManualUI;->access$000(Lcom/android/camera/ManualUI;)Lcom/android/camera/ManualController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/ManualController;->onSingleTapUp(Landroid/view/View;II)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method
