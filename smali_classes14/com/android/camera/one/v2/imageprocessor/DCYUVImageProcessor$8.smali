.class Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;
.super Ljava/lang/Object;
.source "DCYUVImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

.field final synthetic val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;Lcom/android/camera/mpo/Bokeh_Info;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 287
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    const-string v4, "mImageEngine onProcessDone"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x0

    .line 290
    .local v2, "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageInfo;

    move-object v2, v0

    .line 291
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    const-string v4, "mImageInfo.get"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    if-eqz v2, :cond_0

    .line 297
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->val$bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;Lcom/android/camera/processing/imagebackend/ImageInfo;)V

    .line 301
    :goto_1
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 302
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$700(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 303
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    const-string v4, "mImageEngine done"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 304
    return-void

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mImageInfo.get fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    goto :goto_1
.end method
