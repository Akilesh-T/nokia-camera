.class Lcom/android/camera/SlowMotionHal3Module$3;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowMotionHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowMotionHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/android/camera/SlowMotionHal3Module$3$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowMotionHal3Module$3$1;-><init>(Lcom/android/camera/SlowMotionHal3Module$3;)V

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPreviewFlipped()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 235
    sub-int v1, p4, p2

    .line 236
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 237
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/camera/SlowMotionHal3Module;->access$300(Lcom/android/camera/SlowMotionHal3Module;IIZ)V

    .line 238
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 289
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/camera/SlowMotionHal3Module;->access$300(Lcom/android/camera/SlowMotionHal3Module;IIZ)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$900(Lcom/android/camera/SlowMotionHal3Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/SlowMotionHal3Module;->access$1002(Lcom/android/camera/SlowMotionHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1100(Lcom/android/camera/SlowMotionHal3Module;)V

    .line 297
    return-void

    .line 295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 301
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$900(Lcom/android/camera/SlowMotionHal3Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/SlowMotionHal3Module;->access$1002(Lcom/android/camera/SlowMotionHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 304
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1200(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1200(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1200(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1300(Lcom/android/camera/SlowMotionHal3Module;)V

    .line 313
    const/4 v0, 0x1

    return v0

    .line 304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 318
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$1400(Lcom/android/camera/SlowMotionHal3Module;)V

    .line 320
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v1}, Lcom/android/camera/SlowMotionHal3Module;->access$1500(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    move-result-object v1

    sget-object v2, Lcom/android/camera/SlowMotionHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    if-ne v1, v2, :cond_0

    .line 325
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "First preview frame received"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    sget-object v2, Lcom/android/camera/SlowMotionHal3Module$ModuleState;->IDLE:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    invoke-static {v1, v2}, Lcom/android/camera/SlowMotionHal3Module;->access$1502(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/SlowMotionHal3Module$ModuleState;)Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    .line 327
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v1}, Lcom/android/camera/SlowMotionHal3Module;->access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    .line 328
    .local v0, "appUI":Lcom/android/camera/app/CameraAppUI;
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module$3;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/SlowMotionHal3Module;->access$300(Lcom/android/camera/SlowMotionHal3Module;IIZ)V

    .line 330
    .end local v0    # "appUI":Lcom/android/camera/app/CameraAppUI;
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/android/camera/SlowMotionHal3Module;->access$400()Z

    move-result v0

    return v0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method
