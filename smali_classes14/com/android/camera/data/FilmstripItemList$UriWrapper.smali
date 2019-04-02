.class Lcom/android/camera/data/FilmstripItemList$UriWrapper;
.super Ljava/lang/Object;
.source "FilmstripItemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/FilmstripItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriWrapper"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemList$UriWrapper;->mUri:Landroid/net/Uri;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v0, p1, Lcom/android/camera/data/FilmstripItem;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList$UriWrapper;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/android/camera/data/FilmstripItem;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
