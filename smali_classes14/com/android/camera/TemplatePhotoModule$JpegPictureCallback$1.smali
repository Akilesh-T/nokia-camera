.class Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;
.super Landroid/os/AsyncTask;
.source "TemplatePhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/TemplatePhotoModule$ResizeBundle;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/TemplatePhotoModule$ResizeBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;

.field final synthetic val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field final synthetic val$lJpegRotation:I

.field final synthetic val$name:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

.field final synthetic val$needThumbnail:Z


# direct methods
.method constructor <init>(Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;ZI)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->this$1:Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;

    iput-object p2, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->val$name:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iput-object p3, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-boolean p4, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->val$needThumbnail:Z

    iput p5, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->val$lJpegRotation:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/camera/TemplatePhotoModule$ResizeBundle;)Lcom/android/camera/TemplatePhotoModule$ResizeBundle;
    .locals 2
    .param p1, "resizeBundles"    # [Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->this$1:Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;

    iget-object v0, v0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->this$0:Lcom/android/camera/TemplatePhotoModule;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/android/camera/TemplatePhotoModule;->access$2600(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/TemplatePhotoModule$ResizeBundle;)Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 825
    check-cast p1, [Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    invoke-virtual {p0, p1}, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->doInBackground([Lcom/android/camera/TemplatePhotoModule$ResizeBundle;)Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/TemplatePhotoModule$ResizeBundle;)V
    .locals 8
    .param p1, "result"    # Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->this$1:Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;

    iget-object v1, p1, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;->jpegData:[B

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->val$name:Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    iget-object v3, p1, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->val$camera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-boolean v5, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->val$needThumbnail:Z

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->val$lJpegRotation:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;->saveFinalPhoto([BLcom/android/camera/PhotoModule$NamedImages$NamedEntity;Lcom/android/camera/exif/ExifInterface;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;ZZI)V

    .line 835
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 825
    check-cast p1, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    invoke-virtual {p0, p1}, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback$1;->onPostExecute(Lcom/android/camera/TemplatePhotoModule$ResizeBundle;)V

    return-void
.end method
