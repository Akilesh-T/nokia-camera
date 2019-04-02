.class Lcom/android/camera/processing/imagebackend/ImageBackend$2;
.super Ljava/lang/Object;
.source "ImageBackend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;->closeImageExecutorSafe(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field final synthetic val$img:Lcom/android/camera/processing/imagebackend/ImageToProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageToProcess;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/processing/imagebackend/ImageBackend;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->val$img:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->val$img:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 800
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-static {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$308(Lcom/android/camera/processing/imagebackend/ImageBackend;)I

    .line 801
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release of image occurred.  Good fun. Total Images Open/Closed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 802
    invoke-static {v2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$400(Lcom/android/camera/processing/imagebackend/ImageBackend;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$2;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-static {v2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$300(Lcom/android/camera/processing/imagebackend/ImageBackend;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-virtual {v0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->logWrapper(Ljava/lang/String;)V

    .line 803
    return-void
.end method
