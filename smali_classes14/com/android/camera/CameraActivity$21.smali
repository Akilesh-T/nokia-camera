.class Lcom/android/camera/CameraActivity$21;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->preloadFilmstripItems(Landroid/support/v4/view/AsyncLayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 2997
    iput-object p1, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3000
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 3001
    .local v1, "v":Landroid/widget/ImageView;
    const v2, 0x7f0f000b

    sget-object v3, Lcom/android/camera/data/FilmstripItemType;->SECURE_ALBUM_PLACEHOLDER:Lcom/android/camera/data/FilmstripItemType;

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 3002
    new-instance v2, Lcom/android/camera/CameraActivity$21$1;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraActivity$21$1;-><init>(Lcom/android/camera/CameraActivity$21;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3011
    iget-object v2, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3012
    iget-object v2, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    new-instance v3, Lcom/android/camera/data/FixedLastProxyAdapter;

    iget-object v4, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    .line 3013
    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$4700(Lcom/android/camera/CameraActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    .line 3014
    invoke-static {v5}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v5

    new-instance v6, Lcom/android/camera/data/PlaceholderItem;

    sget-object v7, Lcom/android/camera/data/FilmstripItemType;->SECURE_ALBUM_PLACEHOLDER:Lcom/android/camera/data/FilmstripItemType;

    .line 3018
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 3019
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-direct {v6, v1, v7, v8, v9}, Lcom/android/camera/data/PlaceholderItem;-><init>(Landroid/view/View;Lcom/android/camera/data/FilmstripItemType;II)V

    invoke-direct {v3, v4, v5, v6}, Lcom/android/camera/data/FixedLastProxyAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/LocalFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItem;)V

    .line 3012
    invoke-static {v2, v3}, Lcom/android/camera/CameraActivity;->access$802(Lcom/android/camera/CameraActivity;Lcom/android/camera/data/LocalFilmstripDataAdapter;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    .line 3021
    iget-object v2, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->clear()V

    .line 3022
    iget-object v2, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3023
    iget-object v2, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$800(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/LocalFilmstripDataAdapter;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/filmstrip/FilmstripController;->setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V

    .line 3027
    :cond_0
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    iget-object v3, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3028
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-object v2, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$4700(Lcom/android/camera/CameraActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/CameraActivity;->access$3000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$3100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/camera/data/CameraFilmstripDataAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/data/VideoItemFactory;)V

    .line 3029
    .local v0, "secureDataAdapter":Lcom/android/camera/data/LocalFilmstripDataAdapter;
    new-instance v2, Lcom/android/camera/CameraActivity$21$2;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/CameraActivity$21$2;-><init>(Lcom/android/camera/CameraActivity$21;Lcom/android/camera/data/LocalFilmstripDataAdapter;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    .line 3040
    invoke-static {v4}, Lcom/android/camera/CameraActivity;->access$1800(Lcom/android/camera/CameraActivity;)J

    move-result-wide v4

    .line 3029
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoad(Lcom/android/camera/util/Callback;ZJ)V

    .line 3043
    .end local v0    # "secureDataAdapter":Lcom/android/camera/data/LocalFilmstripDataAdapter;
    :cond_1
    return-void
.end method
