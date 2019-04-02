.class Lcom/android/camera/CameraActivity$21$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$21;->onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$21;

.field final synthetic val$secureDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$21;Lcom/android/camera/data/LocalFilmstripDataAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$21;

    .prologue
    .line 3029
    iput-object p1, p0, Lcom/android/camera/CameraActivity$21$2;->this$1:Lcom/android/camera/CameraActivity$21;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$21$2;->val$secureDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3029
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraActivity$21$2;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 3032
    const/4 v2, 0x0

    .line 3033
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/camera/CameraActivity$21$2;->val$secureDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v3}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    .line 3034
    .local v1, "currentIndex":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/CameraActivity$21$2;->val$secureDataAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v3, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 3035
    .local v0, "currentFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    if-eqz v0, :cond_0

    .line 3036
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 3038
    :cond_0
    iget-object v3, p0, Lcom/android/camera/CameraActivity$21$2;->this$1:Lcom/android/camera/CameraActivity$21;

    iget-object v3, v3, Lcom/android/camera/CameraActivity$21;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v3, v2}, Lcom/android/camera/CameraActivity;->access$5600(Lcom/android/camera/CameraActivity;Landroid/net/Uri;)V

    .line 3039
    return-void

    .line 3033
    .end local v0    # "currentFilmstripItem":Lcom/android/camera/data/FilmstripItem;
    .end local v1    # "currentIndex":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method
