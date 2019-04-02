.class public Lcom/android/camera/data/FixedLastProxyAdapter;
.super Lcom/android/camera/data/FilmstripDataAdapterProxy;
.source "FixedLastProxyAdapter.java"


# instance fields
.field private mLastData:Lcom/android/camera/data/FilmstripItem;

.field private mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/LocalFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrappedAdapter"    # Lcom/android/camera/data/LocalFilmstripDataAdapter;
    .param p3, "lastData"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/FilmstripDataAdapterProxy;-><init>(Landroid/content/Context;Lcom/android/camera/data/LocalFilmstripDataAdapter;)V

    .line 48
    if-nez p3, :cond_0

    .line 49
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 51
    :cond_0
    iput-object p3, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mLastData:Lcom/android/camera/data/FilmstripItem;

    .line 52
    return-void
.end method


# virtual methods
.method public findByContentUri(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 143
    .local v0, "totalNumber":I
    if-ge p1, v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 148
    :goto_0
    return-object v1

    .line 145
    :cond_0
    if-ne p1, v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mLastData:Lcom/android/camera/data/FilmstripItem;

    goto :goto_0

    .line 148
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 64
    .local v0, "totalNumber":I
    if-ge p1, v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 66
    :cond_0
    if-ne p1, v0, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mLastData:Lcom/android/camera/data/FilmstripItem;

    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 131
    .local v0, "totalNumber":I
    if-ge p1, v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemViewType(I)I

    move-result v1

    .line 136
    :goto_0
    return v1

    .line 133
    :cond_0
    if-ne p1, v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mLastData:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getItemViewType()Lcom/android/camera/data/FilmstripItemType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemType;->ordinal()I

    move-result v1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTotalNumber()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(Landroid/view/View;ILcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
    .locals 5
    .param p1, "recycled"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "videoClickedCallback"    # Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 117
    .local v0, "totalNumber":I
    if-ge p2, v0, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getView(Landroid/view/View;ILcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;

    move-result-object v1

    .line 124
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :cond_1
    if-ne p2, v0, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mLastData:Lcom/android/camera/data/FilmstripItem;

    iget v3, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mSuggestedWidth:I

    iget v4, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mSuggestedHeight:I

    invoke-interface {v2, v3, v4}, Lcom/android/camera/data/FilmstripItem;->setSuggestedSize(II)V

    .line 121
    iget-object v2, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mLastData:Lcom/android/camera/data/FilmstripItem;

    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4, p3}, Lcom/android/camera/data/FilmstripItem;->getView(Lcom/google/common/base/Optional;Lcom/android/camera/data/LocalFilmstripDataAdapter;ZLcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isMetadataUpdatedAt(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->isMetadataUpdatedAt(I)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mLastData:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->isLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->removeAt(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/camera/data/FilmstripDataAdapterProxy;->setListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 57
    iput-object p1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .line 58
    return-void
.end method

.method public updateItemAt(ILcom/android/camera/data/FilmstripItem;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 88
    .local v0, "totalNumber":I
    if-ge p1, v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-ne p1, v0, :cond_0

    .line 91
    iput-object p2, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mLastData:Lcom/android/camera/data/FilmstripItem;

    .line 92
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    new-instance v2, Lcom/android/camera/data/FixedLastProxyAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/data/FixedLastProxyAdapter$1;-><init>(Lcom/android/camera/data/FixedLastProxyAdapter;I)V

    invoke-interface {v1, v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    goto :goto_0
.end method

.method public updateMetadataAt(I)Landroid/os/AsyncTask;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->updateMetadataAt(I)Landroid/os/AsyncTask;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->mLastData:Lcom/android/camera/data/FilmstripItem;

    invoke-static {v0, v1}, Lcom/android/camera/data/MetadataLoader;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method
