.class Lcom/android/camera/PanoramaUI$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PanoramaUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaUI;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/PanoramaUI$1;->this$0:Lcom/android/camera/PanoramaUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/PanoramaUI$1;->this$0:Lcom/android/camera/PanoramaUI;

    iget-object v0, v0, Lcom/android/camera/PanoramaUI;->mController:Lcom/android/camera/PanoramaController;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/PanoramaController;->onSingleTapUp(Landroid/view/View;II)V

    .line 52
    const/4 v0, 0x1

    return v0
.end method
