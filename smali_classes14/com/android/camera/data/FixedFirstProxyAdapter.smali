.class public Lcom/android/camera/data/FixedFirstProxyAdapter;
.super Lcom/android/camera/data/FilmstripDataAdapterProxy;
.source "FixedFirstProxyAdapter.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mFirstData:Lcom/android/camera/data/FilmstripItem;

.field private mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FixedFirstDataAdpt"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/FixedFirstProxyAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/LocalFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrappedAdapter"    # Lcom/android/camera/data/LocalFilmstripDataAdapter;
    .param p3, "firstData"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/FilmstripDataAdapterProxy;-><init>(Landroid/content/Context;Lcom/android/camera/data/LocalFilmstripDataAdapter;)V

    .line 55
    if-nez p3, :cond_0

    .line 56
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 58
    :cond_0
    iput-object p3, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mFirstData:Lcom/android/camera/data/FilmstripItem;

    .line 59
    return-void
.end method


# virtual methods
.method public findByContentUri(Landroid/net/Uri;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x1

    .line 78
    iget-object v2, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 79
    .local v0, "pos":I
    if-eq v0, v1, :cond_0

    .line 80
    add-int/lit8 v1, v0, 0x1

    .line 82
    :cond_0
    return v1
.end method

.method public getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mFirstData:Lcom/android/camera/data/FilmstripItem;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mFirstData:Lcom/android/camera/data/FilmstripItem;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mFirstData:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getItemViewType()Lcom/android/camera/data/FilmstripItemType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemType;->ordinal()I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getTotalNumber()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(Landroid/view/View;ILcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
    .locals 4
    .param p1, "recycled"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "videoClickedCallback"    # Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mFirstData:Lcom/android/camera/data/FilmstripItem;

    iget v1, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mSuggestedWidth:I

    iget v2, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mSuggestedHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/FilmstripItem;->setSuggestedSize(II)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mFirstData:Lcom/android/camera/data/FilmstripItem;

    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p3}, Lcom/android/camera/data/FilmstripItem;->getView(Lcom/google/common/base/Optional;Lcom/android/camera/data/LocalFilmstripDataAdapter;ZLcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->getView(Landroid/view/View;ILcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isMetadataUpdatedAt(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 204
    if-lez p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->isMetadataUpdatedAt(I)Z

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mFirstData:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->isLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V

    .line 185
    return-void
.end method

.method public onFilmstripItemLoaded()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    new-instance v1, Lcom/android/camera/data/FixedFirstProxyAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/camera/data/FixedFirstProxyAdapter$2;-><init>(Lcom/android/camera/data/FixedFirstProxyAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    goto :goto_0
.end method

.method public onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V

    .line 190
    return-void
.end method

.method public onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 2
    .param p1, "reporter"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    new-instance v1, Lcom/android/camera/data/FixedFirstProxyAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/data/FixedFirstProxyAdapter$3;-><init>(Lcom/android/camera/data/FixedFirstProxyAdapter;Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    .line 180
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 71
    if-lez p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->removeAt(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .line 141
    iget-object v1, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->setListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemLoaded()V

    .line 147
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 141
    goto :goto_0
.end method

.method public updateItemAt(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 88
    iput-object p2, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mFirstData:Lcom/android/camera/data/FilmstripItem;

    .line 89
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    new-instance v1, Lcom/android/camera/data/FixedFirstProxyAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/camera/data/FixedFirstProxyAdapter$1;-><init>(Lcom/android/camera/data/FixedFirstProxyAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public updateMetadataAt(I)Landroid/os/AsyncTask;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 194
    if-lez p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mAdapter:Lcom/android/camera/data/LocalFilmstripDataAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter;->updateMetadataAt(I)Landroid/os/AsyncTask;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/data/FixedFirstProxyAdapter;->mFirstData:Lcom/android/camera/data/FilmstripItem;

    invoke-static {v0, v1}, Lcom/android/camera/data/MetadataLoader;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    .line 199
    const/4 v0, 0x0

    goto :goto_0
.end method
