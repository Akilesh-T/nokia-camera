.class Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;
.super Landroid/os/AsyncTask;
.source "CameraFilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mForceUpdate:Z

.field final synthetic this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;)V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Z)V

    .line 597
    return-void
.end method

.method constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Z)V
    .locals 0
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .line 591
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 592
    iput-boolean p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->mForceUpdate:Z

    .line 593
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 587
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 7
    .param p1, "dataId"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v2, "updatedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, p1, v3

    .line 603
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v6}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$700(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/FilmstripItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 602
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 606
    :cond_1
    iget-object v5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v5}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$700(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/FilmstripItemList;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 607
    .local v0, "data":Lcom/android/camera/data/FilmstripItem;
    iget-object v5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v5}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$600(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/camera/data/MetadataLoader;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->mForceUpdate:Z

    if-eqz v5, :cond_0

    .line 608
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 611
    .end local v0    # "data":Lcom/android/camera/data/FilmstripItem;
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_3
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 587
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, "updatedData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$800(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$800(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$900(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 637
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$900(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;->onMetadataUpdated(Ljava/util/List;)V

    goto :goto_0
.end method
