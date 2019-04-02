.class public interface abstract Lcom/android/camera/processing/ProcessingTask;
.super Ljava/lang/Object;
.source "ProcessingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/ProcessingTask$ProcessingTaskDoneListener;,
        Lcom/android/camera/processing/ProcessingTask$ProcessingResult;
    }
.end annotation


# virtual methods
.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSession()Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract process(Landroid/content/Context;Lcom/android/camera/app/CameraServices;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/processing/ProcessingTask$ProcessingResult;
.end method

.method public abstract resume()V
.end method

.method public abstract setDoneListener(Lcom/android/camera/processing/ProcessingTask$ProcessingTaskDoneListener;)V
.end method

.method public abstract suspend()V
.end method
