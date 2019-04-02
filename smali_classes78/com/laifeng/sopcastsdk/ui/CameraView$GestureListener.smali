.class public Lcom/laifeng/sopcastsdk/ui/CameraView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/ui/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/ui/CameraView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/ui/CameraView;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$GestureListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$GestureListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$400(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$GestureListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$300(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/laifeng/sopcastsdk/camera/focus/FocusPieView;->setPosition(FF)V

    .line 151
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$GestureListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$400(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/focus/FocusManager;->refocus()V

    .line 153
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
