.class Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BarcodeRotateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BarcodeRotateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BarcodeRotateLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/BarcodeRotateLayout;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/BarcodeRotateLayout;Lcom/android/camera/ui/BarcodeRotateLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/BarcodeRotateLayout;
    .param p2, "x1"    # Lcom/android/camera/ui/BarcodeRotateLayout$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;-><init>(Lcom/android/camera/ui/BarcodeRotateLayout;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 100
    cmpl-float v0, p4, p3

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    iget-object v1, p0, Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-static {v1}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$100(Lcom/android/camera/ui/BarcodeRotateLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BarcodeRotateLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout$GestureListener;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->startHideAnimation()V

    .line 104
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
