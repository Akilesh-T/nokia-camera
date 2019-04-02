.class Lcom/android/camera/BeautyHal3Module$3;
.super Ljava/lang/Object;
.source "BeautyHal3Module.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyHal3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/android/camera/BeautyHal3Module$3$1;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyHal3Module$3$1;-><init>(Lcom/android/camera/BeautyHal3Module$3;)V

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPreviewFlipped()V
    .locals 0

    .prologue
    .line 252
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
    .line 232
    sub-int v1, p4, p2

    .line 233
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 234
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/camera/BeautyHal3Module;->access$500(Lcom/android/camera/BeautyHal3Module;IIZ)V

    .line 235
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 283
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/camera/BeautyHal3Module;->access$500(Lcom/android/camera/BeautyHal3Module;IIZ)V

    .line 287
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$1000(Lcom/android/camera/BeautyHal3Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0, p1}, Lcom/android/camera/BeautyHal3Module;->access$1102(Lcom/android/camera/BeautyHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 289
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$1200(Lcom/android/camera/BeautyHal3Module;)V

    .line 291
    return-void

    .line 289
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
    .line 295
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$1000(Lcom/android/camera/BeautyHal3Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/BeautyHal3Module;->access$1102(Lcom/android/camera/BeautyHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 298
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$1300(Lcom/android/camera/BeautyHal3Module;)V

    .line 300
    const/4 v0, 0x1

    return v0

    .line 298
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
    .line 305
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v0}, Lcom/android/camera/BeautyHal3Module;->access$1400(Lcom/android/camera/BeautyHal3Module;)V

    .line 307
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$1500(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/BeautyHal3Module$ModuleState;

    move-result-object v1

    sget-object v2, Lcom/android/camera/BeautyHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/BeautyHal3Module$ModuleState;

    if-ne v1, v2, :cond_0

    .line 312
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "First preview frame received"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    sget-object v2, Lcom/android/camera/BeautyHal3Module$ModuleState;->IDLE:Lcom/android/camera/BeautyHal3Module$ModuleState;

    invoke-static {v1, v2}, Lcom/android/camera/BeautyHal3Module;->access$1502(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/BeautyHal3Module$ModuleState;)Lcom/android/camera/BeautyHal3Module$ModuleState;

    .line 314
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-static {v1}, Lcom/android/camera/BeautyHal3Module;->access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    .line 315
    .local v0, "appUI":Lcom/android/camera/app/CameraAppUI;
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module$3;->this$0:Lcom/android/camera/BeautyHal3Module;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/BeautyHal3Module;->access$500(Lcom/android/camera/BeautyHal3Module;IIZ)V

    .line 317
    .end local v0    # "appUI":Lcom/android/camera/app/CameraAppUI;
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/android/camera/BeautyHal3Module;->access$600()Z

    move-result v0

    return v0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method
