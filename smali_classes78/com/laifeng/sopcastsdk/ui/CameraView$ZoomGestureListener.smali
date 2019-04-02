.class Lcom/laifeng/sopcastsdk/ui/CameraView$ZoomGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/ui/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;


# direct methods
.method private constructor <init>(Lcom/laifeng/sopcastsdk/ui/CameraView;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$ZoomGestureListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/laifeng/sopcastsdk/ui/CameraView;Lcom/laifeng/sopcastsdk/ui/CameraView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/laifeng/sopcastsdk/ui/CameraView;
    .param p2, "x1"    # Lcom/laifeng/sopcastsdk/ui/CameraView$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/ui/CameraView$ZoomGestureListener;-><init>(Lcom/laifeng/sopcastsdk/ui/CameraView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 170
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$ZoomGestureListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v3}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$200(Lcom/laifeng/sopcastsdk/ui/CameraView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "progress":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 173
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->cameraZoom(Z)F

    move-result v0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$ZoomGestureListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$500(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/CameraZoomListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraView$ZoomGestureListener;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraView;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/ui/CameraView;->access$500(Lcom/laifeng/sopcastsdk/ui/CameraView;)Lcom/laifeng/sopcastsdk/camera/CameraZoomListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/laifeng/sopcastsdk/camera/CameraZoomListener;->onZoomProgress(F)V

    .end local v0    # "progress":F
    :cond_0
    move v1, v2

    .line 183
    :cond_1
    return v1

    .line 174
    .restart local v0    # "progress":F
    :cond_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 175
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->cameraZoom(Z)F

    move-result v0

    goto :goto_0
.end method
