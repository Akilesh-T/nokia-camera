.class Lcom/android/camera/BeautyModule$Memento$4;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyModule$Memento;->saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BeautyModule$Memento;

.field final synthetic val$exif:Lcom/android/camera/exif/ExifInterface;

.field final synthetic val$height:I

.field final synthetic val$jpegData:[B

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$needThumbnail:Z

.field final synthetic val$orientation:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyModule$Memento;Z[BLjava/lang/String;IIILcom/android/camera/exif/ExifInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 3044
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento$4;->this$1:Lcom/android/camera/BeautyModule$Memento;

    iput-boolean p2, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$needThumbnail:Z

    iput-object p3, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$jpegData:[B

    iput-object p4, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$title:Ljava/lang/String;

    iput p5, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$width:I

    iput p6, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$height:I

    iput p7, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$orientation:I

    iput-object p8, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$exif:Lcom/android/camera/exif/ExifInterface;

    iput-object p9, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$mime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 3048
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/BeautyModule$Memento$4;->this$1:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v1}, Lcom/android/camera/BeautyModule$Memento;->access$2800(Lcom/android/camera/BeautyModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 3049
    .local v13, "success":Z
    if-eqz v13, :cond_0

    .line 3050
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "save fake image for post process by futureTask"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3051
    iget-object v1, p0, Lcom/android/camera/BeautyModule$Memento$4;->this$1:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v1}, Lcom/android/camera/BeautyModule$Memento;->access$5900(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/camera/BeautyModule$MediaSaveListener;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$needThumbnail:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/BeautyModule$MediaSaveListener;->setNeedThumbnail(Z)V

    .line 3052
    iget-object v1, p0, Lcom/android/camera/BeautyModule$Memento$4;->this$1:Lcom/android/camera/BeautyModule$Memento;

    iget-object v1, v1, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-virtual {v1}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$jpegData:[B

    iget-object v3, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/BeautyModule$Memento$4;->this$1:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v4}, Lcom/android/camera/BeautyModule$Memento;->access$6000(Lcom/android/camera/BeautyModule$Memento;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/camera/BeautyModule$Memento$4;->this$1:Lcom/android/camera/BeautyModule$Memento;

    invoke-static {v6}, Lcom/android/camera/BeautyModule$Memento;->access$6100(Lcom/android/camera/BeautyModule$Memento;)Landroid/location/Location;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$width:I

    iget v8, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$height:I

    iget v9, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$orientation:I

    iget-object v10, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v11, p0, Lcom/android/camera/BeautyModule$Memento$4;->this$1:Lcom/android/camera/BeautyModule$Memento;

    .line 3053
    invoke-static {v11}, Lcom/android/camera/BeautyModule$Memento;->access$5900(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/camera/BeautyModule$MediaSaveListener;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/BeautyModule$Memento$4;->val$mime:Ljava/lang/String;

    .line 3052
    invoke-interface/range {v1 .. v12}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    .end local v13    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 3055
    :catch_0
    move-exception v0

    .line 3056
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
