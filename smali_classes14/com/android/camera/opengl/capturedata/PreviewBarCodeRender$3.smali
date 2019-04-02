.class Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$3;
.super Ljava/lang/Object;
.source "PreviewBarCodeRender.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

.field final synthetic val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$3;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    iput-object p2, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$3;->val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 206
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .local v1, "image":Landroid/media/Image;
    const/4 v3, 0x0

    .line 207
    if-eqz v1, :cond_1

    .line 208
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$3;->val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 209
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$3;->val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$3;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    iget-object v5, p0, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender$3;->this$0:Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;

    invoke-static {v5, v1}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$500(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;Landroid/media/Image;)[B

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$402(Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;[B)[B

    .line 212
    :cond_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 218
    .end local v1    # "image":Landroid/media/Image;
    :cond_2
    :goto_0
    return-void

    .line 212
    .restart local v1    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 206
    :catch_0
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 215
    :catchall_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_2
    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .end local v1    # "image":Landroid/media/Image;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/opengl/capturedata/PreviewBarCodeRender;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireNextImage error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "image":Landroid/media/Image;
    :catch_2
    move-exception v2

    :try_start_9
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_1
.end method
