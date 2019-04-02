.class public interface abstract Lcom/android/camera/video/RenderRecorder;
.super Ljava/lang/Object;
.source "RenderRecorder.java"


# virtual methods
.method public abstract clearRecordOutputSurface()V
.end method

.method public abstract setRecordOutputSurface(Landroid/view/Surface;Lcom/android/camera/async/Observable;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract startRecord()V
.end method

.method public abstract stopRecord()V
.end method
