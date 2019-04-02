.class Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;
.super Ljava/lang/Object;
.source "PanoramaImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->onSuccess(Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

.field final synthetic val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget v2, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mIndex:I

    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mImageData:[B

    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$600(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->addFrame(I[BZ)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageEngine.addFrame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;->val$result:Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    iget-wide v2, v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$500(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onCaptureFinish()V

    .line 175
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
