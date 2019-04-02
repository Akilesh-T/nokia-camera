.class Lcom/android/camera/CameraActivity$25;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->showThumbnailIfAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;

.field final synthetic val$currentFilmstripItem:Lcom/android/camera/data/FilmstripItem;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/FilmstripItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 3361
    iput-object p1, p0, Lcom/android/camera/CameraActivity$25;->this$0:Lcom/android/camera/CameraActivity;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$25;->val$currentFilmstripItem:Lcom/android/camera/data/FilmstripItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    .line 3364
    iget-object v1, p0, Lcom/android/camera/CameraActivity$25;->val$currentFilmstripItem:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3365
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateThumbnail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$25;->val$currentFilmstripItem:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v3}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3367
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraActivity$25;->val$currentFilmstripItem:Lcom/android/camera/data/FilmstripItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v5, v5, v2}, Lcom/android/camera/data/FilmstripItem;->generateThumbnail(IIF)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 3370
    .local v0, "bitmap":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3371
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3372
    iget-object v2, p0, Lcom/android/camera/CameraActivity$25;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v4, v4}, Lcom/android/camera/CameraActivity;->access$3700(Lcom/android/camera/CameraActivity;Landroid/graphics/Bitmap;IZ)V

    .line 3389
    :cond_1
    :goto_0
    return-void

    .line 3375
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraActivity$25;->val$currentFilmstripItem:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3376
    invoke-static {}, Lcom/android/camera/CameraActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateThumbnail fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$25;->val$currentFilmstripItem:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v3}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3379
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraActivity$25;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/CameraActivity;->access$6700(Lcom/android/camera/CameraActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3380
    iget-object v1, p0, Lcom/android/camera/CameraActivity$25;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/CameraActivity$25$1;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$25$1;-><init>(Lcom/android/camera/CameraActivity$25;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
