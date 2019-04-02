.class Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;
.super Ljava/lang/Object;
.source "ImageBackend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskDoneWrapper"
.end annotation


# instance fields
.field private final mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final mImageShadowTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;

.field private final mWrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

.field final synthetic this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;


# direct methods
.method public constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V
    .locals 0
    .param p2, "imageBackend"    # Lcom/android/camera/processing/imagebackend/ImageBackend;
    .param p3, "imageShadowTask"    # Lcom/android/camera/processing/imagebackend/ImageShadowTask;
    .param p4, "wrappedTask"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->this$0:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 856
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->mImageShadowTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    .line 857
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->mWrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 858
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 865
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->mWrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->run()V

    .line 867
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->mImageShadowTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    invoke-virtual {v1, v2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->decrementTaskDone(Lcom/android/camera/processing/imagebackend/ImageShadowTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->mImageShadowTask:Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->getRunnableWhenDone()Ljava/lang/Runnable;

    move-result-object v0

    .line 870
    .local v0, "doneRunnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 871
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->mWrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    iget-object v1, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 872
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 878
    .end local v0    # "doneRunnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 874
    .restart local v0    # "doneRunnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->mWrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    iget-object v1, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
