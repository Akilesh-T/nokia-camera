.class Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;
.super Ljava/lang/Object;
.source "VideoPreviewRender.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

.field final synthetic val$imageSource:Lcom/android/camera/opengl/ImageSource;

.field final synthetic val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/camera/opengl/ImageSource;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    iput-object p2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->val$imageSource:Lcom/android/camera/opengl/ImageSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 8
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "previewData":[B
    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 471
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 472
    :try_start_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "image":Landroid/media/Image;
    const/4 v4, 0x0

    .line 473
    if-eqz v1, :cond_0

    .line 474
    :try_start_2
    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-static {v3, v1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->access$400(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;Landroid/media/Image;)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v2

    .line 477
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 481
    .end local v1    # "image":Landroid/media/Image;
    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 483
    if-eqz v2, :cond_3

    .line 484
    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->access$500(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 485
    :try_start_5
    sget-object v3, Lcom/android/camera/opengl/video/VideoPreviewRender$2;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->val$imageSource:Lcom/android/camera/opengl/ImageSource;

    invoke-virtual {v5}, Lcom/android/camera/opengl/ImageSource;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 494
    :cond_2
    :goto_1
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 496
    :cond_3
    return-void

    .line 477
    .restart local v1    # "image":Landroid/media/Image;
    :catch_0
    move-exception v3

    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v1    # "image":Landroid/media/Image;
    :catch_1
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_7
    invoke-static {}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acquireNextImage error = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3

    .line 477
    .restart local v1    # "image":Landroid/media/Image;
    :cond_4
    :try_start_8
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 472
    :catch_2
    move-exception v3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 477
    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v4, :cond_6

    :try_start_a
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    :goto_3
    :try_start_b
    throw v3

    :catch_3
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 487
    .end local v1    # "image":Landroid/media/Image;
    :pswitch_0
    :try_start_c
    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->access$600(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;)Lcom/android/camera/opengl/effect/EffectEngine;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->access$600(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;)Lcom/android/camera/opengl/effect/EffectEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/opengl/effect/EffectEngine;->isNeedFaceData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 488
    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;->this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->access$600(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;)Lcom/android/camera/opengl/effect/EffectEngine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/opengl/effect/EffectEngine;->onPreviewFrame([B)V

    goto :goto_1

    .line 494
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v3

    .line 477
    .restart local v1    # "image":Landroid/media/Image;
    :catchall_3
    move-exception v3

    goto :goto_2

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
