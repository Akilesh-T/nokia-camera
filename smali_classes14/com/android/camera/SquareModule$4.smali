.class Lcom/android/camera/SquareModule$4;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SquareModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/android/camera/SquareModule$4$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SquareModule$4$1;-><init>(Lcom/android/camera/SquareModule$4;)V

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPreviewFlipped()V
    .locals 0

    .prologue
    .line 270
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
    .line 250
    sub-int v1, p4, p2

    .line 251
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 252
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/camera/SquareModule;->access$500(Lcom/android/camera/SquareModule;IIZ)V

    .line 253
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 312
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "onSurfaceTextureAvailable"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "onSurfaceTextureAvailable"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 316
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    const/4 v2, 0x1

    invoke-static {v1, p2, p3, v2}, Lcom/android/camera/SquareModule;->access$500(Lcom/android/camera/SquareModule;IIZ)V

    .line 317
    const-string v1, "updatePreviewTransform"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v1}, Lcom/android/camera/SquareModule;->access$1000(Lcom/android/camera/SquareModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 319
    :try_start_0
    const-string v1, "synchronized mSurfaceTextureLock"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v1, p1}, Lcom/android/camera/SquareModule;->access$1102(Lcom/android/camera/SquareModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 321
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v1, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v1}, Lcom/android/camera/SquareModule;->access$1200(Lcom/android/camera/SquareModule;)V

    .line 323
    const-string v1, "reopenCamera done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 324
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 325
    return-void

    .line 321
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
    .line 329
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$1000(Lcom/android/camera/SquareModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/SquareModule;->access$1102(Lcom/android/camera/SquareModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 332
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iget-object v0, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$1300(Lcom/android/camera/SquareModule;)V

    .line 336
    iget-object v0, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$1400(Lcom/android/camera/SquareModule;)V

    .line 337
    const/4 v0, 0x1

    return v0

    .line 332
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
    .line 342
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$1500(Lcom/android/camera/SquareModule;)V

    .line 344
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v1}, Lcom/android/camera/SquareModule;->access$1600(Lcom/android/camera/SquareModule;)Lcom/android/camera/SquareModule$ModuleState;

    move-result-object v1

    sget-object v2, Lcom/android/camera/SquareModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/SquareModule$ModuleState;

    if-ne v1, v2, :cond_0

    .line 349
    invoke-static {}, Lcom/android/camera/SquareModule;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "First preview frame received"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    sget-object v2, Lcom/android/camera/SquareModule$ModuleState;->IDLE:Lcom/android/camera/SquareModule$ModuleState;

    invoke-static {v1, v2}, Lcom/android/camera/SquareModule;->access$1602(Lcom/android/camera/SquareModule;Lcom/android/camera/SquareModule$ModuleState;)Lcom/android/camera/SquareModule$ModuleState;

    .line 351
    iget-object v1, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v1}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    .line 352
    .local v0, "appUI":Lcom/android/camera/app/CameraAppUI;
    iget-object v1, p0, Lcom/android/camera/SquareModule$4;->this$0:Lcom/android/camera/SquareModule;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/SquareModule;->access$500(Lcom/android/camera/SquareModule;IIZ)V

    .line 354
    .end local v0    # "appUI":Lcom/android/camera/app/CameraAppUI;
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/android/camera/SquareModule;->access$600()Z

    move-result v0

    return v0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method
