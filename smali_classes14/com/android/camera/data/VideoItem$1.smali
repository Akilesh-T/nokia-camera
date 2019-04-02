.class Lcom/android/camera/data/VideoItem$1;
.super Ljava/lang/Object;
.source "VideoItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/VideoItem;->getView(Lcom/google/common/base/Optional;Lcom/android/camera/data/LocalFilmstripDataAdapter;ZLcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/VideoItem;

.field final synthetic val$videoClickedCallback:Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/data/VideoItem;Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/data/VideoItem;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/camera/data/VideoItem$1;->this$0:Lcom/android/camera/data/VideoItem;

    iput-object p2, p0, Lcom/android/camera/data/VideoItem$1;->val$videoClickedCallback:Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/camera/data/VideoItem$1;->val$videoClickedCallback:Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;

    iget-object v0, p0, Lcom/android/camera/data/VideoItem$1;->this$0:Lcom/android/camera/data/VideoItem;

    iget-object v0, v0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/data/VideoItem$1;->this$0:Lcom/android/camera/data/VideoItem;

    iget-object v0, v0, Lcom/android/camera/data/VideoItem;->mData:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;->playVideo(Landroid/net/Uri;Ljava/lang/String;)V

    .line 174
    return-void
.end method
