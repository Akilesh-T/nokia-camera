.class Lcom/android/camera/PhotoModule$Memento$3;
.super Landroid/os/AsyncTask;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$Memento;->resizeAndSave([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/PhotoModule$ResizeBundle;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/PhotoModule$ResizeBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$Memento;

.field final synthetic val$fakeImage:Z

.field final synthetic val$needThumbnail:Z

.field final synthetic val$overrideExif:Z

.field final synthetic val$watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$Memento;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento$3;->this$1:Lcom/android/camera/PhotoModule$Memento;

    iput-boolean p2, p0, Lcom/android/camera/PhotoModule$Memento$3;->val$needThumbnail:Z

    iput-boolean p3, p0, Lcom/android/camera/PhotoModule$Memento$3;->val$overrideExif:Z

    iput-object p4, p0, Lcom/android/camera/PhotoModule$Memento$3;->val$watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    iput-boolean p5, p0, Lcom/android/camera/PhotoModule$Memento$3;->val$fakeImage:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/camera/PhotoModule$ResizeBundle;)Lcom/android/camera/PhotoModule$ResizeBundle;
    .locals 2
    .param p1, "resizeBundles"    # [Lcom/android/camera/PhotoModule$ResizeBundle;

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento$3;->this$1:Lcom/android/camera/PhotoModule$Memento;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$5700(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$ResizeBundle;)Lcom/android/camera/PhotoModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1458
    check-cast p1, [Lcom/android/camera/PhotoModule$ResizeBundle;

    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoModule$Memento$3;->doInBackground([Lcom/android/camera/PhotoModule$ResizeBundle;)Lcom/android/camera/PhotoModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/PhotoModule$ResizeBundle;)V
    .locals 7
    .param p1, "result"    # Lcom/android/camera/PhotoModule$ResizeBundle;

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento$3;->this$1:Lcom/android/camera/PhotoModule$Memento;

    iget-object v1, p1, Lcom/android/camera/PhotoModule$ResizeBundle;->jpegData:[B

    iget-object v2, p1, Lcom/android/camera/PhotoModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule$Memento$3;->val$needThumbnail:Z

    iget-boolean v4, p0, Lcom/android/camera/PhotoModule$Memento$3;->val$overrideExif:Z

    iget-object v5, p0, Lcom/android/camera/PhotoModule$Memento$3;->val$watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    iget-boolean v6, p0, Lcom/android/camera/PhotoModule$Memento$3;->val$fakeImage:Z

    invoke-static/range {v0 .. v6}, Lcom/android/camera/PhotoModule$Memento;->access$5800(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 1469
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1458
    check-cast p1, Lcom/android/camera/PhotoModule$ResizeBundle;

    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoModule$Memento$3;->onPostExecute(Lcom/android/camera/PhotoModule$ResizeBundle;)V

    return-void
.end method
