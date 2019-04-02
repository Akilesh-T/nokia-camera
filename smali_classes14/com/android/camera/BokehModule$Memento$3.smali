.class Lcom/android/camera/BokehModule$Memento$3;
.super Landroid/os/AsyncTask;
.source "BokehModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehModule$Memento;->resizeAndSave([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/BokehModule$ResizeBundle;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/BokehModule$ResizeBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BokehModule$Memento;

.field final synthetic val$fakeImage:Z

.field final synthetic val$needThumbnail:Z

.field final synthetic val$overrideExif:Z

.field final synthetic val$watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule$Memento;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3669
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento$3;->this$1:Lcom/android/camera/BokehModule$Memento;

    iput-boolean p2, p0, Lcom/android/camera/BokehModule$Memento$3;->val$needThumbnail:Z

    iput-boolean p3, p0, Lcom/android/camera/BokehModule$Memento$3;->val$overrideExif:Z

    iput-object p4, p0, Lcom/android/camera/BokehModule$Memento$3;->val$watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    iput-boolean p5, p0, Lcom/android/camera/BokehModule$Memento$3;->val$fakeImage:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/camera/BokehModule$ResizeBundle;)Lcom/android/camera/BokehModule$ResizeBundle;
    .locals 2
    .param p1, "resizeBundles"    # [Lcom/android/camera/BokehModule$ResizeBundle;

    .prologue
    .line 3673
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento$3;->this$1:Lcom/android/camera/BokehModule$Memento;

    iget-object v0, v0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/android/camera/BokehModule;->access$6000(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$ResizeBundle;)Lcom/android/camera/BokehModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3669
    check-cast p1, [Lcom/android/camera/BokehModule$ResizeBundle;

    invoke-virtual {p0, p1}, Lcom/android/camera/BokehModule$Memento$3;->doInBackground([Lcom/android/camera/BokehModule$ResizeBundle;)Lcom/android/camera/BokehModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/BokehModule$ResizeBundle;)V
    .locals 7
    .param p1, "result"    # Lcom/android/camera/BokehModule$ResizeBundle;

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento$3;->this$1:Lcom/android/camera/BokehModule$Memento;

    iget-object v1, p1, Lcom/android/camera/BokehModule$ResizeBundle;->jpegData:[B

    iget-object v2, p1, Lcom/android/camera/BokehModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    iget-boolean v3, p0, Lcom/android/camera/BokehModule$Memento$3;->val$needThumbnail:Z

    iget-boolean v4, p0, Lcom/android/camera/BokehModule$Memento$3;->val$overrideExif:Z

    iget-object v5, p0, Lcom/android/camera/BokehModule$Memento$3;->val$watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;

    iget-boolean v6, p0, Lcom/android/camera/BokehModule$Memento$3;->val$fakeImage:Z

    invoke-static/range {v0 .. v6}, Lcom/android/camera/BokehModule$Memento;->access$6100(Lcom/android/camera/BokehModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 3680
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3669
    check-cast p1, Lcom/android/camera/BokehModule$ResizeBundle;

    invoke-virtual {p0, p1}, Lcom/android/camera/BokehModule$Memento$3;->onPostExecute(Lcom/android/camera/BokehModule$ResizeBundle;)V

    return-void
.end method
