.class Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;
.super Ljava/lang/Object;
.source "BokehPreviewRendererHandler.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;-><init>(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/Lifetime;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

.field final synthetic val$sensorInfoActiveArraySize:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    iput-object p2, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;->val$sensorInfoActiveArraySize:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/camera2/params/Face;)V
    .locals 10
    .param p1, "faceList"    # [Landroid/hardware/camera2/params/Face;

    .prologue
    const/4 v9, 0x6

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 426
    if-eqz p1, :cond_4

    .line 427
    const/4 v2, 0x0

    .line 428
    .local v2, "maxFace":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 429
    if-nez v2, :cond_1

    .line 430
    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 428
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_1
    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 435
    .local v0, "bound":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 436
    move-object v2, v0

    goto :goto_1

    .line 440
    .end local v0    # "bound":Landroid/graphics/Rect;
    :cond_2
    if-eqz v2, :cond_3

    .line 441
    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    move-result-object v3

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;->val$sensorInfoActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;->val$sensorInfoActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v9, v8, v8, v4}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 448
    .end local v1    # "i":I
    .end local v2    # "maxFace":Landroid/graphics/Rect;
    :goto_2
    return-void

    .line 443
    .restart local v1    # "i":I
    .restart local v2    # "maxFace":Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    move-result-object v3

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v9, v8, v8, v4}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 446
    .end local v1    # "i":I
    .end local v2    # "maxFace":Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$1;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;

    move-result-object v3

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v9, v8, v8, v4}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method
