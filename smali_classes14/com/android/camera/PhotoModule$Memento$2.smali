.class Lcom/android/camera/PhotoModule$Memento$2;
.super Landroid/os/AsyncTask;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$Memento;->addThumbnail([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/PhotoModule$AddThumbnailBundle;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$Memento;

.field final synthetic val$exif:Lcom/android/camera/exif/ExifInterface;

.field final synthetic val$fakeImage:Z

.field final synthetic val$originalJpegData:[B

.field final synthetic val$overrideExif:Z

.field final synthetic val$rotation:I

.field final synthetic val$watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento$2;->this$1:Lcom/android/camera/PhotoModule$Memento;

    iput-object p2, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$originalJpegData:[B

    iput-object p3, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$exif:Lcom/android/camera/exif/ExifInterface;

    iput-boolean p4, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$overrideExif:Z

    iput p5, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$rotation:I

    iput-object p6, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    iput-boolean p7, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$fakeImage:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1398
    check-cast p1, [Lcom/android/camera/PhotoModule$AddThumbnailBundle;

    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoModule$Memento$2;->doInBackground([Lcom/android/camera/PhotoModule$AddThumbnailBundle;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/camera/PhotoModule$AddThumbnailBundle;)Ljava/lang/Void;
    .locals 5
    .param p1, "addThumbnailBundle"    # [Lcom/android/camera/PhotoModule$AddThumbnailBundle;

    .prologue
    const/4 v4, 0x0

    .line 1402
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "AddThumbnailBundle doInBackground"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1403
    iget-object v2, p0, Lcom/android/camera/PhotoModule$Memento$2;->this$1:Lcom/android/camera/PhotoModule$Memento;

    invoke-static {v2}, Lcom/android/camera/PhotoModule$Memento;->access$4400(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    .line 1404
    .local v1, "hw_rotate_support":Z
    new-instance v0, Lcom/android/camera/util/ExifUtil;

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/android/camera/PhotoModule$AddThumbnailBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v0, v2}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .line 1405
    .local v0, "exifUtil":Lcom/android/camera/util/ExifUtil;
    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/android/camera/PhotoModule$AddThumbnailBundle;->jpegData:[B

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/util/ExifUtil;->addThumbnail([BZ)V

    .line 1406
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1398
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoModule$Memento$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento$2;->this$1:Lcom/android/camera/PhotoModule$Memento;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$originalJpegData:[B

    iget-object v2, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$exif:Lcom/android/camera/exif/ExifInterface;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$overrideExif:Z

    iget v4, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$rotation:I

    iget-object v5, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    iget-boolean v6, p0, Lcom/android/camera/PhotoModule$Memento$2;->val$fakeImage:Z

    invoke-static/range {v0 .. v6}, Lcom/android/camera/PhotoModule$Memento;->access$5500(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 1412
    return-void
.end method
