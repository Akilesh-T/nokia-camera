.class Lcom/android/camera/app/CameraAppUI$MyTouchListener;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTouchListener"
.end annotation


# instance fields
.field private mScaleStarted:Z

.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/app/CameraAppUI;)V
    .locals 1

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->mScaleStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/CameraAppUI;Lcom/android/camera/app/CameraAppUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/app/CameraAppUI;
    .param p2, "x1"    # Lcom/android/camera/app/CameraAppUI$1;

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcom/android/camera/app/CameraAppUI$MyTouchListener;-><init>(Lcom/android/camera/app/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1071
    const/4 v1, 0x0

    .line 1072
    .local v1, "handleByModuleListener":Z
    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/PreviewOverlay;->needUseModuleListenerFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1073
    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/camera/ui/PreviewOverlay;->handleMotionEventByModule(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1075
    :cond_0
    if-eqz v1, :cond_2

    .line 1091
    :cond_1
    :goto_0
    return v3

    .line 1077
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_5

    .line 1078
    iput-boolean v4, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->mScaleStarted:Z

    .line 1083
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 1084
    .local v0, "dragZoomStarted":Z
    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$700(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/camera/ui/PreviewOverlay;->onExternalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1085
    :goto_2
    if-nez v0, :cond_1

    .line 1087
    const/4 v2, 0x0

    .line 1088
    .local v2, "touchExposureStarted":Z
    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$800(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$800(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v5

    invoke-interface {v5, p2}, Lcom/android/camera/ui/focus/FocusRing;->onExternalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1089
    :goto_3
    if-nez v2, :cond_1

    .line 1091
    iget-boolean v5, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->mScaleStarted:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v5}, Lcom/android/camera/app/CameraAppUI;->access$900(Lcom/android/camera/app/CameraAppUI;)Landroid/view/GestureDetector;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_4
    move v3, v4

    goto :goto_0

    .line 1079
    .end local v0    # "dragZoomStarted":Z
    .end local v2    # "touchExposureStarted":Z
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 1080
    iput-boolean v3, p0, Lcom/android/camera/app/CameraAppUI$MyTouchListener;->mScaleStarted:Z

    goto :goto_1

    .restart local v0    # "dragZoomStarted":Z
    :cond_6
    move v0, v4

    .line 1084
    goto :goto_2

    .restart local v2    # "touchExposureStarted":Z
    :cond_7
    move v2, v4

    .line 1088
    goto :goto_3
.end method
