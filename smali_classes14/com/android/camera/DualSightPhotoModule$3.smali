.class Lcom/android/camera/DualSightPhotoModule$3;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DualSightPhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPreviewFlipped()V
    .locals 0

    .prologue
    .line 250
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
    .line 230
    sub-int v1, p4, p2

    .line 231
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 232
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/android/camera/DualSightPhotoModule;->access$100(Lcom/android/camera/DualSightPhotoModule;IIZ)V

    .line 233
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 269
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Lcom/android/camera/DualSightPhotoModule;->access$100(Lcom/android/camera/DualSightPhotoModule;IIZ)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$400(Lcom/android/camera/DualSightPhotoModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0, p1}, Lcom/android/camera/DualSightPhotoModule;->access$502(Lcom/android/camera/DualSightPhotoModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 275
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$600(Lcom/android/camera/DualSightPhotoModule;)V

    .line 277
    return-void

    .line 275
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
    .line 281
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$400(Lcom/android/camera/DualSightPhotoModule;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/DualSightPhotoModule;->access$502(Lcom/android/camera/DualSightPhotoModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 284
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$700(Lcom/android/camera/DualSightPhotoModule;)V

    .line 286
    const/4 v0, 0x1

    return v0

    .line 284
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
    .line 291
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$800(Lcom/android/camera/DualSightPhotoModule;)V

    .line 293
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$900(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModule$ModuleState;

    move-result-object v1

    sget-object v2, Lcom/android/camera/DualSightPhotoModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    if-ne v1, v2, :cond_0

    .line 298
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "First preview frame received"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    sget-object v2, Lcom/android/camera/DualSightPhotoModule$ModuleState;->IDLE:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    invoke-static {v1, v2}, Lcom/android/camera/DualSightPhotoModule;->access$902(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/DualSightPhotoModule$ModuleState;)Lcom/android/camera/DualSightPhotoModule$ModuleState;

    .line 301
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    .line 302
    .local v0, "appUI":Lcom/android/camera/app/CameraAppUI;
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/DualSightPhotoModule;->access$100(Lcom/android/camera/DualSightPhotoModule;IIZ)V

    .line 304
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule$3;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v1}, Lcom/android/camera/DualSightPhotoModule;->access$1100(Lcom/android/camera/DualSightPhotoModule;)V

    .line 307
    .end local v0    # "appUI":Lcom/android/camera/app/CameraAppUI;
    :cond_0
    return-void
.end method

.method public shouldAutoAdjustTransformMatrixOnLayout()Z
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/android/camera/DualSightPhotoModule;->access$200()Z

    move-result v0

    return v0
.end method

.method public useModuleListenerFirst()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method
