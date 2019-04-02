.class interface abstract Lcom/android/camera/ManualModule$SavePictureCallback;
.super Ljava/lang/Object;
.source "ManualModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SavePictureCallback"
.end annotation


# virtual methods
.method public abstract getTitle(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;
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
