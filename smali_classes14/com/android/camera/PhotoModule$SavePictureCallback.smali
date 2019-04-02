.class interface abstract Lcom/android/camera/PhotoModule$SavePictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SavePictureCallback"
.end annotation


# virtual methods
.method public abstract getTitle(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;
.end method

.method public abstract isAnimateCapture()Z
.end method

.method public abstract isFakeImage()Z
.end method

.method public abstract isHandleImageCaptureIntent()Z
.end method

.method public abstract isNotifyRemoteShutterListner()Z
.end method

.method public abstract isUpdateThumbnail()Z
.end method

.method public abstract isUseWaterMark()Z
.end method
