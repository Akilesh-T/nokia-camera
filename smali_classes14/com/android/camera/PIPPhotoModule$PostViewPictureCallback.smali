.class final Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostViewPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPPhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PIPPhotoModule;Lcom/android/camera/PIPPhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PIPPhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PIPPhotoModule$1;

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/PIPPhotoModule;->access$1302(Lcom/android/camera/PIPPhotoModule;J)J

    .line 748
    invoke-static {}, Lcom/android/camera/PIPPhotoModule;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToPostViewCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    .line 749
    invoke-static {v2}, Lcom/android/camera/PIPPhotoModule;->access$1300(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v4}, Lcom/android/camera/PIPPhotoModule;->access$1100(Lcom/android/camera/PIPPhotoModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 751
    return-void
.end method
