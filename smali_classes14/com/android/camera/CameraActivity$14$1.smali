.class Lcom/android/camera/CameraActivity$14$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$14;->onPostExecute(Lcom/android/camera/data/FilmstripItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$14;

.field final synthetic val$data:Lcom/android/camera/data/FilmstripItem;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$14;Lcom/android/camera/data/FilmstripItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$14;

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/android/camera/CameraActivity$14$1;->this$1:Lcom/android/camera/CameraActivity$14;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$14$1;->val$data:Lcom/android/camera/data/FilmstripItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 2093
    iget-object v1, p0, Lcom/android/camera/CameraActivity$14$1;->val$data:Lcom/android/camera/data/FilmstripItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v4, v4, v2}, Lcom/android/camera/data/FilmstripItem;->generateThumbnail(IIF)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 2096
    .local v0, "bitmap":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2097
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2098
    iget-object v1, p0, Lcom/android/camera/CameraActivity$14$1;->this$1:Lcom/android/camera/CameraActivity$14;

    iget-object v2, v1, Lcom/android/camera/CameraActivity$14;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v3, v3}, Lcom/android/camera/CameraActivity;->access$3700(Lcom/android/camera/CameraActivity;Landroid/graphics/Bitmap;IZ)V

    .line 2105
    :goto_0
    return-void

    .line 2100
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "bitmap.isRecycled"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2103
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "bitmap not present"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
