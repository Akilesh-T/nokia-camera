.class Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector$1;
.super Ljava/lang/Object;
.source "PreviewOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector$1;->this$1:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 822
    invoke-static {}, Lcom/android/camera/ui/PreviewOverlay;->access$2000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[Zoom] stop CPU Boost"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector$1;->this$1:Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;->access$2102(Lcom/android/camera/ui/PreviewOverlay$ZoomGestureDetector;Z)Z

    .line 825
    return-void
.end method
