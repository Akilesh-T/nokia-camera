.class public interface abstract Lcom/android/camera/FatalErrorHandler;
.super Ljava/lang/Object;
.source "FatalErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FatalErrorHandler$Reason;
    }
.end annotation


# virtual methods
.method public abstract handleFatalError(Lcom/android/camera/FatalErrorHandler$Reason;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onCameraDisabledFailure()V
.end method

.method public abstract onCameraOpenFailure()V
.end method

.method public abstract onCameraReconnectFailure()V
.end method

.method public abstract onGenericCameraAccessFailure()V
.end method

.method public abstract onMediaStorageFailure(I)V
.end method
