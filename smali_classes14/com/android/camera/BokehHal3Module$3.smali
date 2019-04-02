.class Lcom/android/camera/BokehHal3Module$3;
.super Ljava/lang/Object;
.source "BokehHal3Module.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/android/camera/BokehHal3Module$3$1;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehHal3Module$3$1;-><init>(Lcom/android/camera/BokehHal3Module$3;)V

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 299
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
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/camera/BokehHal3Module;->access$500(Lcom/android/camera/BokehHal3Module;IIZ)V

    .line 253
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 304
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/camera/BokehHal3Module;->access$500(Lcom/android/camera/BokehHal3Module;IIZ)V

    .line 308
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1100(Lcom/android/camera/BokehHal3Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/BokehHal3Module;->access$1202(Lcom/android/camera/BokehHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1300(Lcom/android/camera/BokehHal3Module;)V

    .line 312
    return-void

    .line 310
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
    .line 316
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1100(Lcom/android/camera/BokehHal3Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/BokehHal3Module;->access$1202(Lcom/android/camera/BokehHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 319
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1400(Lcom/android/camera/BokehHal3Module;)V

    .line 321
    const/4 v0, 0x1

    return v0

    .line 319
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
    .line 326
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v0}, Lcom/android/camera/BokehHal3Module;->access$1500(Lcom/android/camera/BokehHal3Module;)V

    .line 328
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$1600(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/BokehHal3Module$ModuleState;

    move-result-object v1

    sget-object v2, Lcom/android/camera/BokehHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/BokehHal3Module$ModuleState;

    if-ne v1, v2, :cond_0

    .line 333
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "First preview frame received"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    sget-object v2, Lcom/android/camera/BokehHal3Module$ModuleState;->IDLE:Lcom/android/camera/BokehHal3Module$ModuleState;

    invoke-static {v1, v2}, Lcom/android/camera/BokehHal3Module;->access$1602(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/BokehHal3Module$ModuleState;)Lcom/android/camera/BokehHal3Module$ModuleState;

    .line 335
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-static {v1}, Lcom/android/camera/BokehHal3Module;->access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    .line 336
    .local v0, "appUI":Lcom/android/camera/app/CameraAppUI;
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module$3;->this$0:Lcom/android/camera/BokehHal3Module;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/BokehHal3Module;->access$500(Lcom/android/camera/BokehHal3Module;IIZ)V

    .line 338
    .end local v0    # "appUI":Lcom/android/camera/app/CameraAppUI;
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/android/camera/BokehHal3Module;->access$600()Z

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
