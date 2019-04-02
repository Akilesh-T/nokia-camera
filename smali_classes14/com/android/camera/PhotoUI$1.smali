.class Lcom/android/camera/PhotoUI$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoUI;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/PhotoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method
