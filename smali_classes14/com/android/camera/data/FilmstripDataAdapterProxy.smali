.class public abstract Lcom/android/camera/data/FilmstripDataAdapterProxy;
.super Ljava/lang/Object;
.source "FilmstripDataAdapterProxy.java"

# interfaces
.implements Lcom/android/camera/data/LocalFilmstripDataAdapter;


# instance fields
.field protected final mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

.field protected final mContext:Landroid/content/Context;

.field protected mSuggestedHeight:I

.field protected mSuggestedWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/camera/data/LocalFilmstripDataAdapter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrappedAdapter"    # Lcom/android/camera/data/LocalFilmstripDataAdapter;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "data adapter is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    .line 57
    return-void
.end method


# virtual methods
.method public addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v0

    return v0
.end method

.method public cancelItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "loadTokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/AsyncTask;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->cancelItems(Ljava/util/List;)V

    .line 129
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->clear()V

    .line 94
    return-void
.end method

.method public executeDeletion()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->executeDeletion()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemsInRange(II)Ljava/util/List;
    .locals 1
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemsInRange(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMetadataUpdatedAt(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->isMetadataUpdatedAt(I)Z

    move-result v0

    return v0
.end method

.method public preloadItems(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->preloadItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    .line 109
    return-void
.end method

.method public requestLoad(Lcom/android/camera/util/Callback;ZJ)V
    .locals 1
    .param p2, "isSecure"    # Z
    .param p3, "onCreateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "onDone":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoad(Lcom/android/camera/util/Callback;ZJ)V

    .line 79
    return-void
.end method

.method public requestLoadNewMidia(Lcom/android/camera/util/Callback;ZJ)V
    .locals 1
    .param p2, "isSecure"    # Z
    .param p3, "onCreateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "onDone":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->requestLoadNewMidia(Lcom/android/camera/util/Callback;ZJ)V

    .line 84
    return-void
.end method

.method public setListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->setListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 69
    return-void
.end method

.method public setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V

    .line 74
    return-void
.end method

.method public suggestViewSizeBound(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mSuggestedWidth:I

    .line 62
    iput p2, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mSuggestedHeight:I

    .line 63
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->suggestViewSizeBound(II)V

    .line 64
    return-void
.end method

.method public undoDeletion()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->undoDeletion()Z

    move-result v0

    return v0
.end method

.method public updateMetadataAt(I)Landroid/os/AsyncTask;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->updateMetadataAt(I)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
