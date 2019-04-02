.class Lcom/android/camera/PanoramaModule$3$2;
.super Landroid/os/AsyncTask;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule$3;->onPanoramaPictureTaken([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/PanoramaModule$ResizeBundle;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/PanoramaModule$ResizeBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PanoramaModule$3;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PanoramaModule$3;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$3$2;->this$1:Lcom/android/camera/PanoramaModule$3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/camera/PanoramaModule$ResizeBundle;)Lcom/android/camera/PanoramaModule$ResizeBundle;
    .locals 2
    .param p1, "resizeBundles"    # [Lcom/android/camera/PanoramaModule$ResizeBundle;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3$2;->this$1:Lcom/android/camera/PanoramaModule$3;

    iget-object v0, v0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/android/camera/PanoramaModule;->access$1600(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$ResizeBundle;)Lcom/android/camera/PanoramaModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    check-cast p1, [Lcom/android/camera/PanoramaModule$ResizeBundle;

    invoke-virtual {p0, p1}, Lcom/android/camera/PanoramaModule$3$2;->doInBackground([Lcom/android/camera/PanoramaModule$ResizeBundle;)Lcom/android/camera/PanoramaModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/PanoramaModule$ResizeBundle;)V
    .locals 3
    .param p1, "result"    # Lcom/android/camera/PanoramaModule$ResizeBundle;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/camera/PanoramaModule$3$2;->this$1:Lcom/android/camera/PanoramaModule$3;

    iget-object v1, p1, Lcom/android/camera/PanoramaModule$ResizeBundle;->jpegData:[B

    iget-object v2, p1, Lcom/android/camera/PanoramaModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PanoramaModule$3;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;)V

    .line 550
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 540
    check-cast p1, Lcom/android/camera/PanoramaModule$ResizeBundle;

    invoke-virtual {p0, p1}, Lcom/android/camera/PanoramaModule$3$2;->onPostExecute(Lcom/android/camera/PanoramaModule$ResizeBundle;)V

    return-void
.end method
