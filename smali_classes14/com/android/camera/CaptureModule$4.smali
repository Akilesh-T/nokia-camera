.class Lcom/android/camera/CaptureModule$4;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/android/camera/CaptureModule$4$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CaptureModule$4$1;-><init>(Lcom/android/camera/CaptureModule$4;)V

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPreviewFlipped()V
    .locals 0

    .prologue
    .line 296
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
    .line 276
    sub-int v1, p4, p2

    .line 277
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 278
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/camera/CaptureModule;->access$1100(Lcom/android/camera/CaptureModule;IIZ)V

    .line 279
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 338
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "onSurfaceTextureAvailable"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "onSurfaceTextureAvailable"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 342
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x1

    invoke-static {v1, p2, p3, v2}, Lcom/android/camera/CaptureModule;->access$1100(Lcom/android/camera/CaptureModule;IIZ)V

    .line 343
    const-string v1, "updatePreviewTransform"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$1600(Lcom/android/camera/CaptureModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 345
    :try_start_0
    const-string v1, "synchronized mSurfaceTextureLock"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1, p1}, Lcom/android/camera/CaptureModule;->access$1702(Lcom/android/camera/CaptureModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 347
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object v1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$1800(Lcom/android/camera/CaptureModule;)V

    .line 349
    const-string v1, "reopenCamera done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 350
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 351
    return-void

    .line 347
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 355
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$1600(Lcom/android/camera/CaptureModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/CaptureModule;->access$1702(Lcom/android/camera/CaptureModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 358
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$1900(Lcom/android/camera/CaptureModule;)V

    .line 360
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2000(Lcom/android/camera/CaptureModule;)V

    .line 361
    const/4 v0, 0x1

    return v0

    .line 358
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
    .line 366
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2100(Lcom/android/camera/CaptureModule;)V

    .line 368
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$2200(Lcom/android/camera/CaptureModule;)Lcom/android/camera/CaptureModule$ModuleState;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CaptureModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/CaptureModule$ModuleState;

    if-ne v1, v2, :cond_0

    .line 373
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$800()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "First preview frame received"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    sget-object v2, Lcom/android/camera/CaptureModule$ModuleState;->IDLE:Lcom/android/camera/CaptureModule$ModuleState;

    invoke-static {v1, v2}, Lcom/android/camera/CaptureModule;->access$2202(Lcom/android/camera/CaptureModule;Lcom/android/camera/CaptureModule$ModuleState;)Lcom/android/camera/CaptureModule$ModuleState;

    .line 375
    iget-object v1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/CaptureModule;->access$900(Lcom/android/camera/CaptureModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    .line 376
    .local v0, "appUI":Lcom/android/camera/app/CameraAppUI;
    iget-object v1, p0, Lcom/android/camera/CaptureModule$4;->this$0:Lcom/android/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/CaptureModule;->access$1100(Lcom/android/camera/CaptureModule;IIZ)V

    .line 378
    .end local v0    # "appUI":Lcom/android/camera/app/CameraAppUI;
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/android/camera/CaptureModule;->access$1200()Z

    move-result v0

    return v0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method
