.class public interface abstract Lcom/android/camera/processing/imagebackend/ImageTaskManager;
.super Ljava/lang/Object;
.source "ImageTaskManager.java"


# virtual methods
.method public abstract appendTasks(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)Z
.end method

.method public abstract appendTasks(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
.end method

.method public abstract releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
.end method
