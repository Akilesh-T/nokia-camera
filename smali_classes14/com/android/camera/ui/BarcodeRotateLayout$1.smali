.class Lcom/android/camera/ui/BarcodeRotateLayout$1;
.super Ljava/lang/Object;
.source "BarcodeRotateLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BarcodeRotateLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BarcodeRotateLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BarcodeRotateLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/ui/BarcodeRotateLayout$1;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout$1;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-static {v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->access$200(Lcom/android/camera/ui/BarcodeRotateLayout;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    const/4 v0, 0x1

    return v0
.end method
