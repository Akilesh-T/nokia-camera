.class Lcom/android/camera/DualSightVideoModule$3;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DualSightVideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPreviewFlipped()V
    .locals 0

    .prologue
    .line 276
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
    .line 256
    sub-int v1, p4, p2

    .line 257
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 258
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/camera/DualSightVideoModule;->access$100(Lcom/android/camera/DualSightVideoModule;IIZ)V

    .line 259
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 295
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/camera/DualSightVideoModule;->access$100(Lcom/android/camera/DualSightVideoModule;IIZ)V

    .line 299
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$400(Lcom/android/camera/DualSightVideoModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0, p1}, Lcom/android/camera/DualSightVideoModule;->access$502(Lcom/android/camera/DualSightVideoModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 301
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$600(Lcom/android/camera/DualSightVideoModule;)V

    .line 303
    return-void

    .line 301
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
    .line 307
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$400(Lcom/android/camera/DualSightVideoModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/DualSightVideoModule;->access$502(Lcom/android/camera/DualSightVideoModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$800(Lcom/android/camera/DualSightVideoModule;)V

    .line 319
    const/4 v0, 0x1

    return v0

    .line 310
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
    .line 324
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$900(Lcom/android/camera/DualSightVideoModule;)V

    .line 326
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModule$ModuleState;

    move-result-object v1

    sget-object v2, Lcom/android/camera/DualSightVideoModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/DualSightVideoModule$ModuleState;

    if-ne v1, v2, :cond_0

    .line 331
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "First preview frame received"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    sget-object v2, Lcom/android/camera/DualSightVideoModule$ModuleState;->IDLE:Lcom/android/camera/DualSightVideoModule$ModuleState;

    invoke-static {v1, v2}, Lcom/android/camera/DualSightVideoModule;->access$1002(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/DualSightVideoModule$ModuleState;)Lcom/android/camera/DualSightVideoModule$ModuleState;

    .line 333
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    .line 334
    .local v0, "appUI":Lcom/android/camera/app/CameraAppUI;
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule$3;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/DualSightVideoModule;->access$100(Lcom/android/camera/DualSightVideoModule;IIZ)V

    .line 336
    .end local v0    # "appUI":Lcom/android/camera/app/CameraAppUI;
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 263
    invoke-static {}, Lcom/android/camera/DualSightVideoModule;->access$200()Z

    move-result v0

    return v0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method
